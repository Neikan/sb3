import 'dart:io';

import 'package:flutter/material.dart';

Brightness getStatusBarBrightness({bool? isDark}) => isDark == true
    ? Platform.isAndroid
        ? Brightness.light
        : Brightness.dark
    : Platform.isAndroid
        ? Brightness.dark
        : Brightness.light;
