import 'package:flutter/material.dart';

class CostumSearchButton extends StatelessWidget {
  const CostumSearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white.withOpacity(0.1)),
      child: const Icon(Icons.search),
    );
  }
}
