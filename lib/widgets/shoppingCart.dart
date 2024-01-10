import 'package:flutter/material.dart';

class ShoppingCartWidget extends StatefulWidget {
  const ShoppingCartWidget({super.key});

  @override
  State<ShoppingCartWidget> createState() => _ShoppingCartWidgetState();
}

class _ShoppingCartWidgetState extends State<ShoppingCartWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // Widget slideRightBackground() {
    //   return Container(
    //     color: Colors.black,
    //     child: Align(
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         children: <Widget>[
    //           SizedBox(
    //             width: 20,
    //           ),
    //           IconButton(
    //               onPressed: () {},
    //               icon: Icon(
    //                 Icons.delete,
    //                 color: Colors.white,
    //               ))
    //         ],
    //       ),
    //       alignment: Alignment.centerLeft,
    //     ),
    //   );
    // }
    Widget slideLeftBackground() {
      return Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Align(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: Colors.white,
                  )),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          alignment: Alignment.centerRight,
        ),
      );
    }

    return Dismissible(
        key: Key('k'),
        background: slideLeftBackground(),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 0.75))
            ],
          ),
          height: height * 0.15,
          width: width,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'assets/earing.png',
                    height: 80.0,
                    width: 80.0,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Roller Rabbit',
                            style:
                                TextStyle(fontSize: 14, color: Colors.black)),
                        Text(' Vado Odelle Dress',
                            style: TextStyle(fontSize: 14, color: Colors.grey)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('  \$198.00',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black)),
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
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
