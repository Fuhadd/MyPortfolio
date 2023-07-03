import 'package:flutter/material.dart';

import '../../../color/colors.dart';
import '../../../responsive/responsive.dart';

class ServiceCardNew extends StatefulWidget {
  // final Services service;

  const ServiceCardNew({
    Key? key,
    // required this.service
  }) : super(key: key);

  @override
  ServiceCardNewState createState() => ServiceCardNewState();
}

class ServiceCardNewState extends State<ServiceCardNew> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      onHover: (isHovering) {
        if (isHovering) {
          setState(() => isHover = true);
        } else {
          setState(() => isHover = false);
        }
      },
      child: Container(
        width: Responsive.isTablet(context) ? 400 : 300,
        // height: AppDimensions.normalize(100),
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        decoration: BoxDecoration(
          // gradient: isHover ? pinkpurple : grayBack,
          gradient: isHover ? pinkpurple : null,
          borderRadius: BorderRadius.circular(15),
          boxShadow: isHover ? [primaryColorShadow] : [blackColorShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SvgPicture.asset(
            //   widget.service.icon,
            //   height: 60,
            // ),
            SizedBox(
              width: 5,
            ),
            Text("widget.service",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isHover ? whiteColor : Colors.black,
                )),
            Text(
              "widget.service.description",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isHover ? whiteColor.withOpacity(0.8) : Colors.black,
                fontWeight: FontWeight.w200,
                fontSize: 13,
              ),
            ),
            if (Responsive.isDesktop(context))
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(
                  children: [
                    const Text('🛠   '),
                    Text("Flutter"),
                  ],
                ),
              ]

                  // widget.service.tool
                  //     .map((e) => Row(
                  //           children: [
                  //             const Text('🛠   '),
                  //             Text(e,
                  //                 style: TextStyle(
                  //                   color:
                  //                       isHover ? whiteColor : theme.textColor,
                  //                 )),
                  //           ],
                  //         ))
                  //     .toList()

                  ),
            if (Responsive.isMobile(context) || Responsive.isTablet(context))
              Expanded(
                child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    children: [
                      Row(
                        children: [
                          const Text('🛠   '),
                          Text("Flutter",
                              style: TextStyle(
                                color: isHover ? whiteColor : Colors.black,
                              )),
                        ],
                      ),
                    ]

                    //  widget.service.tool
                    //     .map((e) => Row(
                    //           children: [
                    //             const Text('🛠   '),
                    //             Text(e,
                    //                 style: TextStyle(
                    //                   color: isHover
                    //                       ? whiteColor
                    //                       : theme.textColor,
                    //                 )),
                    //           ],
                    //         ))
                    //     .toList()

                    ),
              )
          ],
        ),
      ),
    );
  }
}
