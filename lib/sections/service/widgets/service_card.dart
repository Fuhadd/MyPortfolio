import 'package:flutter/material.dart';
import 'package:web_app/models/Service.dart';
import 'package:web_app/theme/app_theme.dart';

import '../../../constants.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    Color textColor = Theme.of(context).textColor;
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        height: 350,
        width: 300,
        decoration: BoxDecoration(
          color: services(context)[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (isHover) isDark ? kDarkCardShadow : kDefaultCardShadow
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: duration,
                padding: EdgeInsets.all(kDefaultPadding * 1.5),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: isDark ? Colors.black : Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    if (!isHover)
                      BoxShadow(
                        offset: Offset(0, 20),
                        blurRadius: 30,
                        color: isDark
                            ? Colors.grey.withOpacity(0.1)
                            : Colors.black.withOpacity(0.1),
                      ),
                  ],
                ),
                child: Image.asset(
                  services(context)[widget.index].image,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Text(
                services(context)[widget.index].title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: kDefaultPadding),
              Text(
                services(context)[widget.index].content,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: kDefaultPadding),
              SizedBox(height: kDefaultPadding),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: services(context)[widget.index]
                      .tool
                      .map((e) => Row(
                            children: [
                              const Text('🛠   '),
                              Text(e, style: TextStyle(color: textColor)),
                            ],
                          ))
                      .toList()),
            ],
          ),
        ),
      ),
    );
  }
}
