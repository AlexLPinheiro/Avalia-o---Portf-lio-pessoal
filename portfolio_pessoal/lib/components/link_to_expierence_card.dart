import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:portfolio_pessoal/screens/experience.dart';

class LinkToExperienceCard extends StatelessWidget {
  const LinkToExperienceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Experience()),
            );
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.93,
            decoration: BoxDecoration(
              color: Color(0xFF0B1120),
              border: Border.all(color: Color(0xFF2563EB), width: 1.2),
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF020617).withOpacity(0.35),
                  blurRadius: 18,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFF111C34),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Color(0xFF3B82F6)),
                    ),
                    child: Icon(Ionicons.map, color: Color(0xFF60A5FA)),
                  ),
                  SizedBox(width: 15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Venha me conhecer mais",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 3),
                      Row(
                        children: [
                          Text(
                            "Minha experiencia como programador",
                            style: TextStyle(color: Color(0xFFB7C3D7)),
                          ),
                          SizedBox(width: 4),
                          Icon(
                            Ionicons.arrow_forward,
                            size: 15,
                            color: Color(0xFF60A5FA),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
