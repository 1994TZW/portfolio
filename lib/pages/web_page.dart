import 'package:flutter/material.dart';
import 'package:profolio/theme.dart';
import '../widget/local_text.dart';
import '../widget/method.dart';
import 'about_page.dart';
import 'experience_page.dart';
import '../widget/method.dart' as method;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WebPage extends StatelessWidget {
  const WebPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: primaryColor,
        body: Row(
          children: [
            SizedBox(
              width: size.width * 0.09,
              height: size.height - 82,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      splashRadius: 25,
                      icon: const Icon(FontAwesomeIcons.github),
                      color: iconColor,
                      iconSize: 16.0,
                      onPressed: () {
                        method.launchURL(
                            ContactType.github, "https://github.com/1994TZW");
                      }),
                  const SizedBox(height: 10),
                  IconButton(
                    splashRadius: 25,
                    icon: const Icon(FontAwesomeIcons.linkedin),
                    color: iconColor,
                    onPressed: () {
                      method.launchURL(ContactType.linkedin,
                          "https://www.linkedin.com/in/thinzar-win-5859b6247");
                    },
                    iconSize: 16.0,
                  ),
                  const SizedBox(height: 10),
                  IconButton(
                      splashRadius: 25,
                      icon: const Icon(FontAwesomeIcons.facebook),
                      color: iconColor,
                      iconSize: 16.0,
                      onPressed: () {
                        method.launchURL(ContactType.facebook,
                            "https://www.facebook.com/thinzar.win.3990?mibextid=ZbWKwL");
                      }),
                  const SizedBox(height: 10),
                  IconButton(
                      splashRadius: 25,
                      icon: const Icon(Icons.call),
                      color: iconColor,
                      iconSize: 16.0,
                      onPressed: () {
                        method.launchURL(ContactType.phone, "+959254506208");
                      }),
                  const SizedBox(height: 10),
                  IconButton(
                      splashRadius: 25,
                      icon: const Icon(Icons.mail),
                      color: iconColor,
                      iconSize: 16.0,
                      onPressed: () {
                        method.launchURL(
                            ContactType.email, "thinzarwin122@gmail.com");
                      }),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Container(
                      height: size.height * 0.20,
                      width: 2,
                      color: lineColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ScrollConfiguration(
                behavior: const ScrollBehavior().copyWith(overscroll: false),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height * .06,
                      ),
                      const LocalText(
                        text: "Hi, my name is",
                        textsize: 16.0,
                        color: secondaryColor,
                        letterSpacing: 3.0,
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const LocalText(
                        text: "Thinzar Win.",
                        textsize: 68.0,
                        color: titleColor,
                        fontWeight: FontWeight.w900,
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      LocalText(
                        text: "I build things for the Android, IOS and web.",
                        textsize: 56.0,
                        color: titleColor.withOpacity(0.6),
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        height: size.height * .04,
                      ),
                      Wrap(
                        children: [
                          Text(
                            "I'm a software engineer specializing in \nbuilding (and occasionally designing) exceptional applications, \nwebsites, and everything in between.",
                            style: TextStyle(
                              color: textColor,
                              fontSize: 16.0,
                              letterSpacing: 2.75,
                              wordSpacing: 0.75,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: size.height * .12),
                      const AboutPage(),
                      SizedBox(height: size.height * .07),
                      const ExperiencePage(),
                      Center(
                          child: Text(
                        "©2022 Thinzar Win. All Rights Reserved.",
                        style: TextStyle(
                          color: textColor,
                          fontSize: 16.0,
                          letterSpacing: 2.75,
                          wordSpacing: 0.75,
                        ),
                      )),
                      const SizedBox(height: 50)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.07,
              height: MediaQuery.of(context).size.height - 82,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RotatedBox(
                    quarterTurns: 45,
                    child: Text(
                      "thinzarwin122@gmail.com",
                      style: TextStyle(
                        color: textColor,
                        letterSpacing: 3.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Container(
                      height: 100,
                      width: 2,
                      color: lineColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
