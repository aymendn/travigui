import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/app_color.dart';

class CustomTextFormField extends HookConsumerWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.label,
    this.validator,
    this.obscureText = false,
    this.icon,
    this.hint = '',
  });

  final TextEditingController controller;
  final String label;
  final String hint;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? icon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isObscure = useState(true);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 14),
        ),
        const SizedBox(height: 4),
        TextFormField(
          obscureText: obscureText && isObscure.value,
          controller: controller,
          decoration: InputDecoration(
            hintStyle: const TextStyle(
              color: AppColor.greyText,
            ),
            iconColor: AppColor.greyText,
            prefixIconColor: AppColor.greyText,
            labelStyle: const TextStyle(
              color: AppColor.greyText,
              fontSize: 14,
            ),
            prefixIcon: icon,
            hintText: hint,
            filled: true,
            fillColor: Colors.transparent,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(
                color: AppColor.greyText,
                width: 0.5,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(
                color: AppColor.greyText,
                width: 0.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: AppColor.primary.withOpacity(0.7),
                width: 2,
              ),
            ),
          ),
          validator: validator,
        ),
      ],
    );
  }
}
