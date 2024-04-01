import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'name.g.dart';

@riverpod
class Name extends _$Name {
  @override
  String build() {
    return '';
  }

  void changeName(String name) {
    state = name;
  }
}
