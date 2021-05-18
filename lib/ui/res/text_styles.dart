// import 'dart:html';

import 'package:flutter/painting.dart';
import 'package:places/ui/res/colors.dart';

/// Стили текстов

TextStyle _text = const TextStyle(
  fontStyle: FontStyle.normal,
  color: textColorPrimary,
),

//Bold
    textBold = _text.copyWith(fontWeight: FontWeight.bold),

// PLACES
  textCardHead = textBold.copyWith(fontSize: 16.0),
  textCardSecondary = textBold.copyWith(fontSize: 14, color: textColorSecondary),
  textHoverWhite = textBold.copyWith(color: white),

  textDetailsHead = textBold.copyWith(fontSize: 28),
  textDetailsType = textBold.copyWith(fontSize: 16.0),
  textSecondaryRegular16 = _text.copyWith(fontSize: 16, color: textColorSecondary),
  textDetailsText = _text.copyWith(fontSize: 16.0),

  textBtnWhite = _text.copyWith(fontSize: 18, color: white),
  textBtn = _text.copyWith(fontSize: 16),





//Light
    textLight = _text.copyWith(fontWeight: FontWeight.w300),

//Regular
    textRegular = _text.copyWith(fontWeight: FontWeight.normal),
    textRegular16 = textRegular.copyWith(fontSize: 16.0),
    textRegular16Secondary = textRegular16.copyWith(color: textColorSecondary),
    textRegular16Grey = textRegular16.copyWith(color: textColorGrey),

//Medium
    textMedium = _text.copyWith(fontWeight: FontWeight.w500),
    textMedium20 = textMedium.copyWith(fontSize: 20.0);

