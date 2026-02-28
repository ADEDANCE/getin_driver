import 'package:flutter/material.dart';

class TextfiedWidget extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool issuffixIcon;
  final Icon? hiticon;
  final Color? fillColor;
  final Function(String)? onChanged;
  final int? maxLength;
  const TextfiedWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.hiticon,
    this.issuffixIcon = false,
    this.fillColor,
    this.onChanged,
    this.maxLength,
  });

  @override
  State<TextfiedWidget> createState() => _TextfiedWidgetState();
}

class _TextfiedWidgetState extends State<TextfiedWidget> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.issuffixIcon ? _isObscure : false,
      decoration: InputDecoration(
        hintText: widget.hintText,
        icon: widget.hiticon,
        filled: true,
        fillColor: widget.fillColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Color(0xFFa6a3a2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Color(0xFFa6a3a2)),
        ),
        suffixIcon: widget.issuffixIcon
            ? IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility_off : Icons.remove_red_eye,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              )
            : null,
      ),
    );
  }
}
