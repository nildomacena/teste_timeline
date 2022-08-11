/* Fonts Custom Style */
import 'package:flutter/material.dart';

import 'colors.dart';

class StyleText {
  static String fontThin = "Montserrat Thin";
  static String fontLight = "Montserrat Light";
  static String fontRegular = "Montserrat Regular";
  static String fontMedium = "Montserrat Medium";
  static String fontSemiBold = "Montserrat SemiBold";
  static String fontBold = "Montserrat Bold";
  static String fontBlack = "Montserrat Black";

  /* Custom AlertDialog */
  static TextStyle alertTitle = TextStyle(
      fontFamily: StyleText.fontMedium, color: Colors.white, fontSize: 18.0);
  static TextStyle alertMessage = TextStyle(
      fontFamily: StyleText.fontRegular,
      color: StyleColors.colorSecondary,
      fontSize: 16.0);
  static TextStyle alertButton = TextStyle(
      fontFamily: StyleText.fontMedium,
      color: StyleColors.colorSecondary,
      fontSize: 15.0);

  /* Custom Rating Dialog */
  static TextStyle ratingTitle = TextStyle(
      fontFamily: StyleText.fontMedium,
      color: StyleColors.colorComplement1,
      fontSize: 18.0);
  static TextStyle ratingMessage = TextStyle(
      fontFamily: StyleText.fontRegular,
      color: StyleColors.colorComplement1,
      fontSize: 16.0);
  static TextStyle ratingBtAvaliar = TextStyle(
      fontFamily: StyleText.fontMedium,
      color: StyleColors.colorComplement1,
      fontSize: 12.0);
  static TextStyle ratingBtLater = TextStyle(
      fontFamily: StyleText.fontMedium, color: Colors.white, fontSize: 12.0);
  static TextStyle ratingBtNot = TextStyle(
      fontFamily: StyleText.fontMedium,
      color: StyleColors.colorComplement1,
      fontSize: 12.0);

  /* Custom Alert Notification */
  static TextStyle notificationTitle = TextStyle(
      fontFamily: StyleText.fontBold,
      color: StyleColors.colorSecondary,
      fontSize: 15.0);
  static TextStyle notificationTitleGrey = TextStyle(
      fontFamily: StyleText.fontBold,
      color: StyleColors.colorSecondary,
      fontSize: 15.0);
  static TextStyle notificationMessage = TextStyle(
      fontFamily: StyleText.fontRegular,
      color: StyleColors.colorSecondary,
      fontSize: 13.0);
  static TextStyle notificationButton = TextStyle(
      fontFamily: StyleText.fontMedium,
      color: StyleColors.colorSecondary,
      fontSize: 13.0);
  static TextStyle notificationDate = TextStyle(
      fontFamily: StyleText.fontRegular,
      color: StyleColors.colorSecondary,
      fontSize: 13.0);

  /* Custom Start Page */
  static TextStyle btStartSection = TextStyle(
      fontFamily: StyleText.fontMedium, color: Colors.white, fontSize: 16.0);
  static TextStyle btStartSectionInvert = TextStyle(
      fontFamily: StyleText.fontMedium, color: Colors.white, fontSize: 16.0);

  /* Custom Login */
  static TextStyle inputLogin = TextStyle(
    fontFamily: StyleText.fontSemiBold,
    color: StyleColors.colorSecondary,
    fontSize: 17.0,
  );
  static TextStyle inputLoginAlert = TextStyle(
      fontFamily: StyleText.fontMedium,
      color: StyleColors.colorSecondary,
      fontSize: 13.0);
  static TextStyle inputLoginfloatingLabel = TextStyle(
    fontFamily: StyleText.fontBold,
    color: StyleColors.colorSecondary,
    fontSize: 12.0,
  );
  static TextStyle btForgetPassword = TextStyle(
      fontFamily: StyleText.fontBold,
      color: StyleColors.colorPrimary,
      fontSize: 14.0);
  static TextStyle inputLoginBt = TextStyle(
      fontFamily: StyleText.fontSemiBold, color: Colors.white, fontSize: 17.0);

