import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputCustom extends StatefulWidget {
  final double width;
  final bool showText;
  final double borderRaduis;
  final onChanged;
  final placeholder;
  final icon;
  final iconColor;
  final keyboardType;
  final backgroundColor;
  final focusedColor;
  final borderColor;
  final controller;
  final textColor;
  InputCustom(
      {this.width = 300,
      this.controller,
      this.placeholder,
      this.icon,
      this.iconColor,
      this.keyboardType,
      this.backgroundColor,
      this.showText = false,
      this.focusedColor = Colors.blue,
      this.borderColor = Colors.white,
      this.onChanged,
      this.borderRaduis = 20.0,
      this.textColor=CupertinoColors.black});

  @override
  _InputCustomState createState() => _InputCustomState();
}

class _InputCustomState extends State<InputCustom> {
  bool hoover = false;
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: TextField(
        style: TextStyle(color: widget.textColor),
        onChanged: widget.onChanged,
        onTap: () {
          setState(() {
            if (!hoover) {
              hoover = true;
            }
          });
        },
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: widget.showText,
        decoration: InputDecoration(
            hintText: widget.placeholder,
            prefixIcon: hoover
                ? Icon(
              widget.icon,
              color: widget.focusedColor,
            )
                : Icon(
              widget.icon,
              color: widget.iconColor,
            ),
            filled: true,
            fillColor: widget.backgroundColor,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRaduis),
                borderSide: BorderSide(color: widget.focusedColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRaduis),
                borderSide: BorderSide(color: widget.borderColor))),
      ) ,
    );
  }
}
