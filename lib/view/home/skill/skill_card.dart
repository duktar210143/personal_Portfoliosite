import 'package:portfoliosite/widgets/all_imports.dart';

class SkillCard extends StatefulWidget {
  final String? icons, title;
  const SkillCard({
    Key? key,
    @required this.icons,
    @required this.title,
  }) : super(key: key);

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  bool _current = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (enter){
        setState(() {
          _current = true;
        },
        );
      },
      onExit: (exit){
        setState(() {
          _current = false;
        });
      },
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: _current? Colors.black : Colors.transparent,
                style: BorderStyle.solid,
                width: 5,
              )
            )
          ),
          child: Image.asset(
            widget.icons!,
            height: 40,
            width: 40,
          ),
        ),
      ),
    );
  }
}
