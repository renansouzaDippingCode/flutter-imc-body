import '../../core/core_module.dart';

class SplashController {
  load() {
    Future.delayed(const Duration(seconds: 2)).then((value) async {
      Modular.to.navigate('/home');
    });
  }
}
