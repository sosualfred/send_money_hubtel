import 'package:flutter/material.dart';

class HubtelChip extends StatelessWidget {
  const HubtelChip({
    super.key,
    required this.label,
    this.icon,
    this.foregroundColor = const Color(0xFF9CABB8),
    this.backgroundColor = const Color(0xFFE6EAED),
  });

  final String label;
  final Color foregroundColor;
  final Color backgroundColor;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Row(
        children: [
          if (icon != null) icon!,
          Visibility(
            visible: icon != null,
            child: const SizedBox(width: 4),
          ),
          Text(
            label,
            style: TextStyle(
              color: foregroundColor,
              fontSize: 10,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
