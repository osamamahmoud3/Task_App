import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> errorSnackBar(
    String message, BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(children: [
        const Icon(Icons.error, color: Colors.red),
        const SizedBox(width: 8),
        Text(message)
      ]),
    ),
  );
}

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> successSnackBar(
    String message, BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(children: [
        const Icon(Icons.check_circle, color: Colors.green),
        const SizedBox(width: 8),
        Text(message)
      ]),
    ),
  );
}
