import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcon extends StatelessWidget {
  final Widget image;
  final String url;
  final double width;
  
  const SocialIcon({super.key, required this.image, required this.url, required this.width});

  Future<void> _abrirLink(String urlString) async {
    final Uri uri = Uri.parse(urlString);

    if(!await launchUrl(uri)) {
      throw 'Não foi possivel abrir o link';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 100),
      child: InkWell(
        onTap: () => _abrirLink(url),
        child: Padding(
          padding: const EdgeInsets.all(8.0), // aumenta área de clique
          child: SizedBox(
            width: width,
            child: image,
          ),
        ),
      ),
    );
  }
}