  static TextStyle inputLoginInvert = TextStyle(
      fontFamily: StyleText.fontLight, color: Colors.white, fontSize: 21.0);
  static TextStyle inputLoginAlertInvert = TextStyle(
      fontFamily: StyleText.fontMedium, color: Colors.white, fontSize: 13.0);
  static TextStyle btForgetPasswordInvert = TextStyle(
      fontFamily: StyleText.fontRegular, color: Colors.white, fontSize: 14.0);
  static TextStyle inputLoginfloatingLabelInvert = TextStyle(
    fontFamily: StyleText.fontBold,
    color: Colors.white,
    fontSize: 12.0,
  );

  /* Custom Select Cotas */
  static TextStyle cardTitle = TextStyle(
      fontFamily: StyleText.fontLight,
      color: StyleColors.colorPrimary,
      fontSize: 24.0);
  static TextStyle cardInfoLeft = TextStyle(
      fontFamily: StyleText.fontRegular,
      color: StyleColors.colorSecondary,
      fontSize: 15.0);
  static TextStyle cardInfoRight = TextStyle(
      fontFamily: StyleText.fontBold,
      color: StyleColors.colorSecondary,
      fontSize: 15.0);
  static TextStyle cardWarnRight = TextStyle(
      fontFamily: StyleText.fontBold,
      color: StyleColors.colorSecondary,
      fontSize: 15.0);

  /* BANNER SLIDE */
  static TextStyle titleBannerPrimary = TextStyle(
      fontFamily: StyleText.fontBlack,
      color: StyleColors.colorPrimary,
      fontSize: 24.0);
  static TextStyle titleBannerSecondary = TextStyle(
      fontFamily: StyleText.fontBlack,
      color: StyleColors.colorSecondary,
      fontSize: 24.0);
  static TextStyle subtitleBannerPrimary = TextStyle(
      fontFamily: StyleText.fontSemiBold,
      color: StyleColors.colorPrimary,
      fontSize: 16.0);
  static TextStyle subtitleBannerSecondary = TextStyle(
      fontFamily: StyleText.fontSemiBold,
      color: StyleColors.colorSecondary,
      fontSize: 16.0);
  static TextStyle descriptionBannerPrimary = TextStyle(
      fontFamily: StyleText.fontRegular,
      color: StyleColors.colorPrimary,
      fontSize: 15.0);
  static TextStyle descriptionBannerSecondary = TextStyle(
      fontFamily: StyleText.fontRegular,
      color: StyleColors.colorSecondary,
      fontSize: 15.0);

  /* Custom Menu */
  static TextStyle userName = TextStyle(
      fontFamily: StyleText.fontBold, color: Colors.white, fontSize: 28.0);
  static TextStyle userInfo = TextStyle(
      fontFamily: StyleText.fontRegular, color: Colors.white, fontSize: 14.0);
  static TextStyle titleMenu = TextStyle(
      fontFamily: StyleText.fontBold,
      color: StyleColors.colorSecondary,
      fontSize: 16.0);
  static TextStyle subtitleMenu = TextStyle(
      fontFamily: StyleText.fontRegular,
      color: StyleColors.colorSecondary,
      fontSize: 12.0);
  static TextStyle listMenu = TextStyle(
      fontFamily: StyleText.fontMedium,
      color: StyleColors.colorSecondary,
      fontSize: 14.0);
  static TextStyle listMenuLast = TextStyle(
      fontFamily: StyleText.fontMedium,
      color: StyleColors.colorSecondary,
      fontSize: 15.0);

