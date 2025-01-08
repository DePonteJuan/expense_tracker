import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_text_form_field.dart';

class DateInput extends StatelessWidget {
  final TextEditingController controller;
  final DateTime? selectedDate;
  final Function(DateTime) onDateSelected;

  const DateInput({
    super.key,
    required this.controller,
    required this.selectedDate,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: controller,
      hintText: 'Date',
      prefixIcon: FontAwesomeIcons.clock,
      readOnly: true,
      onTap: () => _selectDate(context),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? newDate = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (newDate != null) {
      onDateSelected(newDate);
    }
  }
}
