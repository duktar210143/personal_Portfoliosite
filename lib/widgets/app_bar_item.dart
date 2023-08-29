import 'package:portfoliosite/widgets/all_imports.dart';

class TopMenuItem extends StatefulWidget {
  final String? title;
  final Function()? onTap;
  final double? fontsize;

  const TopMenuItem({
    Key? key,
    this.title,
    this.onTap,
    this.fontsize = 14,
  }) : super(key: key);

  @override
  State<TopMenuItem> createState() => _TopMenuItemState();
}

class _TopMenuItemState extends State<TopMenuItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child:Container(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 14),
          decoration: BoxDecoration(
            color: KWhite,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const[
              BoxShadow(
                color: Colors.black,
                offset: Offset(1, 1),
              )
            ]
          ),
          child: TextBuilder(
            text: widget.title,
            textAlign: TextAlign.center,
            fontsize: 16,
            fontweight: FontWeight.w400,
            color: Colors.white,
          ),
        )
      ),
    );
  }
}
