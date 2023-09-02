import 'package:flutter/material.dart';
import 'package:helloworld/components/transaction_list.dart';
import 'package:helloworld/components/transaction_user.dart';
import 'package:helloworld/transaction.dart';
import 'package:intl/intl.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Despesas"),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              SizedBox(
                child: Card(
                    color: Colors.blue, elevation: 5, child: Text("Gráfico")),
              ),
              TransactionUser(),
            ],
          ),
        ));
  }
}