  /* Custom Pages */
  static TextStyle titlePageAppbar = TextStyle(
      fontFamily: StyleText.fontBold,
      color: StyleColors.colorPrimary,
      fontSize: 20.0);
  static TextStyle titlePage = TextStyle(
      fontFamily: StyleText.fontLight,
      color: StyleColors.colorSecondary,
      fontSize: 25.0);
  static TextStyle subtitlePage = TextStyle(
      fontFamily: StyleText.fontBold,
      color: StyleColors.colorSecondary,
      fontSize: 16.0);
  static TextStyle titlePageBgGray = TextStyle(
      fontFamily: StyleText.fontBold,
      color: StyleColors.colorPrimary,
      fontSize: 25.0);
  static TextStyle subtitlePageBgGray = TextStyle(
      fontFamily: StyleText.fontRegular,
      color: StyleColors.colorSecondary,
      fontSize: 16.0);
  static TextStyle titlePageInvert = TextStyle(
      fontFamily: StyleText.fontBold, color: Colors.white, fontSize: 25.0);
  static TextStyle titlePageColorPrimary = TextStyle(
      fontFamily: StyleText.fontLight,
      color: StyleColors.colorPrimary,
      fontSize: 25.0);
  static TextStyle subtitlePageColorPrimary = TextStyle(
      fontFamily: StyleText.fontBold,
      color: StyleColors.colorPrimary,
      fontSize: 16.0);

  static TextStyle subtitlePageInvert = TextStyle(
      fontFamily: StyleText.fontLight, color: Colors.white, fontSize: 16.0);
  static TextStyle subtitlePageComplement = TextStyle(
      fontFamily: StyleText.fontBold,
      color: StyleColors.colorSecondary,
      fontSize: 18.0);
  static TextStyle subtitlePageComplementLight = TextStyle(
      fontFamily: StyleText.fontLight,
      color: StyleColors.colorSecondary,
      fontSize: 18.0);
  static TextStyle listPage = TextStyle(
      fontFamily: StyleText.fontRegular,
      color: StyleColors.colorSecondary,
      fontSize: 14.0);

  static TextStyle textPage = TextStyle(
      fontFamily: StyleText.fontMedium,
      color: StyleColors.colorSecondary,
      fontSize: 14.0);

  static TextStyle textWarning = TextStyle(
      fontFamily: StyleText.fontMedium, color: Colors.red, fontSize: 14.0);
  static TextStyle textWarningBold = TextStyle(
      fontFamily: StyleText.fontBold, color: Colors.red, fontSize: 14.0);

  static TextStyle textPageParagraph = TextStyle(
      fontFamily: StyleText.fontRegular,
      color: StyleColors.colorSecondary,
      fontSize: 14.0,
      height: 1.5);
  static TextStyle textPageSmall = TextStyle(
      fontFamily: StyleText.fontMedium,
      color: StyleColors.colorSecondary,
      fontSize: 12.0);
  static TextStyle textPageLarge = TextStyle(
      fontFamily: StyleText.fontMedium,
      color: StyleColors.colorSecondary,
      fontSize: 18.0);
  static TextStyle textPageRegular = TextStyle(
      fontFamily: StyleText.fontRegular,
      color: StyleColors.colorSecondary,
      fontSize: 14.0,
      height: 1.5);
  static TextStyle textPageLight = TextStyle(
      fontFamily: StyleText.fontLight,
      color: StyleColors.colorSecondary,
      fontSize: 14.0);
  static TextStyle textPageRegularSmall = TextStyle(
      fontFamily: StyleText.fontRegular,
      color: StyleColors.colorSecondary,
      fontSize: 12.0);
  static TextStyle textPageRegularLarge = TextStyle(
      fontFamily: StyleText.fontRegular,
      color: StyleColors.colorSecondary,
      fontSize: 18.0);
  static TextStyle textPageSmiBold = TextStyle(
      fontFamily: StyleText.fontSemiBold,
      color: StyleColors.colorSecondary,
      fontSize: 14.0);
  static TextStyle textPageBold = TextStyle(
      fontFamily: StyleText.fontBold,
      color: StyleColors.colorSecondary,
      fontSize: 14.0);
  static TextStyle textPageSmallBold = TextStyle(
      fontFamily: StyleText.fontBold,
      color: StyleColors.colorSecondary,
      fontSize: 12.0);
  static TextStyle textPageLargeBold = TextStyle(
      fontFamily: StyleText.fontBold,
      color: StyleColors.colorSecondary,
      fontSize: 18.0);

