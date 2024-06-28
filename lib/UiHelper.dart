import 'package:flutter/material.dart';

class UiHelper {
  static customButton(
    String text, [
    double? fontsize,
    FontWeight? fontweight,
    double? borderradius,
    Color? bgcolor,
    Color? forecolor,
    double? height,
    double? width,
    VoidCallback? callback,
  ]) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: () {
          // callback();
        },
        child: Text(
          text,
          style: TextStyle(fontSize: fontsize, fontWeight: fontweight),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  borderradius != null ? borderradius : 0.0)),
          backgroundColor: bgcolor,
          foregroundColor: forecolor,
        ),
      ),
    );
  }

  static customRowButton(
      String imgpath,
      String text,
      [double? vpadding,
      double? hpadding,
      double? sizeboxwidth,
      double? fontsize,
      FontWeight? fontweight,
      Color? txtcolor,
      double? borderradius,
      double? bordersidewidth,
      Color? bordercolor,
      VoidCallback? callback]) {
    return OutlinedButton(
      onPressed: () {
        // callback();
      },
      child: Row(children: [
        Padding(
          padding:
              EdgeInsets.symmetric(vertical: vpadding!, horizontal: hpadding!),
          child: Image.network(imgpath),
        ),
        customSizebox(width: sizeboxwidth),
        Text(text,
            style: TextStyle(
                fontSize: fontsize, fontWeight: fontweight, color: txtcolor)),
      ]),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderradius!)),
        side: BorderSide(width: bordersidewidth!, color: bordercolor!),
      ),
    );
  }

  static customSizebox({double? width, double? height}) {
    return SizedBox(
      height: height,
      width: width,
    );
  }

  static customTextField(TextEditingController controller, String text,
      [IconData? icondata, Color? color,
      bool? password]) {
    return TextField(
      controller: controller,
      obscureText: password != null ? password : false,
      decoration: InputDecoration(
          hintText: text,
          suffixIcon: Icon(icondata),
          filled: true,
          focusColor: Colors.grey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }

  static customText(String text, [Color? color, double? fontsize,
      FontWeight? fontweight,TextAlign? textalign]) {
    return Text(
      text,
      style:
          TextStyle(fontSize: fontsize, color: color, fontWeight: fontweight),
      textAlign: textalign,
    );
  }

  static customTextButton(String text,
      [Color? color,
      FontWeight? fontweight,
      double? fontsize,
      VoidCallback? callback]) {
    return TextButton(
        onPressed: () {
          // callback();
        },
        child: Text(text,
            style: TextStyle(
                color: Colors.white,
                fontWeight: fontweight,
                fontSize: fontsize)));
  }
}
