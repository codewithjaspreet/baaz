import 'package:flutter/material.dart';

class addressCard extends StatelessWidget {
  const addressCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        height: 223,
        decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFFDDDDDD),
            ),
            borderRadius: BorderRadius.circular(
                25) // use instead of BorderRadius.all(Radius.circular(20))
            ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              addrow(
                add: '131, sector 4, D Block',
                head: 'Street:',
              ),
              addrow(
                add: 'City',
                head: 'Lucknow',
              ),
              addrow(
                add: 'Uttar Pradesh',
                head: 'State/province/area:',
              ),
              addrow(
                add: 'xxxx-xxxxxx',
                head: 'Phone number:',
              ),
              addrow(
                add: '226050',
                head: 'Zip code',
              ),
              addrow(
                add: '+91',
                head: 'Country calling code:',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class addrow extends StatelessWidget {
  const addrow({Key? key, required this.head, required this.add})
      : super(key: key);

  final String head;
  final String add;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          head,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          add,
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
