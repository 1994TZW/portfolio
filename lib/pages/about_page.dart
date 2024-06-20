import 'package:flutter/material.dart';
import 'package:profolio/widget/local_text.dart';

import '../theme.dart';
import '../widget/item_row.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width - 100,
      child: Row(
        children: [
          SizedBox(
            // height: size.height * 0.6,
            width: size.width / 2 - 100,
            child: Column(
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
                      width: size.width * 0.01,
                    ),
                    Container(
                      width: size.width / 4,
                      height: 1.10,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.07,
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
                SizedBox(
                  height: size.height * 0.15,
                  width: size.width,
                  child: Wrap(
                    children: [
                      SizedBox(
                        width: size.width * 0.20,
                        child: const Column(
                          children: [
                            ItemRow(text: "Dart"),
                            SizedBox(height: 3),
                            ItemRow(text: "Flutter"),
                            SizedBox(height: 3),
                            ItemRow(text: "Firebase"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.15,
                        child: const Column(
                          children: [
                            ItemRow(text: "UI/UX (Figma)"),
                            SizedBox(height: 3),
                            ItemRow(text: "MYSQL"),
                            SizedBox(height: 3),
                            ItemRow(text: "Git - Github"),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: size.height / 1.5,
              width: size.width / 2 - 100,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: size.height * 0.10,
                    left: size.width * 0.110,
                    child: Card(
                      color: secondaryColor,
                      child: Container(
                        margin: const EdgeInsets.all(2.75),
                        height: size.height / 2,
                        width: size.width / 5,
                        color: const Color(0xff0A192F),
                      ),
                    ),
                  ),
                  Container(
                    height: size.height / 2,
                    width: size.width / 5,
                    color: Colors.black54,
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
    );
  }
}
