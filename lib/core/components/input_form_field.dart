import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class InputFormField extends StatelessWidget {
  final TextEditingController? controller;
  final VoidCallback? onPressed;
  final VoidCallback? onTrailingPressed;
  final String labelText;
  final String placeholderText;
  final Widget leading;
  final bool isRequired;
  final bool readOnly;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String? value)? validator;

  const InputFormField({
    super.key,
    required this.labelText,
    required this.placeholderText,
    required this.leading,
    this.controller,
    this.isRequired = false,
    this.readOnly = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.inputFormatters,
    this.onPressed,
    this.onTrailingPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: ShadInputFormField(
          controller: controller,
          onPressed: onPressed,
          inputFormatters: inputFormatters,
          readOnly: readOnly,
          label: Wrap(
            children: [
              Text(labelText, style: TextStyle(fontWeight: FontWeight.bold)),
              if (isRequired)
                Text(
                  ' * ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
            ],
          ),
          validator:
              validator ??
              (v) {
                if (isRequired && (v.isEmpty)) {
                  return '$labelText tidak boleh kosong';
                }
                return null;
              },
          placeholder: Text(placeholderText),
          keyboardType: keyboardType,
          leading: Padding(padding: const EdgeInsets.all(4.0), child: leading),
          trailing: ShadButton(
            width: 24,
            height: 24,
            padding: EdgeInsets.zero,
            decoration: const ShadDecoration(
              secondaryBorder: ShadBorder.none,
              secondaryFocusedBorder: ShadBorder.none,
            ),
            onPressed: onTrailingPressed ?? controller?.clear,
            leading: Icon(Icons.clear, size: 16),
          ),
        ),
      ),
    );
  }
}
