import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lucide_icons/lucide_icons.dart';

class TopbarWidget extends StatelessWidget {
  const TopbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              //Icon(LucideIcons.home)
              Icon(LucideIcons.mapPin, color: Colors.grey[700], size: 30),
              SizedBox(width: 8),
              Text("Address, Washington dc"),
            ],
          ),
          Row(
            children: [
              Icon(LucideIcons.heart, color: Colors.grey[700], size: 30),
              SizedBox(width: 8),
              Icon(LucideIcons.bell, color: Colors.grey[700], size: 30),
            ],
          ),
        ],
      ),
    );
  }
}
