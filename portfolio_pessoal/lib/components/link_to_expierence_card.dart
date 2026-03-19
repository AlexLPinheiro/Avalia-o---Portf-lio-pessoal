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
              border: Border.all(color: Color(0xFFE2E8F0)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFEFF6FE),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(Ionicons.map),
                  ),
                  SizedBox(width: 15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Minha jornada",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Text("Venha conhecer minha jornada profissional e acadêmica"),
                          SizedBox(width: 2),
                          Icon(
                            Ionicons.arrow_forward,
                            size: 15,
                            color: Color(0xFF7D7D7D),
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