import 'package:flutter/material.dart';
import '../../core/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.text,
    this.onPressed,
    this.color = AppColor.primary,
    this.borderColor,
    this.height = 50,
    this.icon,
    this.isIconRight = false,
    this.isLoading = false,
    this.textColor,
    this.isFullWidth = false,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
  });

  final String? text;
  final VoidCallback? onPressed;
  final Color color;
  final Color? textColor;
  final Color? borderColor;
  final double height;
  final IconData? icon;
  final bool isIconRight;
  final bool isLoading;
  final bool isFullWidth;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: color,
        foregroundColor: textColor ?? borderColor ?? AppColor.white,
        minimumSize: Size(isFullWidth ? double.infinity : 0, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        // add padding:
        padding: padding,
        // add border
        side: BorderSide(
          color: borderColor ?? Colors.transparent,
          width: 2,
        ),
      ),
      child: isLoading
          ? const SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(AppColor.white),
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null && !isIconRight) Icon(icon, size: 16),
                if (icon != null && !isIconRight && text != null)
                  const SizedBox(width: 4),
                if (text != null)
                  Text(
                    text!,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                if (icon != null && isIconRight && text != null)
                  const SizedBox(width: 4),
                if (icon != null && isIconRight) Icon(icon, size: 16),
              ],
            ),
    );
  }
}
