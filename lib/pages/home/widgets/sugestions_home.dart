import 'package:flutter/material.dart';
import 'package:picpay/widgets/button_tab_widget.dart';

class SugestionsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                ButtonTabWidget(
                  title: 'Sugestões',
                  isSelected: true,
                ),
                ButtonTabWidget(
                  title: 'Favoritos',
                  isSelected: false,
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 110,
              width: double.infinity,
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (notification) {
                  notification.disallowGlow();
                  return true;
                },
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (_, index) => SugestionItem(),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

class SugestionItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black87,
                )),
            child: FlutterLogo(),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Pagar na maquininha',
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
