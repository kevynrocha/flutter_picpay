import 'package:flutter/material.dart';

class InputHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black38,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Icon(Icons.search),
            SizedBox(width: 10),
            Text(
              'O que você quer pagar',
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
