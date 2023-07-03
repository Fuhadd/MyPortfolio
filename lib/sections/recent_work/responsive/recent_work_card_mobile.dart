import 'package:flutter/material.dart';
import 'package:web_app/components/enum.dart';
import 'package:web_app/components/generic_dialog.dart';
import 'package:web_app/components/store_utils.dart';
import 'package:web_app/models/RecentWork.dart';

import '../../../constants.dart';

class MobileRecentWorkCard extends StatefulWidget {
  // just press "Command + ."
  const MobileRecentWorkCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  _MobileRecentWorkCardState createState() => _MobileRecentWorkCardState();
}

class _MobileRecentWorkCardState extends State<MobileRecentWorkCard> {
  bool isHover = false;
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0, left: 10, right: 10),
      child: InkWell(
        onTap: () async {
          recentWorks[widget.index].id == 1
              ? StoreUtils.launchAppStore()
              : recentWorks[widget.index].id == 4
                  ? StoreUtils.launchWisperWeb()
                  : recentWorks[widget.index].id == 2
                      ? GenericDialog().showSimplePopup(
                          type: InfoBoxType.information, context: context)
                      : null;
        },
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: 520,
          // width: 540,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Padding(
            padding:
                // recentWorks[widget.index].id == 1
                //     ? const EdgeInsets.all(10.0)
                //     :
                EdgeInsets.zero,
            child: Column(
              children: [
                recentWorks[widget.index].id == 1
                    ? Image.asset(
                        "assets/images/my_investar_copy.png",
                        fit: BoxFit.cover,
                        // fit: recentWorks[widget.index].id == 1 ? BoxFit.cover : null,
                      )
                    : Image.asset(
                        recentWorks[widget.index].image,
                        fit: BoxFit.cover,
                        // fit: recentWorks[widget.index].id == 1 ? BoxFit.cover : null,
                      ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(recentWorks[widget.index].category.toUpperCase()),
                      SizedBox(height: kDefaultPadding / 2),
                      Text(
                        recentWorks[widget.index].title,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(height: 1.5, fontSize: 20),
                      ),
                      SizedBox(height: kDefaultPadding),
                      Wrap(
                        spacing: 5,
                        runSpacing: 5,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: recentWorks[widget.index]
                            .tool
                            .map(
                              (e) => Text('🛠   $e',
                                  style: TextStyle(color: Colors.black)),
                            )
                            .toList(),
                      ),
                      SizedBox(height: kDefaultPadding),
                      MouseRegion(
                        onEnter: (event) {
                          setState(() {
                            isHovered = true;
                          });
                        },
                        onExit: (event) {
                          setState(() {
                            isHovered = false;
                          });
                        },
                        child: InkWell(
                          onTap: () async {
                            recentWorks[widget.index].id == 1
                                ? StoreUtils.launchAppStore()
                                : recentWorks[widget.index].id == 4
                                    ? StoreUtils.launchWisperWeb()
                                    : recentWorks[widget.index].id == 2
                                        ? GenericDialog().showSimplePopup(
                                            type: InfoBoxType.information,
                                            context: context)
                                        : null;
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: isHovered
                                  ? Colors.purple.withOpacity(0.5)
                                  : Colors.transparent,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    recentWorks[widget.index].id == 1
                                        ? "Download"
                                        : recentWorks[widget.index].id == 4
                                            ? "Navigate"
                                            : "View Details",
                                    style: TextStyle(
                                      fontSize: 17,
                                      decoration: TextDecoration.underline,
                                      color: isHovered
                                          ? Colors.white
                                          : Color(0xFFA600FF).withOpacity(0.5),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  recentWorks[widget.index].id == 1 ||
                                          recentWorks[widget.index].id == 4
                                      ? Icon(
                                          Icons.open_in_new,
                                          size: 16,
                                          color: isHovered
                                              ? Colors.white
                                              : Color(0xFFA600FF)
                                                  .withOpacity(0.5),
                                        )
                                      : SizedBox.shrink(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )

                      // Row(
                      //     children: [
                      //       Text(
                      //         "Download",
                      //         style: TextStyle(
                      //           fontSize: 18,
                      //           decoration: TextDecoration.underline,
                      //           color: Color(0xFFA600FF).withOpacity(0.5),
                      //         ),
                      //       ),
                      //       SizedBox(
                      //         width: 3,
                      //       ),
                      //       Icon(
                      //         Icons.open_in_new,
                      //         size: 16,
                      //         color: Color(0xFFA600FF).withOpacity(0.5),
                      //       )
                      //     ],
                      //   )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
