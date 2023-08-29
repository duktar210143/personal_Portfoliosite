class ProjectModel {
  final String title;
  final String description;
  final String github;
  final List<String> screenShot;
  final bool? top;

  ProjectModel({
    required this.title,
    required this.description,
    required this.github,
    required this.screenShot,
    required this.top
  });
}
