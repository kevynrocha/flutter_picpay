import 'package:flutter/material.dart';
import 'package:picpay/widgets/button_tab_widget.dart';

class ActivitiesHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text('Atividades'),
            ),
            ButtonTabWidget(
              isSelected: true,
              title: 'Todos',
              color: Colors.green,
            ),
            ButtonTabWidget(
              isSelected: false,
              title: 'Minhas',
              color: Colors.green,
            )
          ],
        ),
        ListView.builder(
          itemCount: 5,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (_, index) {
            return ActivityItem();
          },
        )
      ],
    );
  }
}

class ActivityItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 5,
      ),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: FlutterLogo(),
                  ),
                  SizedBox(width: 10),
                  Text.rich(
                    TextSpan(
                      text: 'Você ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      children: [
                        TextSpan(
                          text: 'enviou um ',
                          style: TextStyle(fontWeight: FontWeight.normal),
                        ),
                        TextSpan(text: 'Pix'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text('Alguma descrição aqui na atividade'),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'R\$ 50.00',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.lock,
                    size: 15,
                    color: Colors.black54,
                  ),
                  Text(
                    '7 dias atrás',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.chat_bubble_outline),
                  SizedBox(width: 5),
                  Text('0'),
                  SizedBox(width: 10),
                  Icon(Icons.favorite_border_outlined),
                  SizedBox(width: 5),
                  Text('0'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
