import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:expense_tracker/screens/add_expense/widgets/index.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({super.key});

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    _dateController.text = DateFormat('dd/MM/yyyy').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(title: Text('Add Expense')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const HeaderText(),
              const SizedBox(height: 32),
              AmountInput(controller: _amountController),
              const SizedBox(height: 32),
              CategoryInput(controller: _categoryController),
              const SizedBox(height: 20),
              DateInput(
                controller: _dateController,
                selectedDate: _selectedDate,
                onDateSelected: (DateTime date) {
                  setState(() {
                    _selectedDate = date;
                    _dateController.text =
                        DateFormat('dd/MM/yyyy').format(date);
                  });
                },
              ),
              const SizedBox(height: 32),
              SaveButton(onPressed: () {
                // Implementar lógica de guardado
              }),
            ],
          ),
        ),
      ),
    );
  }
}
