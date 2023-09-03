import 'dart:math';

import 'package:flutter/material.dart';
import 'package:helloworld/components/transaction_form.dart';
import 'package:helloworld/components/transaction_list.dart';
import 'package:helloworld/transaction.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData tema = ThemeData();
    return MaterialApp(
      home: MyHomePage(),
      theme: tema.copyWith(
        colorScheme: tema.colorScheme.copyWith(
          primary: Colors.black45,
          secondary: Colors.orange,
        ),
        textTheme: tema.textTheme.copyWith(
          // ignore: deprecated_member_use
          headline6: const TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.grey[50],
            fontFamily: 'OpenSans',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _transactions = [
    // Transaction(id: 't1', title: "A thing", value: 50.00, date: DateTime.now()),
    // Transaction(
    //     id: 't2', title: "Other thing", value: 150.00, date: DateTime.now()),
    // Transaction(
    //     id: 't3', title: "Another thing", value: 350.00, date: DateTime.now()),
    // Transaction(
    //     id: 't3', title: "Another thing", value: 350.00, date: DateTime.now()),
    // Transaction(
    //     id: 't3', title: "Another thing", value: 350.00, date: DateTime.now()),
    // Transaction(
    //     id: 't3', title: "Another thing", value: 350.00, date: DateTime.now()),
    // Transaction(
    //     id: 't3', title: "Another thing", value: 350.00, date: DateTime.now()),
    // Transaction(
    //     id: 't3', title: "Another thing", value: 350.00, date: DateTime.now()),
    // Transaction(
    //     id: 't3', title: "Another thing", value: 350.00, date: DateTime.now()),
    // Transaction(
    //     id: 't3', title: "Another thing", value: 350.00, date: DateTime.now()),
  ];

  _openTransactionFormModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return TransactionForm(_addTransaction);
        });
  }

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
        id: Random().nextDouble().toString(),
        title: title,
        value: value,
        date: DateTime.now());

    setState(() {
      _transactions.add(newTransaction);
    });

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Despesas",
          style: TextStyle(fontFamily: "Quicksand"),
        ),
        actions: [
          IconButton(
              onPressed: () => _openTransactionFormModal(context),
              icon: Icon(Icons.add))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              child: Card(
                  color: Colors.blue, elevation: 5, child: Text("Gráfico")),
            ),
            TransactionList(_transactions),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _openTransactionFormModal(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
