import 'package:flutter/material.dart';

class UiHelper {
  static customButton(
    String text,
    double fontsize,
    FontWeight fontweight,
    double borderradius,
    Color bgcolor,
    Color forecolor, [
    double? height,
    double? width,
    VoidCallback? callback,
  ]) {
    return SizedBox(
      height: height != null ? height : null,
      width: width != null ? width : null,
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
              borderRadius: BorderRadius.circular(borderradius)),
          backgroundColor: bgcolor,
          foregroundColor: forecolor,
        ),
      ),
    );
  }
  static customRowButton(String imgpath,double vpadding, double hpadding,double sizeboxwidth,String text,double fontsize,FontWeight fontweight,Color txtcolor,double borderradius,double bordersidewidth, Color bordercolor){
    return OutlinedButton(
      onPressed: () {},
      child: Row(children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: vpadding, horizontal: hpadding),
          child: Image.network(imgpath),
        ),
        customSizebox(sizeboxwidth),
        Text(text,
            style: TextStyle(
                fontSize: fontsize,
                fontWeight: fontweight,
                color: txtcolor)),
      ]),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderradius)),
        side: BorderSide(width: bordersidewidth, color: bordercolor),
      ),
    );
  }
  static customSizebox([double? width=0]){
    return SizedBox(
      // height: height,
      width: width,
    );
  }
  // OutlinedButton(
  // onPressed: () {},
  // child: Row(children: [
  // Padding(
  // padding: const EdgeInsets.symmetric(
  // vertical: 15, horizontal: 12),
  // child: Image.network(
  // "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1024px-Google_%22G%22_logo.svg.png"),
  // // Image.asset("assets/images/google.png",height: 50,width: 80,),
  // ),
  // SizedBox(
  // width: 20,
  // ),
  // Text("Continue with Google",
  // style: TextStyle(
  // fontSize: 20,
  // fontWeight: FontWeight.bold,
  // color: Colors.white)),
  // ]),
  // // Image.network("https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-google-icon-logo-png-transparent-svg-vector-bie-supply-14.png"),
  // style: OutlinedButton.styleFrom(
  // shape: RoundedRectangleBorder(
  // borderRadius: BorderRadius.circular(25)),
  // side: BorderSide(width: 1.0, color: Colors.white),
  // ),
  // ),

  // static CustomButton(VoidCallback callback,String text,double radius,String imagePath,FontWeight fontweight,double fontsize,double width,[Color? backgroundcolor,Color? foregroundColor,double? h,double? v]){
  //   return OutlinedButton(onPressed:(){callback();} ,
  //     child:Row(children: [
  //     Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 15),
  //       child:
  //       Image.network(imagePath)),
  //       SizedBox(width: 20,),
  //       Text(text,style: TextStyle(fontSize: fontsize,fontWeight:fontweight),)],),
  //     style: OutlinedButton.styleFrom( shape: RoundedRectangleBorder(
  //     borderRadius: BorderRadius.circular(radius),
  //   ),
  //         backgroundColor: backgroundcolor,foregroundColor: foregroundColor),
  //   );
  // }
  static customTextField(TextEditingController controller, String text,
      IconData icondata, Color color,
      [bool? password]) {
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

  static customText(String text, Color color, double fontsize,
      [FontWeight? fontweight]) {
    return Text(
      text,
      style:
          TextStyle(fontSize: fontsize, color: color, fontWeight: fontweight),
    );
  }
}
