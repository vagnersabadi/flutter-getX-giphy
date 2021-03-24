import 'package:get/get.dart';
import 'package:getx_giphy/models/giphy.model.dart';
import 'package:getx_giphy/repository/giphy.repository.dart';

class HomeController extends GetxController with StateMixin<List<GiphyModel>> {
  final GiphyRepository _repository;

  HomeController(this._repository);

  @override
  void onInit() {
    super.onInit();
    _repository.findAll().then((resp) {
      change(resp, status: RxStatus.success());
    }, onError: (err) {
      print(err);
      change(
        null,
        status: RxStatus.error('Erro ao Buscar Gifs'),
      );
    });
  }
}
