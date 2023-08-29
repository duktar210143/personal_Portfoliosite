import 'package:portfoliosite/widgets/all_imports.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ProjectController project = ProjectController();
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      title: "Duktar Tamang",
      theme:
          ThemeData(brightness: Brightness.light, primarySwatch: Colors.blue),
      darkTheme: ThemeData(brightness: Brightness.dark),
      home:  Project(project: project),
    );
  }
}
