import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.asset(
          width: width,
          // height: height * 0.5,
          'assets/earing.png',
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/shoppingCart');
                  },
                  child: Icon(
                    Icons.shopping_basket_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
            elevation: 0.0,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: width,
                  height: height * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '14k White Gold Pear Shape Blue Topaz And Diamond Earrings',
                            style: TextStyle(fontSize: 18),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('\$49/mo with 24-month financing.',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.grey)),
                              Text('Available in stock',
                                  style: TextStyle(fontSize: 11))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text('320 Review',
                                            style: TextStyle(
                                              fontSize: 11,
                                            )),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Text(
                                    'SKU DECM1034',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color:
                                            Color.fromRGBO(237, 187, 171, 1)),
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Text('Quantity',
                                      style: TextStyle(
                                        fontSize: 13,
                                      )),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Container(
                                    width: width * 0.2,
                                    height: height * 0.05,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(238, 238, 238, 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(
                                          Icons.remove,
                                          size: 14,
                                        ),
                                        Text('1',
                                            style: TextStyle(
                                              fontSize: 14,
                                            )),
                                        Icon(
                                          Icons.add,
                                          size: 14,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.grey.shade200,
                                        blurRadius: 15.0,
                                        offset: Offset(0.0, 0.75))
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            // border: Border.all(
                                            //   width: 5,
                                            //   color: colors.contains(result['result']['colors'][0]
                                            //               ['AttributeOptions'][index]['optionValue']
                                            //           .substring(1, 7))
                                            //       ? Colors.yellow.shade800
                                            //       : Colors.white,
                                            // ),
                                            color: Colors.yellow.shade400,
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            // border: Border.all(
                                            //   width: 5,
                                            //   color: colors.contains(result['result']['colors'][0]
                                            //               ['AttributeOptions'][index]['optionValue']
                                            //           .substring(1, 7))
                                            //       ? Colors.yellow.shade800
                                            //       : Colors.white,
                                            // ),
                                            color: Colors.yellow.shade400,
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            // border: Border.all(
                                            //   width: 5,
                                            //   color: colors.contains(result['result']['colors'][0]
                                            //               ['AttributeOptions'][index]['optionValue']
                                            //           .substring(1, 7))
                                            //       ? Colors.yellow.shade800
                                            //       : Colors.white,
                                            // ),
                                            color: Colors.yellow.shade400,
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Text('Description',
                              style: TextStyle(
                                fontSize: 16,
                              )),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Text(
                              'Round Aquamarine and Diamond Halo Necklace 14K White Gold 1.70ct Round Aquamarine Birthstone 0.14ctw Round Diamonds',
                              style:
                                  TextStyle(fontSize: 11, color: Colors.grey)),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text('Total Price',
                                      style: TextStyle(
                                          fontSize: 9, color: Colors.grey)),
                                  Text('\$597.00',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ))
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                width: width * 0.35,
                                decoration: BoxDecoration(
                                  // color: Colors.deepOrange.shade100,
                                  color: Color.fromRGBO(237, 187, 171, 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                child: TextButton.icon(
                                  icon: Icon(
                                    Icons.shopping_basket_outlined,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                  label:
                                      // isLoader
                                      //     ? const Center(
                                      //     child: CircularProgressIndicator(
                                      //         color: Colors.white))
                                      //     :
                                      const Text(
                                    'Add to cart',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
