import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _num1 = '';
  String _num2 = '';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Enter the first number'),
                  onSaved: (value) {
                    _num1 = value ?? '';
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Enter the second number'),
                  onSaved: (value) {
                    _num2 = value ?? '';
                  },
                ),
                TextButton(onPressed: calculate, child: const Text('Calculate')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void calculate() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('Number 1: $_num1');
      print('Number 2: $_num2');
      // Add your calculation logic here using _num1 and _num2
    }
  }
}
