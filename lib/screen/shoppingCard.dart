import 'package:ecommerce/widgets/shoppingCart.dart';
import 'package:flutter/material.dart';

class ShoppingCardPage extends StatefulWidget {
  const ShoppingCardPage({super.key});

  @override
  State<ShoppingCardPage> createState() => _ShoppingCardPageState();
}

class _ShoppingCardPageState extends State<ShoppingCardPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              shape: CircleBorder(),
              backgroundColor: Colors.white,
              onPressed: () {},
              child: Icon(
                Icons.shopping_basket_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shopping Cart',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              ShoppingCartWidget(),
              SizedBox(
                height: height * 0.4,
              ),
              // ShoppingCartWidget(),
              // ShoppingCartWidget(),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(238, 238, 238, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  // boxShadow: <BoxShadow>[
                  //   BoxShadow(
                  //       color: Colors.grey,
                  //       blurRadius: 15.0,
                  //       offset: Offset(0.0, 0.75))
                  // ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 5),
                  child: TextField(
                    style: const TextStyle(fontSize: 14),
                    // autovalidateMode:
                    // AutovalidateMode.onUserInteraction,

                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black),
                            onPressed: () {},
                            child: Text(
                              'Apply',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      border: InputBorder.none,
                      label: const Text(
                        'Promo code',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),

                    // validator: (value) {
                    //   if (value == '') {
                    //     check = true;
                    //
                    //     return 'Please enter the email';
                    //   }
                    //
                    //   if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value!)) {
                    //     check = true;
                    //
                    //     return 'Please enter the valid email address';
                    //   }
                    //   check = false;
                    //
                    //   return null;
                    // },
                    // onSaved: (value) {
                    //   check = false;
                    //
                    //   email = value!;
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total (3 item) :',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  Text('\$500',
                      style: TextStyle(fontSize: 14, color: Colors.black)),
                ],
              ),
              SizedBox(
                height: height * 0.02,
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
                    'Proceed to checkout',
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
