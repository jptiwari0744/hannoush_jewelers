import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/card.dart';

class NewArrivalPage extends StatefulWidget {
  const NewArrivalPage({super.key});

  @override
  State<NewArrivalPage> createState() => _NewArrivalPageState();
}

class _NewArrivalPageState extends State<NewArrivalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              onPressed: () {},
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
