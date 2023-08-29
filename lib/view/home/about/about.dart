import 'package:flutter_svg/svg.dart';
import 'package:portfoliosite/utils/strings.dart';
import 'package:portfoliosite/widgets/all_imports.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: Responsive.isDesktop(context) ? 450 : null,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
            horizontal: Responsive.isDesktop(context) ? 120 : 20),
        child: Responsive.isDesktop(context)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.all(20),
                      child: SvgPicture.asset(
                        'icons/coding.svg',
                        height: 200,
                        width: 200,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextBuilder(
                          text: "About me",
                          color: KBlack,
                          fontweight: FontWeight.w600,
                          fontsize: 30,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextBuilder(
                          text: about,
                          color: kGreyShade,
                          fontweight: FontWeight.w400,
                          fontsize: 14,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(20),
                    child: SvgPicture.asset(
                      'icons/coding.svg',
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextBuilder(
                        text: "About me",
                        color: KBlack,
                        fontweight: FontWeight.w600,
                        fontsize: 30,
                      ),
                      const SizedBox(
                          height: 10.0,
                        ),
                        TextBuilder(
                          text: about,
                          color:  Colors.white,
                          fontweight: FontWeight.w400,
                          fontsize: 14,
                        ),
                    ],
                  )
                ],
              ));
  }
}
