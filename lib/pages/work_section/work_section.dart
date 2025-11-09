import 'package:jaspr/jaspr.dart';
import 'package:my_website/pages/work_section/project.dart';
import 'package:my_website/pages/work_section/project_card.dart';

import 'deploy.dart';

class WorkSection extends StatelessComponent {
  const WorkSection({super.key});

  static final projects = <Project>[
    Project(
      title: "XX RAO",
      rating: 4.9,
      description: '''Accedé al programa con todos los detalles de las actividades del evento.
      Armá un cronograma según tus preferencias.
      Explorá las actividades aplicando filtros y buscando por palabras claves.
      Mantenete al día con los cambios al cronograma y otras novedades del evento.''',
      tech: const ["Flutter", "BLoC", "Hive_ce", "MVC"],
      keyFeatures: const [
        // "Balance & QR Payments",
        // "Bill Splitting & Recurring Payments",
        // "Root Detection & Screenshot Prevention",
        // "Smart Notifications",
      ],
      downloads: "500+ downloads",
      platforms: [
        AndroidDeploy(
          url: "https://play.google.com/store/apps/details?id=com.modularsoft.app_rao&hl=es_AR",
        ),
        WebDeploy(
          url: "https://play.google.com/store/apps/details?id=com.modularsoft.app_rao&hl=es_AR",
        ),
      ],
      screenshots: const [
        "https://play-lh.googleusercontent.com/BLS5ZHpqWx-n6pcKhbrw9xVVOGqCqhBucunQ2SPR9K3jSBCEAALvuTrEiNHMGuysJzY=w526-h296-rw",
      ],
    ),
  ];

  @override
  Component build(BuildContext context) {
    return section(
      id: 'work',
      classes: "py-32 px-6 bg-slate-50", // Changed background to make cards pop
      [
        div(
          classes: "max-w-6xl mx-auto",
          [
            div(
              classes: "space-y-16",
              [
                div(
                  classes: "text-center space-y-4",
                  [
                    h2(classes: "text-4xl md:text-5xl font-light text-gray-900", [text("Featured Work")]),
                    div(classes: "w-16 h-0.5 bg-gray-900 mx-auto", []),
                  ],
                ),
                div(
                  classes: "grid grid-cols-1 md:grid-cols-2 gap-8",
                  // Spacing is now handled by each card individually
                  projects
                      .map(
                        (project) => ProjectCard(project: project),
                      )
                      .toList(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
