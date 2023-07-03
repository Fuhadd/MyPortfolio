import 'package:flutter/material.dart';

import '../style/custom_colors.dart';

enum ResponsiveEnum { Desktop, Mobile, Tablet }

enum CommunityStatus { pendingAprroval, approved, rejected }

enum InfoBoxType {
  success,
  error,
  confirmation,
  warning,
  information,
  question
}

String getIconPath(InfoBoxType type) {
  switch (type) {
    case InfoBoxType.success:
      return "assets/icons/icon_check.svg";
    case InfoBoxType.error:
      return "assets/icons/icon_error.svg";
    case InfoBoxType.warning:
      return "assets/icons/icon_warning.svg";
    case InfoBoxType.confirmation:
      return "assets/icons/icon_question.svg";

    default:
      return "assets/icons/icon_dialog.svg";
  }
}

String getNewIconPath(InfoBoxType type) {
  switch (type) {
    case InfoBoxType.success:
      return "assets/icons/icon_check_outline.svg";
    case InfoBoxType.error:
      return "assets/icons/icon_error_outline.svg";
    case InfoBoxType.warning:
      return "assets/icons/icon_warning_outline.svg";
    case InfoBoxType.information:
      return "assets/icons/icon_info_outline.svg";
    case InfoBoxType.question:
      return "assets/icons/icon_question_outline.svg";
    default:
      return "assets/icons/icon_dialog.svg";
  }
}

Color getTypeColor(InfoBoxType type) {
  switch (type) {
    case InfoBoxType.success:
      return CustomColors.greenBgColor;
    case InfoBoxType.error:
      return CustomColors.redBgColor;
    case InfoBoxType.warning:
      return CustomColors.warningBgColor;
    case InfoBoxType.confirmation:
      return CustomColors.greenBgColor;
    case InfoBoxType.information:
      return CustomColors.primaryAccentColor;
    default:
      return CustomColors.greenBgColor;
  }
}

String getAnimationPath(InfoBoxType type) {
  switch (type) {
    case InfoBoxType.success:
      return "assets/animations/success_animation.json";
    case InfoBoxType.error:
      return "assets/animations/error_animation.json";
    case InfoBoxType.warning:
      return "assets/animations/warning_animation.json";
    case InfoBoxType.information:
      return "assets/animations/info_animation.json";
    case InfoBoxType.question:
      return "assets/animations/success_animation.json";
    default:
      return "assets/animations/success_animation.json";
  }
}
