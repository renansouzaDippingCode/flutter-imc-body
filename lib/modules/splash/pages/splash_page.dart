import '../../core/core_module.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final controller = Modular.get<SplashController>();

  @override
  void initState() {
    super.initState();
    controller.load();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PalleteColor.white.getColor,
      child: const Center(
        child:  Image(
          image: AssetImage('assets/splash.png'),
          width: 128,
          height: 154,
        ),
      ),
    );
  }
}
