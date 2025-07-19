import 'package:flutter/material.dart';

class PressEffect extends StatefulWidget {
  final Widget child;
  final VoidCallback onTap;

  const PressEffect({super.key, required this.child, required this.onTap});

  @override
  State<PressEffect> createState() => _PressEffectState();
}

class _PressEffectState extends State<PressEffect> {
  double _scale = 1.0;

  void _handleTap() async {
    setState(() {
      _scale = 0.95;
    });

    await Future.delayed(const Duration(milliseconds: 200));

    setState(() {
      _scale = 1.0;
    });

    widget.onTap();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 100),
        child: widget.child,
      ),
    );
  }
}
