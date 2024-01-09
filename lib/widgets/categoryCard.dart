import 'package:flutter/material.dart';

class CategoryCardWidget extends StatefulWidget {
  const CategoryCardWidget({super.key});

  @override
  State<CategoryCardWidget> createState() => _CategoryCardWidgetState();
}

class _CategoryCardWidgetState extends State<CategoryCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            // Navigator.pushNamed(context, '/product',
            //     arguments: widget.id.toString());
          },
          child: ClipRRect(
              child: Image.asset('assets/img1.png',
                  height: 170, width: 155, fit: BoxFit.fill)),
        ),
        Container(
            // height: 53,
            // width: 135,
            decoration: BoxDecoration(
              color: Color.fromRGBO(26, 26, 26, 0.4),
              // color: widget.color,
              // borderRadius: BorderRadius.all(
              //   Radius.circular(15),
              // ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [Text('Bracelates'), Text('183 Products')],
            )),
      ],
    );
  }
}
