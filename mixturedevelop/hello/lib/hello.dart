import 'dart:async';

import 'package:flutter/services.dart';

//可以使用命令 flutter create --template=plugin -i swift -a kotlin hello指定开发语言
//检查包有没有问题：pub publish --dry-run
//发布 flutter packages pub publish
class Hello {
  static const MethodChannel _channel =
      const MethodChannel('hello');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
