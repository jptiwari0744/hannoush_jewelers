import 'package:flutter/material.dart';

class NumberStepper extends StatelessWidget {
  final double width;
  final totalSteps;
  final int curStep;
  final Color stepCompleteColor;
  final Color currentStepColor;
  final Color inactiveColor;
  final double lineWidth;

  const NumberStepper(
      {super.key,
      required this.width,
      this.totalSteps,
      required this.curStep,
      required this.stepCompleteColor,
      required this.currentStepColor,
      required this.inactiveColor,
      required this.lineWidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 20.0,
            left: 40.0,
            right: 40.0,
          ),
          width: this.width,
          child: Row(
            children: _steps(),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 10.0,
            left: 24.0,
            right: 24.0,
          ),
          width: this.width,
          child: Row(
            children: _stepsLabel(),
          ),
        ),
      ],
    );
  }

  getCircleColor(i) {
    var color;
    if (i + 1 < curStep) {
      color = stepCompleteColor;
    } else if (i + 1 == curStep)
      color = currentStepColor;
    else
      color = Color.fromARGB(255, 0, 0, 0);
    return color;
  }

  getBorderColor(i) {
    var color;
    if (i + 1 < curStep) {
      color = stepCompleteColor;
    } else if (i + 1 == curStep)
      color = currentStepColor;
    else
      color = inactiveColor;

    return color;
  }

  getLineColor(i) {
    var color = curStep == i + 1 || (curStep == 3 && i == 1)
        ? Colors.red[200]
        : Color.fromARGB(255, 0, 0, 0);
    return color;
  }

  List<Widget> _steps() {
    var list = <Widget>[];
    for (int i = 0; i < totalSteps; i++) {
      //colors according to state

      var circleColor = getCircleColor(i);
      var borderColor = getBorderColor(i);
      var lineColor = getLineColor(i);

      // step circles
      list.add(
        Column(
          children: [
            Container(
              width: 28.0,
              height: 28.0,
              child: getInnerElementOfStepper(i),
              decoration: new BoxDecoration(
                color: circleColor,
                borderRadius: new BorderRadius.all(new Radius.circular(25.0)),
                border: new Border.all(
                  color: borderColor,
                  width: 1.0,
                ),
              ),
            ),
          ],
        ),
      );

      //line between step circles
      if (i != totalSteps - 1) {
        list.add(
          Expanded(
            child: Container(
              height: lineWidth,
              color: lineColor,
            ),
          ),
        );
      }
    }

    return list;
  }

  List<Widget> _stepsLabel() {
    var list = <Widget>[];
    var listLabels = ['Shipping Address', 'Shipping Method', 'Payment Method'];

    for (int i = 0; i < totalSteps; i++) {
      // colors according to state
      var circleColor = getCircleColor(i);

      // step circles
      list.add(
        Column(
          children: [
            Container(
              width: 60.0,
              child: Text(
                listLabels[
                    i], // Use listLabels[i] instead of casting listlabel[i] as String
                style: TextStyle(fontSize: 12, color: circleColor),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );

      // line between step circles
      if (i != totalSteps - 1) {
        list.add(
          Expanded(
            child: Container(
              height: lineWidth, // Set the background color of the container
            ),
          ),
        );
      }
    }

    return list;
  }

  Widget getInnerElementOfStepper(index) {
    if (index + 1 < curStep) {
      return Center(
        child: Text(
          (index + 1).toString(),
          style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
        ),
      );
    } else if (index + 1 == curStep) {
      return Center(
        child: Text(
          '$curStep',
          style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
        ),
      );
    } else
      return Center(
        child: Text(
          (index + 1).toString(),
          style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
        ),
      );
  }
}
