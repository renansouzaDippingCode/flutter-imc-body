import 'package:imc_body/modules/core/design/widgets/elevated_button_widget.dart';
import 'package:imc_body/modules/core/design/widgets/text_field_widget.dart';

import '../../core/core_module.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Modular.get<HomeController>();

  // List<Widget> dialogText [

  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: PalleteColor.darkBlue.getColor,
        centerTitle: true,
        title: Text(
          'Calculadora IMC',
          style: DefaultFontStyle.titleBig.getText
              .copyWith(color: PalleteColor.blue.getColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: PalleteColor.blue.getColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  // Icons.local_hospital_rounded,
                  Icons.self_improvement_rounded,
                  color: PalleteColor.darkBlue.getColor,
                  size: 160,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFieldWidget(
                        onChanged: controller.setAltura,
                        label: 'Altura(m)',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFieldWidget(
                        onChanged: controller.setPeso,
                        label: 'Peso(kg)',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Center(
                  child: ValueListenableBuilder<String>(
                    valueListenable: controller.result,
                    builder: (context, value, child) {
                      return Text(value,
                          style: TextStyle(
                            color: PalleteColor.darkBlue.getColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ));
                    },
                  ),
                ),
                const SizedBox(height: 32),
                ElevatedButtonWidget(
                  onPressed: controller.calculateImc,
                  text: 'Calcular',
                ),
                /**/
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Create',
        backgroundColor: PalleteColor.darkBlue.getColor,
        child: Icon(Icons.question_mark,
            size: 32, color: PalleteColor.blue.getColor),
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('IMC - Classificação'),
            titleTextStyle: DefaultFontStyle.titleNormal.getText
                .copyWith(color: PalleteColor.darkBlue.getColor),
            backgroundColor: PalleteColor.blue.getColor,
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Menor que 18,5  |' + ' ---> ' + '| Abaixo do peso',
                      style: DefaultFontStyle.dialogSmall.getText
                          .copyWith(color: PalleteColor.darkBlue.getColor)),
                  Text('Entre 18,5 e 24,9|' + ' ---> ' + '| Peso ideal',
                      style: DefaultFontStyle.dialogSmall.getText
                          .copyWith(color: PalleteColor.darkBlue.getColor)),
                  Text('Entre 25,0 e 29,9|' + ' ---> ' + '| Sobrepeso',
                      style: DefaultFontStyle.dialogSmall.getText
                          .copyWith(color: PalleteColor.darkBlue.getColor)),
                  Text('Entre 30,0 e 34,9|' + ' ---> ' + '| Obesidade grau I',
                      style: DefaultFontStyle.dialogSmall.getText
                          .copyWith(color: PalleteColor.darkBlue.getColor)),
                  Text('Entre 35,0 e 39,9|' + ' ---> ' + '| Obesidade grau II',
                      style: DefaultFontStyle.dialogSmall.getText
                          .copyWith(color: PalleteColor.darkBlue.getColor)),
                  Text('Maior que 40,0   |' + ' ---> ' + '| Obesidade grau III',
                      style: DefaultFontStyle.dialogSmall.getText
                          .copyWith(color: PalleteColor.darkBlue.getColor)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
