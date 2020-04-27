import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      //ListView has scroll by default
      child: transactions.isEmpty
          ? Column(
              children: <Widget>[
                Text('No transactions added'),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 5,
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: FittedBox(
                          child: Text(
                            "\u20B9 ${transactions[index].amount.toStringAsFixed(2)}",
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      transactions[index].title,
                      style: Theme.of(context).textTheme.title,
                    ),
                    subtitle: Text(
                      DateFormat.yMMMd().format(transactions[index].date),
                    ),
                    trailing: FlatButton(
                      child: Icon(Icons.delete),
                      onPressed: () {},
                    ),
                  ),
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}

//return Card(
//child: Row(
//children: <Widget>[
//Container(
//margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
//decoration: BoxDecoration(
//border: Border.all(
//color: Theme.of(context).primaryColorDark,
//width: 2,
//),
//),
//padding: EdgeInsets.all(10.0),
//child: Text(
//'\u20B9 ${transactions[index].amount.toStringAsFixed(2)}',
//style: TextStyle(
//fontWeight: FontWeight.bold,
//fontSize: 20.0,
//color: Colors.purple,
//),
//),
//),
//Column(
//crossAxisAlignment: CrossAxisAlignment.start,
//children: <Widget>[
//Text(
//transactions[index].title,
//style: Theme.of(context).textTheme.title,
//),
//Text(
//DateFormat.yMMMd().format(transactions[index].date),
//style: TextStyle(
//color: Colors.grey,
//),
//),
//],
//),
//],
//),
//);
