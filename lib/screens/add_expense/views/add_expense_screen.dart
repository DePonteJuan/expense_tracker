import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

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

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Add Expense'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Add Expenses',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 32,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextFormField(
                  controller: _amountController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(FontAwesomeIcons.dollarSign,
                        size: 18, color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Enter the amount',
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              TextFormField(
                controller: _categoryController,
                readOnly: true,
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                            child: Text('Category'),
                          ));
                },
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Category'),
                            content: Text('Category'),
                            actions: [
                              TextButton(
                                  onPressed: () {}, child: Text('Cancel')),
                              TextButton(onPressed: () {}, child: Text('Save'))
                            ],
                          ),
                        );
                      },
                      icon: Icon(FontAwesomeIcons.plus,
                          size: 18, color: Colors.grey)),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(FontAwesomeIcons.barsStaggered,
                      size: 18, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Category',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _dateController,
                readOnly: true,
                onTap: () async {
                  DateTime? newDate = await showDatePicker(
                      context: context,
                      initialDate: _selectedDate,
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(Duration(days: 365)));
                  if (newDate != null) {
                    setState(() {
                      _selectedDate = newDate;
                      _dateController.text =
                          DateFormat('dd/MM/yyyy').format(newDate);
                    });
                  }
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(FontAwesomeIcons.clock,
                      size: 18, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Date',
                ),
              ),
              SizedBox(
                height: 32,
              ),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      onPressed: () {},
                      child: Text(
                        'Save',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
