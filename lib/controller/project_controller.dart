import 'package:portfoliosite/utils/screenshot.dart';
import 'package:portfoliosite/widgets/all_imports.dart';

class ProjectController {
  final projectList = [
    ProjectModel(
      title: "Simple Calculator",
      description: "Simple calculator -HTML - CSS -JS",
      github: "https://github.com/duktar210143/calculate_js.git",
      demo: '',
      top: false,
      screenShot: ScreenShots.simpleCalc,
    ),
    ProjectModel(
      title: "Ghumantey",
      description: "Booking site using /- java's Jframe framework of java",
      github: "https://github.com/duktar210143/Ghumantey.git",
      demo: "https://youtu.be/YU1mmB-ZsMM?si=8rKjJlDxPkZvj-ov",
      screenShot: ScreenShots.ghumantey,
      top: false,
    ),
    ProjectModel(
      title: "RMsuits",
      description: "An ecommerce platform built on django framework of Python ",
      github: 'https://github.com/duktar210143/RMsuits.git',
      demo: 'https://youtu.be/Vk1toG-eHvA?si=Mr0LextZn0lTXYcd',
      screenShot: ScreenShots.Rmsuits,
      top: true,
    ),
    ProjectModel(title: "Smart contact", 
    description: "Easily add update and delete contact through this application built using Spring boot framework of Java ", 
    github: "https://github.com/duktar210143/SmartContact.git", 
    demo: "https://youtu.be/ZBCcqWfV1Hg?si=JAvXQi_0YEM27bC5", 
    screenShot: ScreenShots.smartContact, 
    top: true)
  ];
}
