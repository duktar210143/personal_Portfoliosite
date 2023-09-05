import 'package:portfoliosite/utils/strings.dart';
import 'package:portfoliosite/widgets/all_imports.dart';

enum ButtonType { github }

enum ButtonShape { circle, rect }

class ActionButton extends StatefulWidget {
  final ButtonType buttonType;
  final ButtonShape buttonShape;
  final Function()? onTAp;
  const ActionButton({
    Key? key,
    this.onTAp,
    required this.buttonType,
    required this.buttonShape,
  });

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  setIcons(ButtonType type) {
    switch (type) {
      case ButtonType.github:
        return githubIcon;
    }
  }

  setShape(ButtonShape buttonShape) {
    switch (buttonShape) {
      case ButtonShape.circle:
        return Image.asset(
          setIcons(widget.buttonType),
          height: 70,
          width: 70,
        );
      default:
        return Image.asset(
          setIcons(widget.buttonType),
          width: 120,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTAp,
      child: setShape(widget.buttonShape),
    );
  }
}
