import 'package:portfoliosite/widgets/all_imports.dart';

class MobileDrawer extends StatelessWidget {
  final GlobalKey? about, project, skill;

  const MobileDrawer({
    Key? key,
    this.about,
    this.project,
    this.skill,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: KWhite,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            onTap: (){
              Scrollable.ensureVisible(
                about!.currentState!.context,
                duration: const Duration(seconds: 1),
              );
            },
            title: const TopMenuItem(
              
            ),
          )
        ],
      ),
    );
  }
}
