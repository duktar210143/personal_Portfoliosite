import 'package:portfoliosite/widgets/all_imports.dart';

class ProjectCard extends StatelessWidget {
  final Function() onTap;
  final ProjectModel? project;
  final bool? top;
  const ProjectCard({
    Key? key,
    this.top,
    this.project,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2, bottom: 2),
      child: Stack(
        children: [
          SizedBox(
            width: 500,
            child: Card(
              color: KWhite,
              margin: EdgeInsets.zero,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(Responsive.isDesktop(context)?25.0:15.0),
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextBuilder(
                        text: project!.title,
                        color: KBlack,
                        fontsize: 22,
                        fontweight: FontWeight.w600,
                        ),
                        const SizedBox(height: 30,),
                        TextBuilder(
                          text: project!.description,
                          color: KBlack,
                          height: 1.5,
                          maxlines: 5,
                          textOverflow: TextOverflow.ellipsis,
                          )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 5,
            top: 10,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(color: top==true?KBlack:Colors.transparent,shape: BoxShape.circle),
              child: Center(
                child: TextBuilder(
                  text: top==true?'Top':'',
                  color: KWhite,
                  fontsize: 16,
                  fontweight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
