import 'package:flutter/material.dart';

import '../widgets/shoppingCart.dart';

class OrderSummaryPage extends StatefulWidget {
  const OrderSummaryPage({super.key});

  @override
  State<OrderSummaryPage> createState() => _OrderSummaryPageState();
}

class _OrderSummaryPageState extends State<OrderSummaryPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton.small(
            shape: CircleBorder(),
            backgroundColor: Colors.black,
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Order Summary',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              ShoppingCartWidget(),
              SizedBox(
                height: height * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Cart Subtotal',
                      style: TextStyle(fontSize: 14, color: Colors.black)),
                  Text(
                    '\$595.00',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Shipping',
                          style: TextStyle(fontSize: 14, color: Colors.black)),
                      Text(
                        'Flat Rate-Fixed',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  Text(
                    '\$595.00',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
              Divider(),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Order Total',
                      style: TextStyle(fontSize: 14, color: Colors.black)),
                  Text(
                    '\$595.00',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Text(
                'Apply Discount Code',
                style: TextStyle(fontSize: 14),
              ),

              // ShoppingCartWidget(),
              // ShoppingCartWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                    child: Container(
                      width: width * 0.6,
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
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            label: Text(
                              'Type Your Discount Code...',
                              style: TextStyle(color: Colors.grey),
                            )),
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
                      onPressed: () {},
                      child: Text(
                        'Apply',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),

              Container(
                margin: EdgeInsets.only(top: 10),
                width: width,
                decoration: BoxDecoration(
                  // color: Colors.deepOrange.shade100,
                  color: Color.fromRGBO(237, 187, 171, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: TextButton.icon(
                  onPressed: () {},
                  label: Align(
                    alignment: Alignment.centerRight,
                    child: FloatingActionButton.small(
                      shape: CircleBorder(),
                      backgroundColor: Colors.white,
                      onPressed: () {},
                      child: Icon(
                        Icons.arrow_forward,
                        color: Color.fromRGBO(237, 187, 171, 1),
                      ),
                    ),
                  ),
                  icon: Text(
                    'Place Order',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
