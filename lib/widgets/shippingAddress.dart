import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class ShippingAddress extends StatefulWidget {
  ShippingAddress();

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 12),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 0.75))
                  ],
                  color: Colors.white),
              // margin: const EdgeInsets.only(top: 50),
              // color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 5),
                child: ListTile(
                  leading: Image.asset('assets/paypal-icon.png'),
                  title: Text('Paypal'),
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 12),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 0.75))
                  ],
                  color: Colors.white),
              // margin: const EdgeInsets.only(top: 50),
              // color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 5),
                child: ListTile(
                  leading: Image.asset('assets/Credit-card-icon .png'),
                  title: Text('Credit Card'),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0, bottom: 12),
          child: Container(
            width: width,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 0.75))
                ],
                color: Colors.white),
            // margin: const EdgeInsets.only(top: 50),
            // color: Colors.white,
            child: DottedBorder(
              borderType: BorderType.RRect,

              radius: Radius.circular(20),
              // dashPattern: [10, 10],
              color: Colors.black,
              strokeWidth: 1,
              child: Center(
                child: TextButton.icon(
                    onPressed: () {},
                    icon: FloatingActionButton.small(
                      shape: StadiumBorder(
                          side: BorderSide(
                              color: Color.fromRGBO(237, 187, 171, 1),
                              width: 2)),
                      backgroundColor: Colors.white,

                      // foregroundColor: Color.fromRGBO(237, 187, 171, 1),
                      onPressed: () {},
                      child: Icon(
                        Icons.add,
                        color: Color.fromRGBO(237, 187, 171, 1),
                      ),
                    ),
                    label: Text(
                      'Add Card',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ),
          ),
        ),
        SizedBox(
          height: height * 0.1,
        ),
        Container(
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(237, 187, 171, 1),
          ),
          child: TextButton.icon(
              onPressed: () {},
              icon: Text('Order Submit', style: TextStyle(color: Colors.white)),
              label: Align(
                alignment: Alignment.centerRight,
                child: FloatingActionButton.small(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(),
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_forward,
                    color: Color.fromRGBO(237, 187, 171, 1),
                  ),
                ),
              )),
        )
      ],
    );
  }
}
