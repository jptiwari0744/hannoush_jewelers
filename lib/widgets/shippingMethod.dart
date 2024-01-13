import 'package:flutter/material.dart';

class ShippingMethodWidget extends StatefulWidget {
  const ShippingMethodWidget(
      {required this.customCall1, required this.customCall2});
  final VoidCallback? customCall1;
  final VoidCallback? customCall2;

  @override
  State<ShippingMethodWidget> createState() => _ShippingMethodWidgetState();
}

class _ShippingMethodWidgetState extends State<ShippingMethodWidget> {
  int selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      // height: 100,
      // width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RadioListTile(
            value: 1,
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
            // title: Text('\$0.00'),
            secondary:
                // height: 100,
                // width: 100,
                Container(
              width: width * 0.6,
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('\$0.00'),
                  Text('Free'),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Free Shipping'),
                      Text('on purchases'),
                      Text('\$150.00'),
                    ],
                  ),
                ],
              ),
            ),

            // secondary: Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Text('Free'),
            //     Column(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Text('Free Shipping'),
            //         Text('on purchases'),
            //         Text('\$150.00'),
            //       ],
            //     ),
            //   ],
            // ),
          ),
          Divider(
            height: 1,
          ),
          RadioListTile(
            value: 2,
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
            // title: Text('\$0.00'),
            secondary:
                // height: 100,
                // width: 100,
                Container(
              width: width * 0.6,
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('\$0.00'),
                  Text('Fixed'),
                  Text('Flat Rate'),
                ],
              ),
            ),

            // secondary: Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Text('Free'),
            //     Column(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Text('Free Shipping'),
            //         Text('on purchases'),
            //         Text('\$150.00'),
            //       ],
            //     ),
            //   ],
            // ),
          ),
          Divider(
            height: 1,
          ),
          RadioListTile(
            value: 3,
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
            // title: Text('\$0.00'),
            secondary:
                // height: 100,
                // width: 100,
                Container(
              width: width * 0.6,
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('\$0.00'),
                  Text('Fixed'),
                  Text('Flat Rate'),
                ],
              ),
            ),

            // secondary: Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Text('Free'),
            //     Column(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Text('Free Shipping'),
            //         Text('on purchases'),
            //         Text('\$150.00'),
            //       ],
            //     ),
            //   ],
            // ),
          ),
          Divider(
            height: 1,
          ),
          SizedBox(
            height: height * 0.1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                width: width * 0.25,
                decoration: BoxDecoration(
                  // color: Colors.deepOrange.shade100,
                  color: Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    widget.customCall1!();
                  },
                  child:
                      // isLoader
                      //     ? const Center(
                      //     child: CircularProgressIndicator(
                      //         color: Colors.white))
                      //     :
                      const Text(
                    'Previous',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: width * 0.25,
                decoration: BoxDecoration(
                  // color: Colors.deepOrange.shade100,
                  color: Color.fromRGBO(237, 187, 171, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    widget.customCall2!();
                  },
                  child:
                      // isLoader
                      //     ? const Center(
                      //     child: CircularProgressIndicator(
                      //         color: Colors.white))
                      //     :
                      const Text(
                    'Next',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
