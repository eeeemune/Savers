import 'package:flutter/cupertino.dart';
import 'package:savers/theme/theme.dart';

class TopNavigatorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          height: 50,
          color: ColorPalette.black,
          child: const Text("GOGOGOGOGOGOGO"),
        )
      ],
    );
  }
}
