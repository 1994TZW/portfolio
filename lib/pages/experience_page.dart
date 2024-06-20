import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/experience_model.dart';
import '../theme.dart';
import '../vo/experience.dart';
import '../widget/local_text.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var model = Provider.of<ExperienceModel>(context);
    return Column(children: [
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
            width: size.width * 0.01,
          ),
          Container(
            width: size.width / 4,
            height: 1.10,
            color: Colors.grey.withOpacity(0.4),
          ),
        ],
      ),
      Column(
          children:
              model.erperiences.map((e) => experienceRow(context, e)).toList())
    ]);
  }

  Widget experienceRow(BuildContext context, Experience e) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            height: size.height * 0.60,
            width: size.width * 0.5,
            fit: BoxFit.cover,
            image: AssetImage(e.photo),
          ),
          const SizedBox(width: 30),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LocalText(
                  text: e.title,
                  textsize: 22.0,
                  color: titleColor,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(height: 30),
                LocalText(
                  text: e.desc,
                  textsize: 16.0,
                  color: textColor,
                  letterSpacing: 0.75,
                ),
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
          )
        ],
      ),
    );
  }
}
