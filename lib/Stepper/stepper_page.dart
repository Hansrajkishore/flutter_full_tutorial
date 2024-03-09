import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStepper extends StatefulWidget {
  const MyStepper({super.key});

  @override
  State<MyStepper> createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int current_step = 0;
  List<Step> mySteps = [
    Step(
        title: "Step1".text.make(),
        content: "Step1 Content".text.make(),
        isActive: true),
    Step(
        title: "Step2".text.make(),
        content: "Step2 Content".text.make(),
        isActive: true),
    Step(
        title: "Step3".text.make(),
        content: "Step3 Content".text.make(),
        isActive: true),
    Step(
        title: "Step4".text.make(),
        content: "Step4 Content".text.make(),
        isActive: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Stepper".text.makeCentered(),
        backgroundColor: Vx.indigo300,
      ),
      body: Container(
        child: Stepper(
          steps: mySteps,
          currentStep: this.current_step,
          type: StepperType.vertical,
          connectorColor:
              MaterialStatePropertyAll(const Color.fromARGB(255, 183, 71, 71)),
        ),
      ),
    );
  }
}
