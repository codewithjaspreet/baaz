import 'package:flutter/material.dart';

class ProfileRow extends StatelessWidget {
  const ProfileRow({Key? key, required this.icon, required this.text})
      : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: Icon(icon),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
            )
          ],
        ),
        Icon(Icons.arrow_forward_ios)
      ],
    );
  }
}
