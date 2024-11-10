import 'package:flutter/material.dart';

class UserInheritedWidget extends InheritedWidget {
  final String name;
  final String email;
  final String registrationDate;

  const UserInheritedWidget({
    super.key,
    required super.child,
    required this.name,
    required this.email,
    required this.registrationDate,
  });

  static UserInheritedWidget of(BuildContext context) {
    final UserInheritedWidget? result =
    context.dependOnInheritedWidgetOfExactType<UserInheritedWidget>();
    assert(result != null, 'No UserInheritedWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant UserInheritedWidget oldWidget) {
    return name != oldWidget.name ||
        email != oldWidget.email ||
        registrationDate != oldWidget.registrationDate;
  }
}
