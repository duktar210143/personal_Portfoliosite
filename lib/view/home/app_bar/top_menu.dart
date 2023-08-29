import 'package:portfoliosite/widgets/all_imports.dart';
import 'package:portfoliosite/widgets/app_bar_item.dart';

class TopMenu extends StatefulWidget {
  final Function()? home;
  final Function()? about;
  final Function()? project;
  final Function()? skills;
  final Function()? blogs;

  const TopMenu(
      {Key? key, this.home, this.about, this.project, this.skills, this.blogs})
      : super(key: key);

  @override
  State<TopMenu> createState() => _TopMenuState();
}

class _TopMenuState extends State<TopMenu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 90,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isDesktop(context) ? 120 : 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: widget.home,
            child: Row(
              children: [
                const CircleAvatar(
                  radius:
                      40, // Adjust the radius to control the size of the circular image
                  backgroundImage: AssetImage('icons/logo.jpg'),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                TextBuilder(
                  text: 'Duktar Tamang',
                  fontsize: 26,
                  textAlign: TextAlign.left,
                  fontweight: FontWeight.w600,
                  color: KBlack,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TopMenuItem(
                title: "About me",
                onTap: widget.about,
              ),
              TopMenuItem(
                title: "Project",
                onTap: widget.project,
              ),
              TopMenuItem(
                title: "skills",
                onTap: widget.skills,
              ),
              TopMenuItem(
                title: "Blogs",
                onTap: widget.blogs,
              ),
              const SizedBox(
                width: 10.0,
              ),
              // InkWell(
              //   onTap: (){
              //     Urllaunch
              //   },
              // )
            ],
          )
        ],
      ),
    );
  }
}
