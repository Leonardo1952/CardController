import 'package:card_controller/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card_details.dart';

class CardSelection extends StatelessWidget {
  const CardSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.topLeft,
            child: const Text("Cartão Selecionado",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                decoration: BoxDecoration(
                    color: primaryColor,
                    boxShadow: customShadow,
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    Positioned.fill(
                        top: 150,
                        bottom: -200,
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: customShadow,
                              shape: BoxShape.circle,
                              color: Colors.white38),
                        )),
                    Positioned.fill(
                        left: -300,
                        top: -100,
                        bottom: -100,
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: customShadow,
                              shape: BoxShape.circle,
                              color: Colors.white38),
                        )),
                    const CardDetails(),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
