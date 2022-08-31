import '../../core/core_module.dart';

abstract class ImcViewModel extends ChangeNotifier {
  void calculateImc();
}

class HomeController extends ImcViewModel {
  double _altura = 0.0;
  double _peso = 0.0;

  onNavigate(String route) {
    Modular.to.pushNamed(route);
  }

  void setAltura(String value) => _altura = double.tryParse(value) ?? 0;
  void setPeso(String value) => _peso = double.tryParse(value) ?? 0;

  final result = ValueNotifier<String>('');

  @override
  void calculateImc() {
    final imcValue = PersonModel(altura: _altura, peso: _peso).getImc();
    final imcText = imcValue.toStringAsFixed(2);
    if (imcValue >= 1 && imcValue < 18.5) {
      result.value = '($imcText) - Você está abaixo do peso!';
    } else if (imcValue >= 18.5 && imcValue <= 24.9) {
      result.value = '($imcText) - Você está no peso ideal!';
    } else if (imcValue >= 25 && imcValue <= 29.9) {
      result.value = '($imcText) - Você está levemente acima do peso!';
    } else if (imcValue >= 30 && imcValue <= 34.9) {
      result.value = '($imcText) - Você está com obesidade grau I!';
    } else if (imcValue >= 35 && imcValue <= 39.9) {
      result.value =
          '($imcText) - Você está com obesidade grau II(severa)!';
    } else if (imcValue >= 40) {
      result.value =
          '($imcText) - Você está com obesidade grau III(mórbida)!';
    } else {
      result.value = 'Digite os dados';
    }
  }
}
