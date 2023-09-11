
import 'package:flutter/material.dart';
import 'package:task_camp2/Models/TextFieldModel.dart';
class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key, required this.fieldModel});

 final TextFieldModel fieldModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: fieldModel.text,

        ),
      ),
      ),
    );
  }
}
