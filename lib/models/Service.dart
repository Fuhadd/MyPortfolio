import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, content, image;
  final List<String> tool;
  final Color color;

  Service(
      {required this.id,
      required this.title,
      required this.content,
      required this.image,
      required this.tool,
      required this.color});
}

// For demo list of service
List<Service> services(context) => [
      Service(
        id: 1,
        title: "Android App Development",
        content:
            "Are you interested in great mobile app? Let's make it a reality",
        image: "assets/images/graphic.png",
        // color: Color(0xFFD9FFFC),  white
        color: Theme.of(context).brightness == Brightness.dark
            ? Color(0xFF005049)
            : Color(0xFFD9FFFC),
        // color: Color(0xFF00635B),

        tool: [
          'Flutter',
        ],
      ),
      Service(
        id: 2,
        title: "IOS App Development",
        content:
            "Are you interested in great mobile app? Let's make it a reality",
        image: "assets/images/desktop.png",
        // color: Color(0xFFE4FFC7),
        // color: Color(0xFF444C3B),
        color: Theme.of(context).brightness == Brightness.dark
            ? Color(0xFF444C3B)
            : Color(0xFFE4FFC7),
        tool: ['Flutter', 'Swift'],
      ),
      Service(
        id: 3,
        title: "Backend development",
        image: "assets/images/ui.png",
        content:
            "Let me create, maintain, test and debug the entire backend of your application",
        // color: Color(0xFFFFF3DD),
        // color: Color(0xFF2C1D00),
        // color: Color(0xFF402900),
        color: Theme.of(context).brightness == Brightness.dark
            ? Color(0xFF402900)
            : Color(0xFFFFF3DD),

        tool: ['C# Asp.NET'],
      ),
      // Service(
      //   id: 4,
      //   title: "Interaction Design",
      //   image: "assets/images/Intreaction_design.png",
      //   color: Color(0xFFFFE0E0),
      //   tool: ['Flutter', 'React Native', 'Android (Kotlin or Java)'],
      // ),
    ];
