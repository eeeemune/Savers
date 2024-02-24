import 'package:flutter/material.dart';
import 'package:savers/theme/theme.dart';

class PlusButton extends StatelessWidget {
  final String label;
  final VoidCallback callBackFunction;
  PlusButton({required this.callBackFunction, this.label = ""});

  @override
  Widget build(BuildContext context) {
    return (InkWell(
        onTap: () => {callBackFunction()},
        child: Container(
          child: Center(
              child: Column(
            children: [
              Icon(Icons.add_circle, color: ColorPalette.fontGray, size: 24),
              label.isNotEmpty
                  ? Text(label,
                      style: TextStyle(
                          fontFamily: "Pretendard",
                          color: ColorPalette.fontGray,
                          fontSize: 16,
                          height: 1.8))
                  : Container()
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          )),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: ColorPalette.lineGray,
          ),
        )));
  }
}
