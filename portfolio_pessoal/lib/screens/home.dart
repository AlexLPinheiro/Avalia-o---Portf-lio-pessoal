import 'package:flutter/material.dart';
import 'package:portfolio_pessoal/components/contact_card.dart';
import 'package:portfolio_pessoal/components/link_to_expierence_card.dart';
import '../components/profile_info_nav_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProfileInfoNavBar(
        name: 'Alex Pinheiro',
        age: 19,
        photoUrl: 'https://avatars.githubusercontent.com/u/143905387?v=4',
        location: 'Monte Mor - SP',
        habilities: 'FullStack Development & UI/Ux Design',
      ),
      body: Padding(padding: EdgeInsets.all(15),
      child: Center(
        child: Column(
          spacing: 30,
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5,
            children: [
              Text("Redes de contato:", style: TextStyle(fontWeight: FontWeight.w600),),
            ContactCard(),
            ],
          ),
          LinkToExperienceCard(),
          
        ],
      )),) 
    );
  }
}