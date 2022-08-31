import '../../core_module.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final String? text;

  const ElevatedButtonWidget({
    this.onPressed,
    this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text!,
        style: TextStyle(
          color: PalleteColor.blue.getColor,
          fontWeight: FontWeight.w500,
          fontSize: 24,
        ),
      ),
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(PalleteColor.darkBlue.getColor),
        fixedSize: MaterialStateProperty.all(const Size.fromHeight(50)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(32))),
      ),
    );
  }
}
