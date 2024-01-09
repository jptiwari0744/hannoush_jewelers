import 'package:ecommerce/widgets/categoryCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/card.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
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
        actions: [
          FloatingActionButton(
            shape: CircleBorder(),
            backgroundColor: Colors.white,
            onPressed: () {},
            child: Icon(
              Icons.shopping_basket_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 0.75))
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: TextField(
                  style: const TextStyle(fontSize: 14),
                  // autovalidateMode:
                  // AutovalidateMode.onUserInteraction,

                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    label: const Text(
                      'Search Category',
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
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                shrinkWrap: true,
                // controller: _controller,
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    // childAspectRatio: 0.6,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 1.8),
                    crossAxisCount: 2,
                    crossAxisSpacing: 2.0,
                    mainAxisSpacing: 2.0),
                itemBuilder: (BuildContext context, int index) {
                  return const CategoryCardWidget();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
