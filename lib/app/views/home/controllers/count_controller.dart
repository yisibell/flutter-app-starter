import 'package:get/get.dart';

/// 状态类
/// 用于声明各种数据状态
class CounterState {
  num count = 0;

  CounterState({this.count = 0});
}

/// 状态观察者
/// 使得状态类是可响应的
final counterObserver = CounterState().obs;

/// 控制器
/// 用于状态的变更操作
class CounterController {
  /// 计数递增
  static void increment() {
    counterObserver.update((counter) {
      counter?.count++;
    });
  }
}