  static TextStyle textPageLargeGray = TextStyle(
      fontFamily: StyleText.fontMedium,
      color: StyleColors.colorGreyText,
      fontSize: 18.0);
  static TextStyle textPageLargeBoldGray = TextStyle(
      fontFamily: StyleText.fontBold,
      color: StyleColors.colorGreyText,
      fontSize: 18.0);

  static TextStyle textPageColorPrimary = TextStyle(
      fontFamily: StyleText.fontMedium,
      color: StyleColors.colorPrimary,
      fontSize: 14.0);
  static TextStyle textPageColorPrimarySmall = TextStyle(
      fontFamily: StyleText.fontMedium,
      color: StyleColors.colorPrimary,
      fontSize: 12.0);
  static TextStyle textPageColorPrimaryLarge = TextStyle(
      fontFamily: StyleText.fontMedium,
      color: StyleColors.colorPrimary,
      fontSize: 18.0);
  static TextStyle textPageColorPrimaryLargeButton = TextStyle(
      fontFamily: StyleText.fontMedium, color: Colors.white, fontSize: 18.0);
  static TextStyle textPageColorPrimaryRegular = TextStyle(
      fontFamily: StyleText.fontRegular,
      color: StyleColors.colorPrimary,
      fontSize: 14.0,
      height: 1.5);
  static TextStyle textPageColorPrimaryLight = TextStyle(
      fontFamily: StyleText.fontLight,
      color: StyleColors.colorPrimary,
      fontSize: 14.0);
  static TextStyle textPageColorPrimarySmallLight = TextStyle(
      fontFamily: StyleText.fontLight,
      color: StyleColors.colorPrimary,
      fontSize: 12.0);
  static TextStyle textPageColorPrimaryMediumLight = TextStyle(
      fontFamily: StyleText.fontLight,
      color: StyleColors.colorPrimary,
      fontSize: 16.0);
  static TextStyle textPageColorPrimaryLargeLight = TextStyle(
      fontFamily: StyleText.fontLight,
      color: StyleColors.colorPrimary,
      fontSize: 18.0);
  static TextStyle textPageColorPrimaryBold = TextStyle(
      fontFamily: StyleText.fontBold,
      color: StyleColors.colorPrimary,
      fontSize: 14.0);
  static TextStyle textPageColorRedBold = TextStyle(
      fontFamily: StyleText.fontBold, color: Colors.red, fontSize: 14.0);
  static TextStyle textPageColorPrimarySmallBold = TextStyle(
      fontFamily: StyleText.fontBold,
      color: StyleColors.colorPrimary,
      fontSize: 12.0);
  static TextStyle textPageColorPrimaryLargeBold = TextStyle(
      fontFamily: StyleText.fontBold,
      color: StyleColors.colorPrimary,
      fontSize: 18.0);

  static TextStyle textPageColorPrimaryInvert = TextStyle(
      fontFamily: StyleText.fontMedium, color: Colors.white, fontSize: 14.0);
  static TextStyle textPageColorPrimarySmallInvert = TextStyle(
      fontFamily: StyleText.fontMedium, color: Colors.white, fontSize: 12.0);
  static TextStyle textPageColorPrimaryLargeInvert = TextStyle(
      fontFamily: StyleText.fontMedium, color: Colors.white, fontSize: 18.0);

