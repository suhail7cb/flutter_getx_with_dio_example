import 'package:flutter/material.dart';

class LoadingOverlay extends StatelessWidget {
  late Widget child;
  final bool? isLoading;

  LoadingOverlay({super.key,
    required this.child,
    this.isLoading,
  }) ;
  @override
  Widget build(BuildContext context) {
    if (isLoading ?? false) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return child;
  }
}
