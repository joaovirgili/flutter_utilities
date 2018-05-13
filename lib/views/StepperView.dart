import 'package:flutter/material.dart';

class StepperView extends StatefulWidget {
  @override
  _StepperViewState createState() => new _StepperViewState();
}

class _StepperViewState extends State<StepperView> {

  int currentStep = 0;

  List<Step> steps = [
    new Step(
      title: new Text("My first Step"),
      content: new Text("This is the first step. Pay attention to the description. Good Luck."),
      subtitle: new Text("Setp 1 subtitle"),
      isActive: true
    ),
    new Step(
      title: new Text("My second Step"),
      content: new Text("Content"),
      subtitle: new Text("Setp 2 subtitle"),
      isActive: true
    ),
    new Step(
      title: new Text("My third Step"),
      content: new Text("Content"),
      subtitle: new Text("Setp 3 subtitle"),
      isActive: true
    )
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stepper(
          steps: steps,
          currentStep: currentStep,
          onStepTapped: (step) {
            setState(() {
              currentStep = step;
            });
          },
          onStepContinue: () {
            setState(() {
              if (currentStep < steps.length-1) currentStep++;
            });
          },
          onStepCancel: () {
            setState(() {
              if (currentStep > 0) currentStep--;
            });
          },
        ),
    );
  }
}