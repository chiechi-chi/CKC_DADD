import 'package:doan_ltdd_chk/screens/store_screen.dart';
import 'package:flutter/material.dart';

class ShopBar extends StatelessWidget {
  const ShopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Padding(padding: EdgeInsets.all(3)),
            Container(
              width: 25,
              height: 30,
              child: Image.asset('assets/11.png'),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 3, 0)),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Row(children: [
                Padding(padding: EdgeInsets.all(3)),
                Image.asset(
                  'assets/11.png',
                  width: 15,
                  height: 15,
                ),
                Padding(padding: EdgeInsets.all(3)),
                Image.asset(
                  'assets/11.png',
                  width: 15,
                  height: 15,
                ),
                Padding(padding: EdgeInsets.all(3)),
                Image.asset(
                  'assets/11.png',
                  width: 15,
                  height: 15,
                ),
                Padding(padding: EdgeInsets.all(3)),
                Image.asset(
                  'assets/11.png',
                  width: 15,
                  height: 15,
                ),
                Padding(padding: EdgeInsets.fromLTRB(3, 3, 3, 5)),
                Image.asset(
                  'assets/11.png',
                  width: 15,
                  height: 15,
                ),
              ]),
            ),
            Container(
                child: IconButton(
              icon: Icon(Icons.add_box_outlined),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Store(),
                  ),
                );
              },
            ))
          ],
        ),
        Row(
          children: [
            Container(
              width: 120,
              height: 30,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                  left: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                  right: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                  bottom: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(padding: EdgeInsets.all(1)),
                  Image.asset(
                    'assets/22.png',
                    width: 20,
                    height: 15,
                  ),
                  Padding(padding: EdgeInsets.all(1)),
                  Text(
                    '2000',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Store(),
                        ),
                      );
                    }),
                    icon: Icon(Icons.shopping_cart_checkout_outlined),
                    color: Colors.white,
                    iconSize: 18,
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
