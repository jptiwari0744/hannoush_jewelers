import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  CardWidget(
      // {required this.name,
      //   required this.price,
      //   required this.img,
      //   required this.value,
      //   required this.color,
      //   required this.id}
      );
  // var name, price, img, value, color, id;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 155,
      child: Column(
        children: [
          Stack(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/productDetail');
                  // Navigator.pushNamed(context, '/product',
                  //     arguments: widget.id.toString());
                },
                child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    child:
                        // widget.img == null
                        //     ? Container(
                        //         height: 184,
                        //         width: 148,
                        //         decoration: BoxDecoration(color: Colors.white),
                        //       )
                        //     :
                        // Image.network('${baseUrl + widget.img}',
                        Image.asset('assets/img1.png',
                            height: 170, width: 155, fit: BoxFit.fill)),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      // color: widget.color,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 8,
                  )),
                ),
              ),
            ],
          ),
          Text(
            'The Marc Jocobs',
            style: TextStyle(fontSize: 11),
          ),
          Text(
            'Traveral Tote',
            style: TextStyle(fontSize: 11, color: Colors.grey),
          ),
          Text(
            '\$ 195.00',
            style: TextStyle(fontSize: 11),
          ),
        ],
      ),
    );
  }
}
