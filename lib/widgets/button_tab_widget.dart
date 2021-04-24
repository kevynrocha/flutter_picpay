import 'package:flutter/material.dart';

class ButtonTabWidget extends StatelessWidget {
  final bool isSelected;
  final String title;
  final Color color;

  const ButtonTabWidget({
    @required this.isSelected,
    @required this.title,
    this.color = Colors.black87,
  })  : assert(isSelected != null),
        assert(title != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: containerDecoration(),
      child: customButton(),
    );
  }

  TextButton customButton() {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(primary: Colors.black87),
      child: customText(),
    );
  }

  Text customText() {
    return Text(
      title,
      style: TextStyle(
        color: isSelected ? color : Colors.black87,
      ),
    );
  }

  BoxDecoration containerDecoration() {
    return BoxDecoration(
      border: Border(
        bottom: BorderSide(
          width: 2,
          color: isSelected ? color : Colors.transparent,
        ),
      ),
    );
  }
}
