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
      alignment: Alignment.bottomCenter,
      children: [
        InkWell(
          onTap: () {
            // Navigator.pushNamed(context, '/product',
            //     arguments: widget.id.toString());
          },
          child: ClipRRect(
              child: Image.asset('assets/img1.png',
                  height: MediaQuery.of(context).size.height * 0.265,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill)),
        ),
        Positioned(
          bottom: 13,
          child: Container(
              height: 55,
              width: MediaQuery.of(context).size.width * 0.41,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(26, 26, 26, 0.4),

                // color: widget.color,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Bracelates',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  Text(
                    '183 Products',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
                  )
                ],
              )),
        ),
      ],
    );
  }
}
