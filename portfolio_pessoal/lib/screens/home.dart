import 'package:flutter/material.dart';
import 'package:portfolio_pessoal/components/contact_card.dart';
import 'package:portfolio_pessoal/components/link_to_expierence_card.dart';
import 'package:portfolio_pessoal/components/projects_drop_down.dart';
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
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Software Developer at Bosch",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "I’m a developer who loves exploring the full stack and pushing myself with new challenges. "
                    "I enjoy building things, breaking them, and figuring out how to make them better. Recently, "
                    "I’ve been diving deeper into system design, software architecture, and backend development "
                    "with Spring Boot - areas that really keep me curious and motivated to grow. I’m always looking "
                    "for new ideas to learn, experiment with, and turn into something useful.",
                    style: TextStyle(
                      color: Color(0xFFB7C3D7),
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    "Redes de contato:",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFE5EEF9),
                    ),
                  ),
                  SizedBox(height: 5),
                  ContactCard(),
                ],
              ),
              SizedBox(height: 30),
              LinkToExperienceCard(),
              SizedBox(height: 30),
              ProjectsDropDown(),
            ],
          ),
        ),
      ),
    );
  }
}
