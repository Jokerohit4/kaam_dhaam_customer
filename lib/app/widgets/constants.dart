import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color lightGreen = const Color.fromRGBO(56, 208, 32, 0.7);
Color lightBlue = const Color.fromRGBO(2, 131, 191, 1);
Color darkBlue = const Color.fromRGBO(23, 40, 148, 1);

Color getButton1Color(Set<MaterialState> states) {
  const interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return lightGreen;
  }
  return lightBlue;
}

Color getButton2Color(Set<MaterialState> states) {
  const interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return lightBlue;
  }
  return lightGreen;
}

final kLableTextStyle = GoogleFonts.lato(
  textStyle: TextStyle(color: Colors.white, letterSpacing: 20),
  fontSize: 30,
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter your value',
  hintStyle: TextStyle(
    color: Color.fromRGBO(56, 208, 32, 1),
    fontSize: 18,
  ),
  labelText: 'Enter your email',
  labelStyle: TextStyle(
    color: Color.fromRGBO(2, 131, 191, 1),
    fontWeight: FontWeight.bold,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  focusColor: Colors.black,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromRGBO(2, 131, 191, 1), width: 1.3),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromRGBO(56, 208, 32, 1), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

final customPaint = const CustomPaint(
    /* painter: myPaint(),*/
    );
