import 'package:flutter/cupertino.dart';
import 'package:flutter_get_x_calculator/controllers/calculator_controller.dart';
import 'package:flutter_get_x_calculator/widgets/line_separator.dart';
import 'package:flutter_get_x_calculator/widgets/main_result.dart';
import 'package:flutter_get_x_calculator/widgets/sub_result.dart';
import 'package:get/get.dart';

class MathResults extends StatelessWidget {
  MathResults({Key? key}) : super(key: key);

  final calculatorCtrl = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          SubResult(text: '${calculatorCtrl.firstNumber}'),
          SubResult(text: '${calculatorCtrl.operation}'),
          SubResult(text: '${calculatorCtrl.secondNumber}'),
          const LineSeparator(),
          MainResultText(text: '${calculatorCtrl.mathResult}'),
        ],
      ),
    );
  }
}
