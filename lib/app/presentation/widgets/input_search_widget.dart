import 'package:flutter/material.dart';

import '../responsive/responsive.dart';

class InputSearchWidget extends StatelessWidget {
  final TextEditingController searchController;
  final Widget? suffixIcon;
  const InputSearchWidget({
    super.key,
    required this.searchController,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return TextField(
      controller: searchController,
      style: TextStyle(
        fontSize: responsive.dp(1.7),
        color: Colors.white,
      ),
      autofocus: true,
      maxLength: 20,
      decoration: InputDecoration(
        hintText: 'Buscar...',
        contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
        hintStyle: TextStyle(
          fontSize: responsive.dp(1.7),
          color: Colors.white,
        ),
        border: InputBorder.none,
        suffixIcon: suffixIcon,
        counterText: '',
      ),
    );
  }
}
