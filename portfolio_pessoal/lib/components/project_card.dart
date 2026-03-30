import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CardProjeto extends StatelessWidget {
  final String imageLink;
  final String projectName;
  final String projectDescription;
  final List<String> stacks;
  final bool liked;
  final VoidCallback onLikeToggle;

  CardProjeto({
    super.key,
    required this.imageLink,
    required this.projectName,
    required this.projectDescription,
    required this.stacks,
    required this.liked,
    required this.onLikeToggle
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color(0xFF1D4ED8), width: 1),
        ),
      ),
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(imageLink, width: double.infinity, fit: BoxFit.cover),
            ),
            SizedBox(height: 10),
            Text(
              projectName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Text(
              projectDescription,
              style: TextStyle(color: Color(0xFFB7C3D7)),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Wrap(
                  spacing: 6,
                  children: stacks.map((stack) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        color: Color(0xFF111C34),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xFF2563EB)),
                      ),
                      child: Text(
                        stack,
                        style: TextStyle(
                          color: Color(0xFFDCEAFE),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  }).toList(),
                ),
                IconButton(
                  onPressed: onLikeToggle,
                  icon: Icon(
                    liked ? Ionicons.heart : Ionicons.heart_outline,
                  ),
                  color: liked ? Colors.red : Color(0xFF94A3B8),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
