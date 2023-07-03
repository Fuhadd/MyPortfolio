import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/components/spacers.dart';

import '../constants.dart';
import '../models/app_showcase.dart';
import '../style/custom_colors.dart';
import 'custom_button.dart';
import 'enum.dart';

// BuildContext modalContext =
//     locator<NavigationHandler>().navigatorKey.currentContext!;
late Timer timer;

class GenericDialog {
  Future<void> show(
      {String title = "",
      String content = "",
      String? yesButtonText,
      String? noButtonText,
      Widget? showContentIcon,
      TextAlign? contentTextAlign,
      Function()? onYesPressed,
      Function()? onNoPressed,
      required BuildContext context,
      Color? footerColor}) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return Container(
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
          ),
          child: AlertDialog(
            actionsPadding: EdgeInsets.zero,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            contentPadding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 10),
            content: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    verticalSpacer(15),
                    showContentIcon != null
                        ? Column(
                            children: [
                              showContentIcon,
                              verticalSpacer(15),
                            ],
                          )
                        : const SizedBox.shrink(),
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    verticalSpacer(10),
                    Text(
                      content,
                      textAlign: contentTextAlign ?? TextAlign.left,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    verticalSpacer(25),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: footerColor ?? CustomColors.mainBlueColor,
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: Column(
                  children: [
                    verticalSpacer(25),
                    GestureDetector(
                      onTap: onYesPressed ??
                          () {
                            Navigator.pop(context);
                          },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  border: Border.all(),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(25)),
                                  color: CustomColors.whiteColor),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 35, vertical: 6),
                                child: Text(
                                  yesButtonText ?? 'Yes.. Continue',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: CustomColors.blackColor,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )
                          ]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: onNoPressed ??
                              () {
                                Navigator.pop(context);
                              },
                          child: SizedBox(
                              child: Center(
                                  child: Text(noButtonText ?? 'Cancel',
                                      style: const TextStyle(
                                          fontSize: 13,
                                          color: CustomColors.royalPurple,
                                          fontWeight: FontWeight.w500)))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> showSimplePopup(
      {String? title,
      bool showTitle = true,
      String content = "",
      required InfoBoxType type,
      Widget? customIcon,
      Widget? contentBody,
      TextAlign? textAlign,
      String? okText,
      required BuildContext context,
      Function()? onOkPressed,
      Function()? onNoPressed,
      Color? footerColor}) async {
    return showDialog<void>(
      barrierColor: CustomColors.blackColor.withOpacity(0.75),
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return Container(
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
          ),
          child: AlertDialog(
            actionsPadding: EdgeInsets.zero,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            contentPadding:
                const EdgeInsets.only(top: 35, bottom: 25, left: 15, right: 10),
            content: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        customIcon ??
                            Lottie.asset(
                              getAnimationPath(type),
                              height: 80,
                              width: 80,
                              animate: true,
                              repeat: false,
                              reverse: false,
                              fit: BoxFit.contain,
                            ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 40.0),
                            child: Icon(
                              Icons.close_rounded,
                              size: 30,
                            ),
                          ),
                        )
                      ],
                    ),
                    // SvgPicture.asset(
                    //   getNewIconPath(type),
                    //   height: 50,
                    // ),
                    verticalSpacer(15),
                    showTitle
                        ? Flexible(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "Wisper Mobile App",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700,
                                    color: getTypeColor(type)),
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                    SectionTitle(
                      title: "About",
                      subTitle: "Wisper",
                      color: Color(0xFFFFB100),
                    ),
                    verticalSpacer(30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60.0),
                      child: Text(
                        "Wispers is a dynamic mobile app that brings people together, enabling seamless connections, open conversations, and the discovery of new communities. With its intuitive interface and powerful features, Wispers provides a platform for individuals to forge meaningful connections, share their thoughts, and explore a world of diverse communities.\n\nWith Wispers, you can effortlessly join communities based on your interests and passions. Discover a wide range of groups and connect with like-minded individuals who share your enthusiasm. From hobbies and interests to important topics, Wispers offers a space where you can engage in vibrant discussions and explore trending conversations.",
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic,
                          height: 1.5,
                        ),
                      ),
                    ),
                    verticalSpacer(20),
                    SectionTitle(
                      title: "Features",
                      subTitle: "Wisper",
                      color: Color(0xFFFFB100),
                    ),

                    verticalSpacer(30),
                    Wrap(
                      spacing: 30,
                      runSpacing: 40,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: wisperAppShowcases
                          .map((e) => Container(
                                width: 250,
                                child: Column(
                                  children: [
                                    Container(
                                        width: 250,
                                        child: Image.asset(
                                          e.imageUrl,
                                          fit: BoxFit.cover,
                                        )),
                                    verticalSpacer(20),
                                    Text(
                                      e.title,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: CustomColors.blackColor),
                                    ),
                                    verticalSpacer(10),
                                    Text(
                                      e.content,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          height: 1.8,
                                          fontWeight: FontWeight.w600,
                                          color: CustomColors.greyTextColor),
                                    )
                                  ],
                                ),
                              ))
                          .toList(),
                    ),
                    verticalSpacer(15),

                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: contentBody ??
                            Text(
                              content,
                              textAlign: textAlign ?? TextAlign.center,
                              style: const TextStyle(
                                  height: 1.4,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                      ),
                    ),
                    verticalSpacer(40),
                    Container(
                      width: 300,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 30),
                              child: CustomButton(
                                  // height: 38.h,
                                  color: CustomColors.whiteColor,
                                  textcolor: CustomColors.greyBgColor,
                                  borderColor: CustomColors.greyBgColor,
                                  hasBorder: true,
                                  // borderSize: 1,
                                  title: okText ?? "Okay",
                                  onTap: onOkPressed ??
                                      () {
                                        Navigator.pop(context);
                                      }),
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpacer(10)
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
