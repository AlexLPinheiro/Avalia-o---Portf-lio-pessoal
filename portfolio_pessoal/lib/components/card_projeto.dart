import 'package:flutter/material.dart';

class CardProjeto extends StatelessWidget {
  final String imageLink;
  final String projectName;
  final String projectDescription;
  final List<String> stacks;

  CardProjeto({
    super.key,
    required this.imageLink,
    required this.projectName,
    required this.projectDescription,
    required this.stacks,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color(0xFFE2E8F0),
        width: 1,
      ),
    ),
  ),
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageLink,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              projectName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            Text(projectDescription),
            SizedBox(height: 15),
            Wrap(
              spacing: 6,
              children: stacks.map((stack) {
                return Text(stack);
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}