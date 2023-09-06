import 'package:flutter/foundation.dart';
import 'package:portfoliosite/utils/strings.dart';
import 'package:portfoliosite/utils/url_launch.dart';
import 'package:portfoliosite/widgets/all_imports.dart';

class Footer extends StatefulWidget {
  final void Function()? clickOnTop;
  const Footer({
    Key? key,
    this.clickOnTop,
  }) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isDesktop(context) ? 120 : 20,
          vertical: Responsive.isDesktop(context) ? 50 : 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 50,
            width: 50,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  if (kDebugMode) {
                    print("linked in button is clicked");
                  }
                  UrlLaunch.LaunchinBorwser(Url: linkedIn);
                },
                icon: const FaIcon(
                  FontAwesomeIcons.linkedinIn,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  if (kDebugMode) {
                    print("Twitter button is clicked");
                  }
                  UrlLaunch.LaunchinBorwser(Url: twitter);
                },
                icon: const FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  if (kDebugMode) {
                    print("Email Button clicked");
                  }
                  UrlLaunch.makeEmail(email: emailId, subject: '', body: '');
                },
                icon: const FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.white,
                ),
              )
            ],
          ),
          InkWell(
            onTap: widget.clickOnTop,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black
              ),
              child: const Icon(
                Icons.expand_less,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
