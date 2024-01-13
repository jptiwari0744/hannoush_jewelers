import 'package:ecommerce/widgets/creditCard.dart';
import 'package:ecommerce/widgets/paymentMethod.dart';
import 'package:ecommerce/widgets/shippingAddress.dart';
import 'package:ecommerce/widgets/shippingMethod.dart';
import 'package:flutter/material.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  _CheckOutPageState createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  int activeStep = 0;
  var _currentStep = 0;
  // onStepContinue() {
  //   _currentStep < 2 ? () => setState(() => _currentStep += 1) : null;
  // }
  //
  // onStepCancel() {
  //   _currentStep > 0 ? () => setState(() => _currentStep -= 1) : null;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
        body: Theme(
          data: ThemeData(
            hintColor: Colors.orange,
            primaryColor: Colors.red[200],
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: Colors.red[200],
                  onSecondary: Colors.black,
                  tertiary: Colors.black,
                  // background: Colors.red,
                  secondary: Colors.black,
                ),
          ),
          child: Center(
            child: Stepper(
                currentStep: _currentStep,
                onStepTapped: (step) => setState(() => _currentStep = step),
                onStepContinue: _currentStep < 2
                    ? () => setState(() => _currentStep += 1)
                    : null,
                onStepCancel: _currentStep > 0
                    ? () => setState(() => _currentStep -= 1)
                    : null,
                // controlsBuilder:
                //     (BuildContext context, ControlsDetails controls) {
                //   return Row(
                //     children: <Widget>[
                //       TextButton(
                //         onPressed: onStepContinue,
                //         child: const Text('NEXT'),
                //       ),
                //       TextButton(
                //         onPressed: onStepCancel,
                //         child: const Text('EXIT'),
                //       ),
                //     ],
                //   );
                // },
                type: StepperType.horizontal,
                // currentStep: _currentStep,
                connectorThickness: 3,
                steps: [
                  Step(
                    // isActive: true,
                    title: Text(''),
                    // subtitle: Text('checkout'),
                    label: Text('Shipping '),
                    // state: _currentStep == 0
                    //     ? StepState.editing
                    //     : StepState.complete,
                    isActive: _currentStep == 0,
                    content: PaymentMethod(),
                  ),
                  Step(
                      title: Text(''),
                      // subtitle: Text('checkout'),
                      label: Text('Shipping '),
                      // state: _currentStep == 1
                      //     ? StepState.editing
                      //     : StepState.complete,
                      isActive: _currentStep == 1,
                      content: ShippingMethodWidget()),
                  Step(
                      title: Text(''),
                      // subtitle: Text('checkout'),
                      label: Text('Payment '),
                      // state: _currentStep == 2
                      //     ? StepState.editing
                      //     : StepState.complete,
                      isActive: _currentStep == 2,
                      content: ShippingAddress())
                ]),
          ),
        ));
  }
}
