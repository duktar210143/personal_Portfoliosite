import 'package:flutter/material.dart';
import 'package:portfoliosite/utils/strings.dart';
import 'package:portfoliosite/utils/url_launch.dart';
import 'package:portfoliosite/widgets/all_imports.dart';

class HeroCta extends StatefulWidget {
  const HeroCta({
    Key? key,
  }) : super(key: key);

  @override
  State<HeroCta> createState() => _HeroCtaState();
}

class _HeroCtaState extends State<HeroCta> {
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
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextBuilder(
                        text: "Hello, I'm",
                        color: kGreyShade,
                        fontsize: 20,
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      TextBuilder(
                        text: "Duktar",
                        color: kGreyShade,
                        fontsize: 35,
                        textAlign: TextAlign.left,
                        fontweight: FontWeight.w900,
                        letterSpacing: 1.5,
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      TextBuilder(
                        text: "Flutter Developer",
                        color: kGreyShade,
                        fontsize: 22,
                        fontweight: FontWeight.w600,
                        letterSpacing: 1.5,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      CustomButton(
                        title: 'Email',
                        icon: FontAwesomeIcons.envelope,
                        onTap: () {
                          UrlLaunch.makeEmail(
                              body: 'hello ,',
                              email: emailId,
                              subject: 'Hello,I need help');
                        },
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 6,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 250,
                        backgroundImage: AssetImage('assets/images/profile.jpg'),
                      ),
                    ),
                  ),
                )
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextBuilder(
                      text: "Hello, I'm",
                      color: Colors.white,
                      fontsize: 14,
                    ),
                    TextBuilder(
                      text: "Duktar",
                      color: Colors.white,
                      fontsize: 30,
                      textAlign: TextAlign.left,
                      fontweight: FontWeight.w900,
                      letterSpacing: 1.5,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    TextBuilder(
                      text: "Flutter Developer",
                      color: Colors.white,
                      fontsize: 17,
                      fontweight: FontWeight.w600,
                      letterSpacing: 1.5,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                      CustomButton(
                        title: 'Email',
                        icon: FontAwesomeIcons.envelope,
                        onTap: (){
                          UrlLaunch.makeEmail(
                              body: 'hello ,',
                              email: emailId,
                              subject: 'Hello,I need help');
                        },
                      ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: CircleAvatar(
                      backgroundColor: Colors.black12,
                      radius: 100,
                        backgroundImage: AssetImage('assets/images/profile.jpg'),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
