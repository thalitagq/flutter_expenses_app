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
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Despesas"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              child: Card(
                  color: Colors.blue, elevation: 5, child: Text("Gráfico")),
            ),
            const TransactionUser(),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  TextField(
                    controller: titleController,
                    decoration: const InputDecoration(labelText: "Título"),
                  ),
                  TextField(
                    controller: valueController,
                    decoration: const InputDecoration(labelText: "Valor (R\$)"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Nova transação',
                            style: TextStyle(color: Colors.red),
                          )),
                    ],
                  )
                ]),
              ),
            )
          ],
        ));
  }
}
