import 'package:flutter/material.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';

import '../../../models/Service.dart';
import 'service_card.dart';

class ServiceSection2 extends StatelessWidget {
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
          Wrap(
            spacing: width * 0.03,
            runSpacing: height * 0.05,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: services(context)
                .asMap()
                .entries
                .map(
                  (e) => ServiceCard(index: e.key),
                )
                .toList(),
          ),
          // CarouselSlider.builder(
          //   itemCount: services.length,
          //   itemBuilder: (BuildContext context, int itemIndex, int i) =>
          //       Padding(
          //     padding: EdgeInsets.symmetric(vertical: 0.5),
          //     // child: _ServiceCard(service: services[i]),
          //     child: ServiceCardNew(),
          //     // child: ServiceCard(index: i),
          //   ),
          //   options: CarouselOptions(
          //     viewportFraction: 0.6,
          //     height: 300,
          //     autoPlay: true,
          //     autoPlayInterval: const Duration(seconds: 5),
          //     enlargeCenterPage: true,
          //     autoPlayCurve: Curves.fastOutSlowIn,
          //     autoPlayAnimationDuration: const Duration(milliseconds: 800),
          //     enableInfiniteScroll: false,
          //   ),
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: List.generate(
          //       services.length, (index) => ServiceCard(index: index)),
          // )
        ],
      ),
    );
  }
}
