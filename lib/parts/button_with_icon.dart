import 'package:flutter/material.dart';

class ButtonWithIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final Icon icon;
  final String label;
  final Color primaryColor;
  final Color onPrimaryColor;

  ButtonWithIcon({
    required this.onPressed,
    required this.icon,
    required this.label,
    required this.primaryColor,
    required this.onPrimaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36.0),
      child: SizedBox(
        width: double.infinity,
        height: 50.0,
        child: ElevatedButton.icon(
            onPressed: onPressed,
            icon: icon,
            label: Text(label, style: TextStyle(fontSize: 18.0)),
            style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                foregroundColor: onPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))))),
      ),
    );
  }
}
