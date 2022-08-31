import '../../core_module.dart';

class TextFieldWidget extends StatelessWidget {
  final Function(String)? onChanged;
  final String? label;
  final TextInputType? keyboardType;

  const TextFieldWidget({
    this.onChanged,
    this.label,
    this.keyboardType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: DefaultFontStyle.fields.getText
          .copyWith(color: PalleteColor.darkBlue.getColor),
      onChanged: onChanged,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: PalleteColor.darkBlue.getColor, width: 2),
        ),
        border: const OutlineInputBorder(borderSide: BorderSide(width: 2)),
        labelText: label,
        labelStyle: DefaultFontStyle.fields.getText
            .copyWith(color: PalleteColor.darkBlue.getColor),
      ),
    );
  }
}
