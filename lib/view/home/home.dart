import 'package:portfoliosite/footer/footer.dart';
import 'package:portfoliosite/widgets/all_imports.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> drawerkey = GlobalKey<ScaffoldState>();
  late ProjectController project;
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final projectKey = GlobalKey();
  final skillsKey = GlobalKey();
  final topkey = GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    project = ProjectController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerkey,
      backgroundColor: Colors.black,
      drawer: Responsive.isDesktop(context)
          ? const SizedBox()
          : MobileDrawer(
              about: aboutKey,
              project: projectKey,
              skill: skillsKey,
            ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Responsive.isDesktop(context)
                  ? TopMenu(
                      key: homeKey,
                      home: () {
                        Scrollable.ensureVisible(
                          homeKey.currentState!.context,
                          duration: const Duration(seconds: 1),
                        );
                      },
                      about: () {
                        Scrollable.ensureVisible(
                          aboutKey.currentState!.context,
                          duration: const Duration(seconds: 1),
                        );
                      },
                      project: () {
                        Scrollable.ensureVisible(
                          projectKey.currentState!.context,
                          duration: const Duration(seconds: 1),
                        );
                      },
                      skills: () {
                        Scrollable.ensureVisible(
                          skillsKey.currentState!.context,
                          duration: const Duration(seconds: 1),
                        );
                      })
                  : MobileHeader(drawerkey: drawerkey),
              HeroCta(
                key: topkey,
              ),
              const CustomDivider(),
              About(
                key: aboutKey,
              ),
              const CustomDivider(),
              Project(
                key: projectKey,
                project: project,
              ),
              const CustomDivider(),
              Skills(key: skillsKey),
              const CustomDivider(),
              Footer(
                clickOnTop: () {
                  if (Responsive.isDesktop(context)) {
                    Scrollable.ensureVisible(
                      homeKey.currentState!.context,
                      duration: const Duration(seconds: 1),
                    );
                  } else {
                    Scrollable.ensureVisible(
                      topkey.currentState!.context,
                      duration: const Duration(seconds: 1),
                      );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
