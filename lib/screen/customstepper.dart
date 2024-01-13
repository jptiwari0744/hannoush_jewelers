import 'package:ecommerce/screen/numberstepper.dart';
import 'package:ecommerce/widgets/paymentMethod.dart';
import 'package:ecommerce/widgets/shippingAddress.dart';
import 'package:ecommerce/widgets/shippingMethod.dart';
import 'package:flutter/material.dart';

class CustomStepper extends StatefulWidget {
  const CustomStepper({super.key});

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: FloatingActionButton.small(
            shape: CircleBorder(),
            backgroundColor: Colors.black,
            onPressed: () {},
            child: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
            ),
          ),
        ),
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
            child: currentStep == 1
                ? Expanded(child: PaymentMethod(customCall: () {
                    next();
                  }))
                : const Text(''),
          ),
          Container(
            child: currentStep == 2
                ? Expanded(
                    child: ShippingMethodWidget(customCall1: () {
                    back();
                  }, customCall2: () {
                    next();
                  }))
                : const Text(''),
          ),
          Container(
            child: currentStep == 3
                ? Expanded(child: ShippingAddress())
                : const Text(''),
          ),

          // currentStep == 1
          //     ? Text('')
          //     : ElevatedButton(
          //         onPressed: currentStep == 1
          //             ? null
          //             : () {
          //                 back();
          //               },
          //         child: Text('Back'),
          //       ),
          // ElevatedButton(
          //   onPressed: () {
          //     next();
          //   },
          //   child: Text(
          //     currentStep == stepLength ? 'Finish' : 'Next',
          //     style: TextStyle(color: Colors.white),
          //   ),
          // ),
        ],
      ),
    );
  }
}
