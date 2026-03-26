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
        border: Border(bottom: BorderSide(color: Color(0xFFE2E8F0), width: 1)),
      ),
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(imageLink, width: double.infinity, fit: BoxFit.cover),
            SizedBox(height: 10),
            Text(
              projectName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            Text(projectDescription),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Wrap(
                  spacing: 6,
                  children: stacks.map((stack) {
                    return Text(stack);
                  }).toList(),
                ),
                IconButton(
                  onPressed: onLikeToggle, 
                  icon: Icon(
                    liked ? Ionicons.heart : Ionicons.heart_outline,
                  ), 
                  color: liked ? Colors.red : Colors.grey,),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
