import 'package:flutter/material.dart';

import '../../../components/section_title.dart';
import '../../../constants.dart';
import '../../../models/Service.dart';
import '../widgets/service_card.dart';

class ServiceTablet extends StatefulWidget {
  const ServiceTablet({Key? key}) : super(key: key);

  @override
  ServiceTabletState createState() => ServiceTabletState();
}

class ServiceTabletState extends State<ServiceTablet> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            color: Color(0xFFFF0000),
            title: "Service Offerings",
            subTitle: "My Strong Arenas",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Wrap(
              spacing: width * 0.03,
              runSpacing: height * 0.05,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              children: services
                  .asMap()
                  .entries
                  .map(
                    (e) => ServiceCard(index: e.key),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );

    // return Container(
    //   padding: EdgeInsets.symmetric(horizontal: width / 8)
    //       .copyWith(bottom: height * 0.2),
    //   child: Column(
    //     children: [
    //       Wrap(
    //         spacing: width * 0.03,
    //         runSpacing: height * 0.05,
    //         alignment: WrapAlignment.start,
    //         crossAxisAlignment: WrapCrossAlignment.start,
    //         children: services
    //             .asMap()
    //             .entries
    //             .map(
    //               (e) => ServiceCard(index: e.key),
    //             )
    //             .toList(),
    //       )
    //     ],
    //   ),
    // );
  }
}
