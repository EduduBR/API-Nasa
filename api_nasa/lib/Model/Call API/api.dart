import 'dart:convert';
import 'package:api_nasa/Uteis/Global/Strings/globals_strings.dart';
import 'package:dio/dio.dart';

abstract class CallApi {
  //call to get information from the planets
  static void fetchData(streamController, id) async {
    var apiUrl = 'https://api.le-systeme-solaire.net/rest/bodies/$id';

    try {
      var dio = Dio();
      var response = await dio.get(apiUrl);

      if (response.statusCode == 200) {
        var responseData = response.data;

        var name = responseData['name'];
        var inclination = responseData['inclination'];
        var mass = responseData['mass'];
        var vol = responseData['vol'];
        var density = responseData['density'];
        var gravity = responseData['gravity'];
        var escape = responseData['escape'];
        var luas = responseData['moons'];

        if (luas != null) {
          List<String> nomesLuas = [];

          for (var lua in luas) {
            var nomeLua = lua['moon'];
            nomesLuas.add(nomeLua);
          }
          var luasString = nomesLuas
              .toString()
              .replaceAll('[', '')
              .replaceAll(']', '')
              .replaceAll('{', '')
              .replaceAll('}', '');

          GlobString.name = 'Nome: $name';
          GlobString.moon = 'Luas: $luasString';
          GlobString.inclination = 'Inclinação: $inclination';
          GlobString.mass = 'Massa: $mass';
          GlobString.vol = 'Volume: $vol';
          GlobString.density = 'Densidade: $density';
          GlobString.gravity = 'Gravidade: $gravity';
          GlobString.escape = 'Escape: $escape';
          var jsonString = json.encode(responseData);
          streamController.add(jsonString);
        } else {
          GlobString.name = 'Nome: $name';
          GlobString.moon = 'Luas: Nenhuma';
          GlobString.inclination = 'Inclinação: $inclination';
          GlobString.mass = 'Massa: $mass';
          GlobString.vol = 'Volume: $vol';
          GlobString.density = 'Densidade: $density';
          GlobString.gravity = 'Gravidade: $gravity';
          GlobString.escape = 'Escape: $escape';
          var jsonString = json.encode(responseData);
          streamController.add(jsonString);
        }
      } else {
        streamController.addError('Erro na chamada da API');
      }
    } catch (error) {
      streamController.addError('Erro ao fazer a chamada da API: $error');
    }
  }

  //call get images from Mars rover
  static Future<List<String>> rover() async {
    const String baseUrl = 'https://api.nasa.gov/mars-photos/api/v1/rovers/';
    const String apiKey = 'nZxSB64O9wf6seWw3Nw1hIu0bCQgHT7wATA4ienH';

    Dio dio = Dio();

    Future<List<dynamic>> getPhotosBySol(String roverName, int sol,
        {required String camera}) async {
      try {
        final response = await dio.get(
          '$baseUrl$roverName/photos',
          queryParameters: {
            'sol': sol,
            'camera': camera,
            'api_key': apiKey,
          },
        );

        if (response.statusCode == 200) {
          return response.data['photos'];
        } else {
          throw Exception('Failed to load photos');
        }
      } catch (e) {
        throw Exception('Error: $e');
      }
    }

    List<String> allImageUrls = [];
    List<String> cameras = ["CHEMCAM", "FHAZ", "MARDI", "RHAZ"];

    try {
      for (var camera in cameras) {
        List<dynamic> photos =
            await getPhotosBySol('curiosity', 1000, camera: camera);

        for (var photo in photos) {
          String imageUrl = photo['img_src'];

          allImageUrls.add(imageUrl);
        }
      }
    } catch (e) {
      print('Erro: $e');
    }
    return allImageUrls;
  }
}
