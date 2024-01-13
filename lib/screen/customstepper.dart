import 'package:ecommerce/screen/numberstepper.dart';
import 'package:ecommerce/widgets/paymentMethod.dart';
import 'package:flutter/material.dart';

class CustomStepper extends StatefulWidget {
  final String title;

  const CustomStepper({super.key, required this.title});

  @override
  _CustomStepperState createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  int currentStep = 1;
  int stepLength = 3;
  late bool complete;

  next() {
    if (currentStep <= stepLength) {
      goTo(currentStep + 1);
    }
  }

  back() {
    if (currentStep > 1) {
      goTo(currentStep - 1);
    }
  }

  goTo(int step) {
    setState(() => currentStep = step);
    if (currentStep > stepLength) {
      setState(() => complete = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          NumberStepper(
            totalSteps: stepLength,
            width: MediaQuery.of(context).size.width,
            curStep: currentStep,
            stepCompleteColor: Color.fromARGB(255, 0, 0, 0),
            currentStepColor: Color.fromRGBO(239, 154, 154, 1),
            inactiveColor: Color.fromARGB(255, 0, 0, 0),
            lineWidth: 2,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            child: currentStep <= stepLength
                ? Expanded(child: PaymentMethod())
                : const Text(
                    "Completed!",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                    ),
                  ),
          ),
          currentStep == 1
              ? Text('')
              : ElevatedButton(
                  onPressed: currentStep == 1
                      ? null
                      : () {
                          back();
                        },
                  child: Text('Back'),
                ),
          ElevatedButton(
            onPressed: () {
              next();
            },
            child: Text(
              currentStep == stepLength ? 'Finish' : 'Next',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
