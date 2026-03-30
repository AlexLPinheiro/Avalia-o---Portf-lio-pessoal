import 'package:flutter/material.dart';
import 'package:portfolio_pessoal/components/social_icon.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SocialIcon(
              image: Image(
                image: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/LinkedIn_2021.svg/1280px-LinkedIn_2021.svg.png",
                ), 
              ),
              url: 'https://www.linkedin.com/in/alex-pinheiro-6b66472b9/', 
              width: MediaQuery.of(context).size.width * 0.2
              ),


              SocialIcon(
              image: Image(
                image: AssetImage(
                  "assets/images/github.png",
                ),),
              url: 'https://github.com/AlexLPinheiro', 
              width: MediaQuery.of(context).size.width * 0.2
              ),

              SocialIcon(
              image: Image(
                image: AssetImage(
                  "assets/images/instagram.png",
                ),
              ),
              url: 'https://www.instagram.com/palmeiras/', 
              width: MediaQuery.of(context).size.width * 1
              ),



              SocialIcon(
              image: Image(
                image: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/X_icon.svg/960px-X_icon.svg.png",
                ),
              ),
              url: 'https://x.com/Palmeiras', 
              width: MediaQuery.of(context).size.width * 0.07
              )
            

            
          ],
        ),
      ),
    );
  }
}
