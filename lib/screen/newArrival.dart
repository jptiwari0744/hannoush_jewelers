import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/card.dart';

var list = ['One', 'Two', 'Three', 'Four'];

class NewArrivalPage extends StatefulWidget {
  const NewArrivalPage({super.key});

  @override
  State<NewArrivalPage> createState() => _NewArrivalPageState();
}

class _NewArrivalPageState extends State<NewArrivalPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String dropdownValue = list.first;
  int price = 100;
  double start = 0.0;
  double end = 1000.0;
  void _openEndDrawer() {
    // Scaffold.of(context).openEndDrawer();
    print('drawer');
    //This might have been updated by flutter team since the last edit

    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final Widget? endDrawer;

    return Scaffold(
      key: _scaffoldKey,

      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
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
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'New Arrivals',
                style: TextStyle(fontSize: 18),
              ),
              Stack(
                children: [
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
                              (MediaQuery.of(context).size.height / 1.4),
                          crossAxisCount: 2,
                          crossAxisSpacing: 2.0,
                          mainAxisSpacing: 2.0),
                      itemBuilder: (BuildContext context, int index) {
                        return CardWidget(
                            // name: apiData[index]['ProductFlat']
                            //             ['name'] ==
                            //         ''
                            //     ? 'shirts'
                            //     : apiData[index]['ProductFlat']['name'],
                            // price: apiData[index]['ProductFlat']
                            //     ['price'],
                            // img: apiData[index]['ProductImages']
                            //             .length ==
                            //         0
                            //     ? null
                            //     : apiData[index]['ProductImages'][0]
                            //         ['path'],
                            // value: '50%',
                            // color: Colors.yellow.shade800,
                            // id: apiData[index]['id']),
                            );
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        onPressed: _openEndDrawer,
                        backgroundColor: Colors.black,
                        shape: CircleBorder(),
                        child: Icon(
                          Icons.filter_alt_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        shape: BeveledRectangleBorder(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Filters',
                      style: TextStyle(fontSize: 18),
                    ),
                    IconButton(
                        onPressed: _closeEndDrawer,
                        icon: Icon(
                          Icons.close,
                          color: Colors.black,
                        ))
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Text('Material Colors'),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 10.0),
                      child: Container(
                        height: 30,
                        width: 30,
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
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            // border: Border.all(
                            //   width: 5,
                            //   color: colors.contains(result['result']['colors'][0]
                            //               ['AttributeOptions'][index]['optionValue']
                            //           .substring(1, 7))
                            //       ? Colors.yellow.shade800
                            //       : Colors.white,
                            // ),
                            color: Colors.red.shade200,
                            shape: BoxShape.circle),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            // border: Border.all(
                            //   width: 5,
                            //   color: colors.contains(result['result']['colors'][0]
                            //               ['AttributeOptions'][index]['optionValue']
                            //           .substring(1, 7))
                            //       ? Colors.yellow.shade800
                            //       : Colors.white,
                            // ),
                            color: Colors.grey,
                            shape: BoxShape.circle),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text('Gender'),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Male',
                        style: TextStyle(color: Colors.grey),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: const BorderSide(color: Colors.grey)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Female',
                          style: TextStyle(color: Colors.grey),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              side: const BorderSide(color: Colors.grey)),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text('Metal'),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    width: width,
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
                    child: Center(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_drop_down_outlined),
                          elevation: 16,
                          style: const TextStyle(color: Colors.black),
                          // underline: Container(
                          //   height: 2,
                          //   color: Colors.white,
                          // ),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                          items: list
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                // Container(
                //   margin: const EdgeInsets.only(top: 50),
                //   color: Colors.white,
                //   child: Padding(
                //     padding:
                //     const EdgeInsets.only(left: 15, top: 5),
                //     child: id != 'add'
                //         ? TextFormField(
                //       initialValue: apiData?['result']
                //       ['addressData'][0]['country'],
                //       style: const TextStyle(fontSize: 14),
                //       autovalidateMode:
                //       AutovalidateMode.onUserInteraction,
                //       decoration: InputDecoration(
                //           border: InputBorder.none,
                //           label: const Text(
                //             'country',
                //             style: TextStyle(
                //                 fontSize: 14,
                //                 color: Colors.grey),
                //           )),
                //       validator: (value) {
                //         if (value == '') {
                //           return 'Please enter the country code';
                //         }
                //
                //         return null;
                //       },
                //       onSaved: (value) {
                //         country = value!;
                //       },
                //     )
                //         : DropdownButtonFormField(
                //       decoration: const InputDecoration(
                //           enabledBorder: UnderlineInputBorder(
                //               borderSide: BorderSide(
                //                   color: Colors.white)),
                //           label: Text(
                //             'country',
                //             style: TextStyle(
                //                 fontSize: 14,
                //                 color: Colors.grey),
                //           )),
                //       value: selectedValue,
                //       onChanged: (newValue) {
                //         setState(() {
                //           selectedValue = newValue;
                //           api();
                //           print(selectedValue);
                //         });
                //       },
                //       items: dataList.map((value) {
                //         return DropdownMenuItem(
                //           value: value['id'].toString(),
                //           child: Text(
                //               '${value['code']} ${value['name']}'
                //                   .toString()),
                //         );
                //       }).toList(),
                //     ),
                //   ),
                // ),
                // Container(
                //   height:
                //   MediaQuery.of(context).size.height * 0.07,
                //   width: MediaQuery.of(context).size.width,
                //   child: ListView.builder(
                //       scrollDirection: Axis.horizontal,
                //       itemCount: result['result']['colors'][0]
                //       ['AttributeOptions']
                //           .length,
                //       itemBuilder: (context, index) {
                //         return InkWell(
                //           onTap: () {
                //             if (colors.contains(result['result']
                //             ['colors'][0]
                //             ['AttributeOptions']
                //             [index]['optionValue']
                //                 .substring(1, 7))) {
                //               colors.remove(result['result']
                //               ['colors'][0]
                //               ['AttributeOptions']
                //               [index]['optionValue']
                //                   .substring(1, 7));
                //             } else {
                //               colors.add(result['result']
                //               ['colors'][0]
                //               ['AttributeOptions']
                //               [index]['optionValue']
                //                   .substring(1, 7));
                //             }
                //             setState(() {});
                //           },
                //           child: Container(
                //             color: Colors.grey.shade200,
                //             child: Padding(
                //               padding: const EdgeInsets.only(
                //                   left: 8.0),
                //               child:
                //               Container(
                //                 height: 40,
                //                 width: 40,
                //                 decoration: BoxDecoration(
                //                     border: Border.all(
                //                       width: 5,
                //                       color: colors.contains(result[
                //                       'result']
                //                       [
                //                       'colors'][0]
                //                       [
                //                       'AttributeOptions']
                //                       [
                //                       index]['optionValue']
                //                           .substring(1, 7))
                //                           ? Colors.yellow.shade800
                //                           : Colors.white,
                //                     ),
                //                     color: Color(int.parse(
                //                         result['result']['colors']
                //                         [
                //                         0]
                //                         [
                //                         'AttributeOptions']
                //                         [index][
                //                         'optionValue']
                //                             .substring(1, 7),
                //                         radix: 16) +
                //                         0xFF000000),
                //                     shape: BoxShape.circle),
                //               ),
                //             ),
                //           ),
                //         );
                //       }),
                // ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text('Price'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                        child: Text('\$${start.toStringAsFixed(0)}')),
                    Padding(
                        padding: const EdgeInsets.only(right: 8.0, top: 12.0),
                        child: Text('\$${end.toStringAsFixed(0)}')),
                  ],
                ),
                RangeSlider(
                  activeColor: const Color.fromRGBO(237, 187, 171, 1),
                  inactiveColor: const Color.fromRGBO(155, 155, 155, 1),
                  values: RangeValues(start, end),
                  labels: RangeLabels(start.toString(), end.toString()),
                  onChanged: (value) {
                    setState(() {
                      start = value.start;
                      end = value.end;
                    });
                  },
                  min: 0.0,
                  max: 1000.0,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text('Category'),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
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
                    width: width,
                    child: Center(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_drop_down_outlined),
                          elevation: 16,
                          style: const TextStyle(color: Colors.black),
                          // underline: Container(
                          //   height: 2,
                          //   color: Colors.white,
                          // ),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                          items: list
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
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
                      Radius.circular(10),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child:
                        // isLoader
                        //     ? const Center(
                        //     child: CircularProgressIndicator(
                        //         color: Colors.white))
                        //     :
                        const Text(
                      'FILTER',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // Disable opening the end drawer with a swipe gesture.
      endDrawerEnableOpenDragGesture: false,
    );
  }
}
