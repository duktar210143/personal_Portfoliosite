import 'package:flutter/foundation.dart';
import 'package:portfoliosite/widgets/all_imports.dart';

class UrlLaunch {
  static Future makeEmail(
      {String? email, String? subject, String? body}) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: email,
      query: 'subject=$subject&body=$body',
    );
    if (await canLaunchUrl(params)) {
      await launchUrl(params);
    } else {
      throw 'could not launch ${params.toString()}';
    }
  }

  static Future LaunchinBorwser({String? Url}) async {
    final Uri url0 = Uri.parse(Url!);
    if (await canLaunchUrl(url0)) {
      await launchUrl(
        url0,
        mode: LaunchMode.externalApplication,
        webViewConfiguration: const WebViewConfiguration(
          enableJavaScript: true,
        ),
      );
    } else {
      if (kDebugMode) {
        print('Error ${url0.toString()}');
      }
      throw 'could not launch $url0';
    }
  }
}
