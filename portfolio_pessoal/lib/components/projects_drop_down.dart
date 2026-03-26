import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:portfolio_pessoal/components/project_card.dart';

class ProjectsDropDown extends StatefulWidget {
  const ProjectsDropDown({super.key});

  @override
  State<ProjectsDropDown> createState() => _ProjectsDropDownState();
}

class _ProjectsDropDownState extends State<ProjectsDropDown> {
  bool isOpen = false;
  List<bool> likes = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            setState(() {
              isOpen = !isOpen;
            });
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFE2E8F0)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Conheça os projetos do meu portfólio",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Icon(
                        isOpen
                            ? Ionicons.chevron_up
                            : Ionicons.chevron_down,
                      ),
                    ],
                  ),
                ),
                AnimatedCrossFade(
                  firstChild: SizedBox(),
                  secondChild: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        CardProjeto(
                          imageLink: 'https://avatars.githubusercontent.com/u/230382115?s=200&v=4', 
                          projectName: 'Safety Sight', 
                          projectDescription: 'Projeto daora para reconhecimento de EPIs utilizando visão computacional', 
                          stacks: ['React', 'Django'],
                          liked: likes[0],
                          onLikeToggle: () {
                            setState(() {
                              likes[0] = !likes[0];
                            });
                          },
                          ),
                        SizedBox(height: 5),
                        CardProjeto(
                          imageLink: 'https://avatars.githubusercontent.com/u/257542828?s=200&v=4', 
                          projectName: 'Orion', 
                          projectDescription: 'Sistema de ordens de serviço para a ETS', 
                          stacks: ['Spring Boot', 'NextJS'],
                          liked: likes[1],
                          onLikeToggle: () {
                            setState(() {
                              likes[1] = !likes[1];
                            });
                          },
                          ),
                        SizedBox(height: 5),
                        CardProjeto(
                          imageLink: 'https://avatars.githubusercontent.com/u/230382115?s=200&v=4', 
                          projectName: 'Safety Sight', 
                          projectDescription: 'Projeto daora para reconhecimento de EPIs utilizando visão computacional', 
                          stacks: ['React', 'Django'],
                          liked: likes[2],
                          onLikeToggle: () {
                            setState(() {
                              likes[2] = !likes[2];
                            });
                          },
                          ),
                      ],
                    ),
                  ),
                  crossFadeState: isOpen
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: Duration(milliseconds: 300),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

