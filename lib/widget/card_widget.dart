import 'package:fajna_apka/class/item_class.dart';
import 'package:fajna_apka/core/constants.dart';
import 'package:fajna_apka/pages/description_page.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.box,
  });

  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DescriptionPage(box: box);
            },
          ),
        );
      },
      child: Card(
        child: Container(
          height: box.height,
          padding: const EdgeInsets.all(kDouble10),
          margin: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              const SizedBox(
                height: kDouble5,
              ),
              Image.asset(
                'images/${box.image}.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: box.height * 0.6,
              ),
              Text(
                box.title,
                style: const TextStyle(
                    fontSize: 25,
                    color: Colors.cyan,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              Text(
                box.desc,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: kDouble10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
