import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.qr_code_outlined),
          color: Colors.green,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.settings_outlined),
          color: Colors.green,
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                'Meu saldo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'R\$ 524.00',
                style: Theme.of(context).textTheme.headline6,
              )
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.card_giftcard_outlined),
          color: Colors.green,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.maps_ugc_outlined),
          color: Colors.green,
        ),
      ],
    );
  }
}
