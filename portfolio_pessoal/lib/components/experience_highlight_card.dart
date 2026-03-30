import 'package:flutter/material.dart';
import 'package:portfolio_pessoal/data/experience_items.dart';

class ExperienceHighlightCard extends StatelessWidget {
  final ExperienceItem experience;

  const ExperienceHighlightCard({
    super.key,
    required this.experience,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Color(0xFF0B1120),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Color(0xFF2563EB), width: 1.2),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF020617).withOpacity(0.35),
            blurRadius: 18,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xFF111C34),
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xFF3B82F6)),
            ),
            child: Icon(
              experience.icone,
              color: Color(0xFF60A5FA),
              size: 24,
            ),
          ),
          SizedBox(height: 18),
          Text(
            experience.periodo,
            style: TextStyle(
              color: Color(0xFF60A5FA),
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8),
          Text(
            experience.local,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 6),
          Text(
            experience.curso,
            style: TextStyle(
              color: Color(0xFFDCEAFE),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 12),
          Text(
            experience.descricao,
            style: TextStyle(
              color: Color(0xFFB7C3D7),
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
