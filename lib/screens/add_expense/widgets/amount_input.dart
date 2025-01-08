import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_text_form_field.dart';

class AmountInput extends StatelessWidget {
  final TextEditingController controller;

  const AmountInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: CustomTextFormField(
        controller: controller,
        hintText: 'Enter the amount',
        prefixIcon: FontAwesomeIcons.dollarSign,
        borderRadius: 30,
      ),
    );
  }
}
