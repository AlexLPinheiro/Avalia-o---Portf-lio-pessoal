import 'package:flutter/widgets.dart';
import 'package:ionicons/ionicons.dart';

class ExperienceItem {
  final String periodo;
  final String local;
  final String curso;
  final String descricao;
  final IconData icone;

  const ExperienceItem({
    required this.periodo,
    required this.local,
    required this.curso,
    required this.descricao,
    required this.icone,
  });
}

const List<ExperienceItem> experienceItems = [
  ExperienceItem(
    periodo: '2022 / 2024',
    local: 'Etec de Monte Mor',
    curso: 'Tecnico em desenvolvimento de sistemas',
    descricao: 'Minha porta de entrada para a computacao.',
    icone: Ionicons.school_outline,
  ),
  ExperienceItem(
    periodo: '2025',
    local: 'Robert Bosch LTDA',
    curso: 'Meu primeiro emprego como programador',
    descricao: 'Lugar onde estou me desenvolvendo e me tornando um profissional mais qualificado.',
    icone: Ionicons.briefcase_outline,
  ),
  ExperienceItem(
    periodo: '2025',
    local: 'UNASP Hortolandia',
    curso: 'Graduacao em engenharia de software',
    descricao: 'Onde busco conhecimento para me tornar um grande programador.',
    icone: Ionicons.book_outline,
  ),
];
