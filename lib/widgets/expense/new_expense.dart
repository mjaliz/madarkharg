import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});
  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _textController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _textController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text("Title"),
            ),
          ),
          TextField(
            controller: _amountController,
            maxLength: 5,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              prefixText: "\$ ",
              label: Text("Amount"),
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel"),
              ),
              ElevatedButton(
                onPressed: () {
                  print(_textController.text);
                  print(_amountController.text);
                },
                child: const Text("Save Expense"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
