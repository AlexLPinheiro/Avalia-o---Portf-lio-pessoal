import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.93,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFE2E8F0)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(10), 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/LinkedIn_2021.svg/1280px-LinkedIn_2021.svg.png"), width: 100,),
            Image.asset('assets/images/github.png', width: 120,),
            Image.asset('assets/images/instagram.png', width: 120,),
            Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/X_icon.svg/960px-X_icon.svg.png"), width: 30,),
          ],
        ),),
    );
  }
}