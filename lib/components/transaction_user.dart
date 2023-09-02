import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:helloworld/components/transaction_form.dart';
import 'package:helloworld/components/transaction_list.dart';
import 'package:helloworld/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(id: 't1', title: "A thing", value: 50.00, date: DateTime.now()),
    Transaction(
        id: 't2', title: "Other thing", value: 150.00, date: DateTime.now()),
    Transaction(
        id: 't3', title: "Another thing", value: 350.00, date: DateTime.now()),
    Transaction(
        id: 't3', title: "Another thing", value: 350.00, date: DateTime.now()),
    Transaction(
        id: 't3', title: "Another thing", value: 350.00, date: DateTime.now()),
    Transaction(
        id: 't3', title: "Another thing", value: 350.00, date: DateTime.now()),
    Transaction(
        id: 't3', title: "Another thing", value: 350.00, date: DateTime.now()),
    Transaction(
        id: 't3', title: "Another thing", value: 350.00, date: DateTime.now()),
    Transaction(
        id: 't3', title: "Another thing", value: 350.00, date: DateTime.now()),
    Transaction(
        id: 't3', title: "Another thing", value: 350.00, date: DateTime.now()),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
        id: Random().nextDouble().toString(),
        title: title,
        value: value,
        date: DateTime.now());

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
