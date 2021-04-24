import 'package:flutter/material.dart';
import 'package:picpay/pages/home/widgets/activities_home.dart';
import 'package:picpay/pages/home/widgets/sugestions_home.dart';

import 'widgets/header_home.dart';
import 'widgets/input_home.dart';
import 'widgets/promotion_home.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              HeaderHome(),
              SizedBox(height: 10),
              InputHome(),
              SizedBox(height: 10),
              SugestionsHome(),
              SizedBox(height: 10),
              PromotionHome(),
              SizedBox(height: 10),
              ActivitiesHome(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        padding: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomBarItem(
              isSelected: true,
              icon: Icons.house_outlined,
              title: 'Início',
            ),
            BottomBarItem(
              isSelected: false,
              icon: Icons.account_balance_wallet_outlined,
              title: 'Carteira',
            ),
            InkWell(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    child: Icon(
                      Icons.attach_money,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Pagar',
                    style: TextStyle(color: Colors.green),
                  )
                ],
              ),
            ),
            BottomBarItem(
              isSelected: false,
              icon: Icons.notifications_outlined,
              title: 'Notificações',
            ),
            BottomBarItem(
              isSelected: false,
              icon: Icons.shopping_bag_outlined,
              title: 'Store',
            ),
          ],
        ),
      ),
    );
  }
}

class BottomBarItem extends StatelessWidget {
  final bool isSelected;
  final String title;
  final IconData icon;

  const BottomBarItem({
    @required this.isSelected,
    @required this.title,
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.green : Colors.black87,
          ),
          Text(
            title,
            style: TextStyle(color: isSelected ? Colors.green : Colors.black87),
          )
        ],
      ),
    );
  }
}
