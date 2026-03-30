import 'package:flutter/material.dart';
import 'package:portfolio_pessoal/data/experience_items.dart';
import 'package:timelines_plus/timelines_plus.dart';

class ExperienceTimelineSection extends StatelessWidget {
  final List<ExperienceItem> experiences;

  const ExperienceTimelineSection({
    super.key,
    required this.experiences,
  });

  @override
  Widget build(BuildContext context) {
    return TimelineTheme(
      data: TimelineThemeData(
        nodePosition: 0,
        color: Color(0xFF1D4ED8),
        indicatorTheme: IndicatorThemeData(
          size: 22,
          color: Color(0xFF60A5FA),
        ),
        connectorTheme: ConnectorThemeData(
          color: Color(0xFF1D4ED8),
          thickness: 2.5,
        ),
      ),
      child: Column(
        children: List.generate(experiences.length, (index) {
          final experience = experiences[index];
          final bool ultimoItem = index == experiences.length - 1;

          return TimelineTile(
            node: TimelineNode(
              indicator: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF60A5FA),
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xFFBFDBFE), width: 3),
                ),
                child: Icon(
                  experience.icone,
                  size: 12,
                  color: Color(0xFF081120),
                ),
              ),
              startConnector: index == 0 ? SizedBox() : SolidLineConnector(),
              endConnector: ultimoItem ? SizedBox() : SolidLineConnector(),
            ),
            contents: Padding(
              padding: EdgeInsets.only(left: 16, bottom: ultimoItem ? 0 : 20),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF0B1120),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Color(0xFF2563EB), width: 1.1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      experience.periodo,
                      style: TextStyle(
                        color: Color(0xFF60A5FA),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      experience.local,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      experience.curso,
                      style: TextStyle(
                        color: Color(0xFFDCEAFE),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      experience.descricao,
                      style: TextStyle(
                        color: Color(0xFFB7C3D7),
                        height: 1.45,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
