import 'package:portfoliosite/widgets/all_imports.dart';
import 'package:portfoliosite/widgets/show_details.dart';

class Project extends StatefulWidget {
  final ProjectController project;
  const Project({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.isDesktop(context) ? 120 : 20,
        vertical: Responsive.isDesktop(context) ? 50 : 20,
      ),
      child: Column(
        children: [
          TextBuilder(
            text: 'Project',
            color: KWhite,
            fontweight: FontWeight.w600,
            fontsize: 30,
          ),
          const SizedBox(
            height: 30.0,
          ),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            direction: Axis.horizontal,
            runSpacing: 50,
            spacing: 50,
            children: List.generate(
              widget.project.projectList.length,
              (I) {
                final project = widget.project.projectList[I];
                return ProjectCard(
                  onTap: () {
                    if (Responsive.isMobile(context)) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ProjectDetails(data: project),
                        ),
                      );
                    } else {
                      showDetails(
                        context: context,
                        child: ProjectDetails(data: project),
                      );
                    }
                  },
                  project: project,
                  top: project.top,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
