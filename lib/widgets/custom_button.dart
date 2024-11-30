import 'package:academy/const_file.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final bool isLoading;
  final void Function()? onPressed;
  final Widget? child;
  const CustomButton({
    super.key,
    required this.isLoading,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              width: 30,
              height: 30,
              child: CircularProgressIndicator(),
            ),
          )
        : Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(10)
          ),
          child: TextButton(
              onPressed: isLoading ? null : onPressed,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: child,
              ),
            ),
        );
  }
}
