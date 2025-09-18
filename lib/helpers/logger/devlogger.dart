import 'dart:developer';

import 'package:flutter/foundation.dart';

void devLog(String message, String? title) {
  if (kDebugMode) {
    log(message, name: title ?? "", time: DateTime.now());
  }
}
