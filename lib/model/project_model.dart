class ProjectModel {
  final String title;
  final String description;
  final String github;
  final String demo;
  final List<String> screenShot;
  final bool? top;

  ProjectModel(
      {required this.title,
      required this.description,
      required this.github,
      required this.demo,
      required this.screenShot,
      required this.top});
}
