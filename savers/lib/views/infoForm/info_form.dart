import 'package:flutter/material.dart';
import 'package:savers/theme/theme.dart';

class InfoForm extends StatefulWidget {
  @override
  State<InfoForm> createState() => _InfoFormState();
}

class _InfoFormState extends State<InfoForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: this.formKey,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              maxLength: 50,
              decoration: InputDecoration(
                  label: Text(
                    " 이름",
                    style: TextStyle(
                        color: ColorPalette.fontGray,
                        fontFamily: "Pretendard",
                        fontSize: 16,
                        height: 1.0),
                  ),
                  hintText: "Jane Doe",
                  counterText: "",
                  fillColor: ColorPalette.lineGray,
                  border: null,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)),
                  contentPadding: EdgeInsets.all(16)),
            )
          ],
        ),
      ),
    );
  }
}
