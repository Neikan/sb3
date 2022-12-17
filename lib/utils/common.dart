import 'dart:io';

import 'package:flutter/material.dart';

Brightness getStatusBarBrightness() =>
    Platform.isAndroid ? Brightness.dark : Brightness.light;
