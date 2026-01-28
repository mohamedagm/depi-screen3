import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({
    super.key,
    required this.isChoosen,
    required this.icon,
    required this.text,
    this.onTap,
  });
  final bool isChoosen;
  final IconData icon;
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 60,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: isChoosen ? Color(0xffE91E63) : Color(0xff1C1F32),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  Icon(icon, size: 70, color: Colors.white),
                  Text(text, style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
