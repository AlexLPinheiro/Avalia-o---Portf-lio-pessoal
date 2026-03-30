import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:portfolio_pessoal/components/experience_filter_button.dart';
import 'package:portfolio_pessoal/components/experience_highlight_card.dart';
import 'package:portfolio_pessoal/components/experience_timeline_section.dart';
import 'package:portfolio_pessoal/data/experience_items.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  final PageController controller = PageController(viewportFraction: 0.9);

  int indexAtual = 0;

  void mudarPagina(int novoIndex) {
    setState(() {
      indexAtual = novoIndex;
    });

    controller.animateToPage(
      novoIndex,
      duration: Duration(milliseconds: 350),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Ionicons.arrow_back, color: Colors.white),
        ),
        title: Text(
          "Minha jornada na programacao",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Minha jornada na programacao",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Uma visao rapida sobre os lugares que moldaram a minha caminhada como programador.",
                style: TextStyle(
                  color: Color(0xFFB7C3D7),
                  height: 1.5,
                ),
              ),
              SizedBox(height: 24),
              SizedBox(
                height: 48,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: experienceItems.length,
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    return ExperienceFilterButton(
                      experience: experienceItems[index],
                      isSelected: indexAtual == index,
                      onTap: () {
                        mudarPagina(index);
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 270,
                child: PageView.builder(
                  controller: controller,
                  itemCount: experienceItems.length,
                  onPageChanged: (value) {
                    setState(() {
                      indexAtual = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return ExperienceHighlightCard(
                      experience: experienceItems[index],
                    );
                  },
                ),
              ),
              SizedBox(height: 26),
              Row(
                children: List.generate(experienceItems.length, (index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 250),
                    margin: EdgeInsets.only(right: 8),
                    height: 8,
                    width: indexAtual == index ? 28 : 8,
                    decoration: BoxDecoration(
                      color: indexAtual == index ? Color(0xFF60A5FA) : Color(0xFF29437A),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  );
                }),
              ),
              SizedBox(height: 30),
              Text(
                "Linha do tempo",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 16),
              ExperienceTimelineSection(
                experiences: experienceItems,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
