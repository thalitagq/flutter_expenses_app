import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:helloworld/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList(this.transactions, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((transaction) {
        return Card(
            child: Row(children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.red, width: 2)),
            padding: const EdgeInsets.all(10),
            child: Text(
              "R\$ ${transaction.value.toStringAsFixed(2)}",
              style: const TextStyle(
                  color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              transaction.title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              DateFormat('d MMM y').format(transaction.date),
              style: TextStyle(color: Colors.grey[500]),
            )
          ])
        ]));
      }).toList(),
    );
  }
}
