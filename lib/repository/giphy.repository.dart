import 'package:get/get_connect/connect.dart';
import 'package:getx_giphy/models/giphy.model.dart';

class GiphyRepository extends GetConnect {
  Future<List<GiphyModel>> findAll() async {
    final response = await get<List<GiphyModel>>(
      'https://api.giphy.com/v1/gifs/trending',
      query: {'api_key': 'Uk6N4REnLoBPzspmJQGlEND7KXDDIux5'},
      decoder: (response) {
        return response['data']
                ?.map<GiphyModel>(
                  (d) => GiphyModel(
                    d['id'],
                    d['images']['downsized']['url'],
                  ),
                )
                ?.toList() ??
            [];
      },
    );

    if (response.hasError) {
      throw Exception(response.statusText);
    }

    return response.body;
  }
}
