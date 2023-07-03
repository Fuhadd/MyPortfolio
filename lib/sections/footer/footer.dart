import 'package:flutter/material.dart';

import '../../components/store_utils.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.07,
      width: width,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Developed by "),
            InkWell(
              onTap: () => StoreUtils.launchWeb(
                  "https://www.linkedin.com/in/fuhad-aminu-613285165/"),
              child: const Text(
                " Aminu Fuhad 💙",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(" © 2023"),
          ],
        ),
      ),
    );
  }
}
