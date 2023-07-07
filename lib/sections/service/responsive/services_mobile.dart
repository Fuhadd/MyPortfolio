import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../components/section_title.dart';
import '../../../models/Service.dart';
import '../widgets/service_card.dart';

class ServiceMobile extends StatelessWidget {
  const ServiceMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        SectionTitle(
          color: Color(0xFFFF0000),
          title: "Service Offerings",
          subTitle: "My Strong Arenas",
        ),
        CarouselSlider.builder(
          itemCount: services(context).length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: EdgeInsets.symmetric(vertical: 0.5),
            child: ServiceCard(
              index: i,
            ),
          ),
          options: CarouselOptions(
            // viewportFraction: 0.6,
            // aspectRatio: 2.1,
            height: 450,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        )
      ],
    );
  }
}
