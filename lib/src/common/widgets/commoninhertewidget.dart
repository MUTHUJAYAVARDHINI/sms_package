import 'package:flutter/material.dart';

class CommonInheritedWidget extends StatefulWidget {
  const CommonInheritedWidget({
    super.key,
   
    required this.child,
  });
  
  final Widget child;

  @override
  State<CommonInheritedWidget> createState() => _CommonInheritedWidgetState();
}

class _CommonInheritedWidgetState extends State<CommonInheritedWidget> {
  dynamic selectedValue;
  void onPressed(dynamic value) {
    setState(() {
      selectedValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return UpdateState(
      onPressed: onPressed,
      value: selectedValue,
      child: widget.child,
    );
  }
}

class UpdateState extends InheritedWidget {
  final dynamic value;
  final Widget child;
  final Function(dynamic) onPressed;

  const UpdateState({
    super.key,
    required this.onPressed,
    this.value,
    required this.child,
  }) : super(child: child);

  static UpdateState? of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<UpdateState>());
  }

  @override
  bool updateShouldNotify(UpdateState oldWidget) {
    return true;
    //return value != oldWidget.value;
  }
}
