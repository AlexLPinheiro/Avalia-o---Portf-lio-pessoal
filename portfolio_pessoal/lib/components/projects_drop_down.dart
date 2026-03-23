import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:portfolio_pessoal/components/card_projeto.dart';

class ProjectsDropDown extends StatefulWidget {
  const ProjectsDropDown({super.key});

  @override
  State<ProjectsDropDown> createState() => _ProjectsDropDownState();
}

class _ProjectsDropDownState extends State<ProjectsDropDown> {
  bool isOpen = false;

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
            width: MediaQuery.of(context).size.width * 0.93,
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
                        CardProjeto(imageLink: 'https://avatars.githubusercontent.com/u/230382115?s=200&v=4', projectName: 'Safety Sight', projectDescription: 'Projeto daora para reconhecimento de EPIs utilizando visão computacional', stacks: ['React', 'Django']),
                        SizedBox(height: 5),
                        CardProjeto(imageLink: 'https://avatars.githubusercontent.com/u/230382115?s=200&v=4', projectName: 'Safety Sight', projectDescription: 'Projeto daora para reconhecimento de EPIs utilizando visão computacional', stacks: ['React', 'Django']),
                        SizedBox(height: 5),
                        CardProjeto(imageLink: 'https://avatars.githubusercontent.com/u/230382115?s=200&v=4', projectName: 'Safety Sight', projectDescription: 'Projeto daora para reconhecimento de EPIs utilizando visão computacional', stacks: ['React', 'Django']),
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