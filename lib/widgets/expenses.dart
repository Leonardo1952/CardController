import 'package:card_controller/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pie_chart.dart';

class ExpanseSection extends StatelessWidget {
  const ExpanseSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text('Expenses',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: expenses
                      .map((value) => Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor:
                                      pieColors[expenses.indexOf(value)],
                                ),
                                const SizedBox(width: 5),
                                Expanded(
                                  child: Text(
                                    value['name'],
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                )
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ),
            ),
            const Expanded(flex: 6, child: PieChart())
          ],
        ),
      ],
    );
  }
}
