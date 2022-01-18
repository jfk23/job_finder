import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String location;
  const IconText(this.icon, this.location, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          location,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
