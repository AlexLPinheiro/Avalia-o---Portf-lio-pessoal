import 'package:flutter/material.dart';
import 'package:portfolio_pessoal/data/experience_items.dart';

class ExperienceFilterButton extends StatelessWidget {
  final ExperienceItem experience;
  final bool isSelected;
  final VoidCallback onTap;

  const ExperienceFilterButton({
    super.key,
    required this.experience,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF172554) : Color(0xFF0B1120),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: isSelected ? Color(0xFF60A5FA) : Color(0xFF1D4ED8),
          ),
        ),
        child: Row(
          children: [
            Icon(
              experience.icone,
              size: 18,
              color: isSelected ? Color(0xFF93C5FD) : Color(0xFF60A5FA),
            ),
            SizedBox(width: 8),
            Text(
              experience.periodo,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
