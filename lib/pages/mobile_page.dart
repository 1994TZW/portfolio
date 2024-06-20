import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profolio/theme.dart';
import 'package:profolio/vo/experience.dart';
import 'package:provider/provider.dart';

import '../model/experience_model.dart';
import '../widget/expandable_text.dart';
import '../widget/item_row.dart';
import '../widget/local_text.dart';
import '../widget/method.dart' as method;
import '../widget/method.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    var model = Provider.of<ExperienceModel>(context);

    return Scaffold(
      backgroundColor: primaryColor,
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
            SizedBox(height: size.height * 0.02),
            const LocalText(
              text: "Thinzar Win.",
              textsize: 52.0,
              color: titleColor,
              fontWeight: FontWeight.w900,
            ),
            SizedBox(height: size.height * 0.04),
            LocalText(
              text: "I build things for the Android, IOS and web.",
              textsize: 42.0,
              color: titleColor.withOpacity(0.6),
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: size.height * 0.04,
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
            SizedBox(height: size.height * 0.06),

            // about panel
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const LocalText(
                      text: "About Me",
                      textsize: 26.0,
                      color: titleColor,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Container(
                      width: size.width / 4,
                      height: 1.10,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Wrap(
                  children: [
                    LocalText(
                      text:
                          "Hello! I'm Thinzar.\n\nI enjoy creating things that live on the internet, whether that be applications, websites, or anything in between. My goal is to always build products that provide perfect, performant experiences.\n\n",
                      textsize: 16.0,
                      color: textColor,
                      letterSpacing: 0.75,
                    ),
                    LocalText(
                      text:
                          "I have been gratuated  Bachlor's degree in Computter science, and attented the advanced web development course (Web Design and PHP Web Development) at ICTTI, under the Ministry of Education and Japan International Cooperation Agency(JICA). I am attending Google UX Design Professional Certificate Course (passed 3 courses and studying next courses).\n\n",
                      textsize: 16.0,
                      color: textColor,
                      letterSpacing: 0.75,
                    ),
                    LocalText(
                      text:
                          "Here are a few technologies I've been working with recently:\n\n",
                      textsize: 16.0,
                      color: textColor,
                      letterSpacing: 0.75,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ItemRow(text: "Dart"),
                        SizedBox(height: 3),
                        ItemRow(text: "Flutter"),
                        SizedBox(height: 3),
                        ItemRow(text: "Firebase"),
                      ],
                    ),
                    SizedBox(width: size.height / 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ItemRow(text: "UI/UX (Figma)"),
                        SizedBox(height: 3),
                        ItemRow(text: "MYSQL"),
                        SizedBox(height: 3),
                        ItemRow(text: "Git - Github"),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.08,
                ),
                Center(
                  child: SizedBox(
                    height: size.height * 0.6,
                    width: size.width * 0.7,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 50,
                          right: 20,
                          left: 50.0,
                          child: Card(
                            color: secondaryColor,
                            child: Container(
                              margin: const EdgeInsets.all(2.75),
                              height: size.height * 0.45,
                              width: size.width * 0.66,
                              color: const Color(0xff0A192F),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.5,
                          width: size.width * 0.6,
                          child: const Image(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/p1.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // for experiences
            Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const LocalText(
                    text: "My Noteworthy Projects",
                    textsize: 26.0,
                    color: titleColor,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    width: size.width / 4,
                    height: 1.10,
                    color: Colors.grey.withOpacity(0.4),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                  children: model.erperiences
                      .map((e) => experienceRow(context, e))
                      .toList())
            ]),

            const SizedBox(height: 50),
            // for contact
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        "https://www.linkedin.com/in/thin-zar-win-5859b6247/");
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
              ],
            ),
            const SizedBox(height: 30),
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
            const SizedBox(height: 70)
          ],
        ),
      ),
    );
  }

  Widget experienceRow(BuildContext context, Experience e) {
    return Container(
      padding: const EdgeInsets.only(left: 3, right: 3, top: 30, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            fit: BoxFit.cover,
            image: AssetImage(e.photo),
          ),
          const SizedBox(height: 35),
          LocalText(
            text: e.title,
            textsize: 22.0,
            color: titleColor,
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 20),
          ExpandableText(text: e.desc, max: 0.4),
          const SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      "Stack :",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: secondaryColor.withOpacity(0.6),
                        letterSpacing: 0.75,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: Row(children: e.stacks.asMap().entries.map((s) => Padding(
                        padding: const EdgeInsets.only(left: 2,right: 2),
                        child: Text("${s.value} ${(e.stacks.length-1)> s.key?',':''}",style: TextStyle(
                          fontSize: 16.0,
                          color: textColor,
                          letterSpacing: 0.75,
                        ),),
                      )).toList())                    )
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      "Tools :",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: secondaryColor.withOpacity(0.6),
                        letterSpacing: 0.75,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: Row(children: e.tools.asMap().entries.map((s) => Padding(
                        padding: const EdgeInsets.only(left: 2,right: 2),
                        child: Text("${s.value} ${(e.tools.length-1)> s.key?',':''}",style: TextStyle(
                          fontSize: 16.0,
                          color: textColor,
                          letterSpacing: 0.75,
                        ),),
                      )).toList())                    )
                  ],
                )
        ],
      ),
    );
  }
}
