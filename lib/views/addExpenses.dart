import 'package:flutter/material.dart';

class AddExpenses extends StatefulWidget {
  @override
  _AddExpensesState createState() => _AddExpensesState();
}

class _AddExpensesState extends State<AddExpenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                        decoration: InputDecoration(
                            hintText: 'Bill no', border: InputBorder.none),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                            hintText: 'Date', border: InputBorder.none),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25),
                  decoration: InputDecoration(
                      hintText: 'Title', border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25),
                  decoration: InputDecoration(
                      hintText: 'Rate', border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25),
                  decoration: InputDecoration(
                      hintText: 'Total', border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Add Expenses',
                    style: TextStyle(fontSize: 30),
                  ),
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      primary: Colors.teal,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
            ],
          ),
        ),
      ),
    );
  }
}
