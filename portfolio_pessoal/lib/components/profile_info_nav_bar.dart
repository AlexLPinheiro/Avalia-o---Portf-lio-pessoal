import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ProfileInfoNavBar extends StatelessWidget implements PreferredSizeWidget {
  final String name;
  final int age;
  final String photoUrl;
  final String location;
  final String habilities;

  const ProfileInfoNavBar({
    super.key,
    required this.name,
    required this.age,
    required this.photoUrl,
    required this.location,
    required this.habilities,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 150,
      foregroundColor: Colors.black87,
      backgroundColor: Colors.transparent,
      title: SizedBox(
        width: double.infinity,
        child: Column(
          spacing: 2,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(photoUrl),
                  backgroundColor: Colors.grey.shade200,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('$age anos', style: const TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              spacing: 10,
              children: [
                Icon(Ionicons.location,
                size: 20,),
                Text(location, style: TextStyle(fontSize: 12))
              ],
            ),
            Row(
              spacing: 10,
              children: [
                Icon(Ionicons.code,
                size: 20,),
                Text(habilities, style: TextStyle(fontSize: 16)),
              ],
            )
            
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 100);
}
