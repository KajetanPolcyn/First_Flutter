import 'package:fajna_apka/class/item_class.dart';
import 'package:fajna_apka/core/constants.dart';
import 'package:flutter/material.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({
    super.key,
    required this.box,
  });

  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizeCustomTitle = 50;
  double fontSizeCustomDesc = 15;
  bool filledTitle = false;
  bool filledDesc = false;

  bool colorSwitchTitle() {
    setState(() {
      filledTitle = !filledTitle;
    });

    return filledTitle;
  }

  bool colorSwitchDesc() {
    setState(() {
      filledDesc = !filledDesc;
    });

    return filledDesc;
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Info"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              icon: const Icon(Icons.info))
        ],
        titleTextStyle: const TextStyle(
            fontSize: 30, letterSpacing: 3, color: Colors.amber),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              Image.asset(
                "images/${widget.box.image}.png",
                alignment: Alignment.center,
                fit: BoxFit.cover,
                width: double.infinity,
                height: screenHeight * 0.3,
              ),
              Wrap(
                children: [
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustomTitle = 50;
                        filledTitle = true;
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor:
                          !filledTitle ? Colors.blue : Colors.white,
                      backgroundColor:
                          !filledTitle ? Colors.white : Colors.blue,
                    ),
                    child: const Text(
                      "Small Title",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustomTitle = 100;
                        filledTitle = false;
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: filledTitle ? Colors.blue : Colors.white,
                      backgroundColor: filledTitle ? Colors.white : Colors.blue,
                    ),
                    child: const Text(
                      "Large Title",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustomDesc = 15;
                        filledDesc = true;
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: !filledDesc ? Colors.blue : Colors.white,
                      backgroundColor: !filledDesc ? Colors.white : Colors.blue,
                    ),
                    child: const Text(
                      "Small Text",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustomDesc = 25;
                        filledDesc = false;
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: filledDesc ? Colors.blue : Colors.white,
                      backgroundColor: filledDesc ? Colors.white : Colors.blue,
                    ),
                    child: const Text(
                      "Large Text",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  widget.box.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: fontSizeCustomTitle,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                widget.box.description,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: fontSizeCustomDesc),
              ),
              const SizedBox(
                height: kDouble20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
