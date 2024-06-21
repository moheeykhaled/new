import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchFiled extends StatelessWidget {
  const CustomSearchFiled(
      {super.key, this.onChanged, required this.controller});

  final Function(String)? onChanged;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        style: TextStyle(
          fontSize: 18,
          color: Theme.of(context).colorScheme.onPrimary,
          fontFamily: "GT Sectra Fine",
          fontWeight: FontWeight.bold
        ),
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            onPressed: () {},
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                width: 2,
                color: Theme.of(context).colorScheme.onPrimary,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                width: 2,
                color: Theme.of(context).colorScheme.onPrimary,
              )),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              width: 2,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
        cursorColor: Theme.of(context).colorScheme.onPrimary,
        cursorHeight: 25,
      ),
    );
  }
}
