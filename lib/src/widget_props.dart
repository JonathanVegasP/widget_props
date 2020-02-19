import 'package:flutter/material.dart';

extension WidgetProps on Widget {
  Widget scrollable() => LayoutBuilder(
    builder: (context, view) => Theme(
      data: ThemeData(
        highlightColor: Color(0xFFcccccc),
      ),
      child: Scrollbar(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: view.maxHeight,
              minWidth: view.maxWidth,
            ),
            child: this,
          ),
        ),
      ),
    ),
  );

  Widget paddingAll(double value) => Padding(
    padding: EdgeInsets.all(value),
    child: this,
  );

  Widget paddingOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) =>
      Padding(
        padding: EdgeInsets.only(),
        child: this,
      );

  Widget center() => Center(
    child: this,
  );

  Widget align(Alignment alignment) => Align(
    alignment: alignment,
    child: this,
  );
}