  static TextStyle textPageColorPrimaryLightInvert = TextStyle(
      fontFamily: StyleText.fontLight, color: Colors.white, fontSize: 14.0);
  static TextStyle textPageColorPrimarySmallLightInvert = TextStyle(
      fontFamily: StyleText.fontLight, color: Colors.white, fontSize: 12.0);
  static TextStyle textPageColorPrimaryLargeLightInvert = TextStyle(
      fontFamily: StyleText.fontLight, color: Colors.white, fontSize: 18.0);

  static TextStyle textPageColorPrimaryBoldInvert = TextStyle(
      fontFamily: StyleText.fontBold, color: Colors.white, fontSize: 14.0);
  static TextStyle textPageColorPrimarySmallBoldInvert = TextStyle(
      fontFamily: StyleText.fontBold, color: Colors.white, fontSize: 12.0);
  static TextStyle textPageColorPrimaryLargeBoldInvert = TextStyle(
      fontFamily: StyleText.fontBold, color: Colors.white, fontSize: 18.0);

  static TextStyle textPageColorSecondary = TextStyle(
      fontFamily: StyleText.fontMedium,
      color: StyleColors.colorSecondary,
      fontSize: 14.0);

/* Button Base */
  static TextStyle btColorPrimary = TextStyle(
      fontFamily: StyleText.fontRegular, color: Colors.white, fontSize: 19.0);
  static TextStyle btColorSecondary = TextStyle(
      fontFamily: StyleText.fontRegular, color: Colors.white, fontSize: 19.0);
  static TextStyle btColorThird = TextStyle(
      fontFamily: StyleText.fontRegular,
      color: StyleColors.colorSecondary,
      fontSize: 19.0);
  static TextStyle btColorComplement1 = TextStyle(
      fontFamily: StyleText.fontRegular,
      color: StyleColors.colorComplement1,
      fontSize: 19.0);
  static TextStyle btColorComplement2 = TextStyle(
      fontFamily: StyleText.fontRegular,
      color: StyleColors.colorComplement2,
      fontSize: 19.0);
  static TextStyle btColorComplement3 = TextStyle(
      fontFamily: StyleText.fontRegular,
      color: StyleColors.colorComplement3,
      fontSize: 19.0);

/* Form */
  static TextStyle titleForm = TextStyle(
      fontFamily: StyleText.fontLight,
      color: StyleColors.colorSecondary,
      fontSize: 25.0);
  static TextStyle textInput = TextStyle(
      fontFamily: StyleText.fontMedium,
      color: StyleColors.colorSecondary,
      fontSize: 14.0);
  static TextStyle textInputError = TextStyle(
      fontFamily: StyleText.fontMedium,
      color: StyleColors.colorSecondary,
      fontSize: 12.0);
  static TextStyle textLabel = TextStyle(
      fontFamily: StyleText.fontMedium, color: Colors.black26, fontSize: 14.0);
  static TextStyle textInputInvert = TextStyle(
      fontFamily: StyleText.fontMedium, color: Colors.white, fontSize: 14.0);
  static TextStyle textLabelInvert = TextStyle(
      fontFamily: StyleText.fontMedium, color: Colors.white38, fontSize: 14.0);
  static TextStyle btForm = TextStyle(
      fontFamily: StyleText.fontMedium, color: Colors.white, fontSize: 15.0);
  static TextStyle btFormInvert = TextStyle(
      fontFamily: StyleText.fontMedium,
      color: StyleColors.colorComplement1,
      fontSize: 15.0);

/* Notification Details Page */
  static TextStyle textTitle = TextStyle(
      fontFamily: StyleText.fontMedium,
      color: StyleColors.colorGrey,
      fontSize: 20.0);
  static TextStyle textMessage = TextStyle(
      fontFamily: StyleText.fontRegular,
      color: StyleColors.colorGrey,
      fontSize: 16.0);
  static TextStyle textDataReceived = TextStyle(
      fontFamily: StyleText.fontRegular,
      color: StyleColors.colorGrey,
      fontSize: 12.0);
}
