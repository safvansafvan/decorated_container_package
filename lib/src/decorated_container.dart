import 'package:flutter/material.dart';

class DecoratedContainer extends StatefulWidget {
  const DecoratedContainer(
      {super.key,
      this.width,
      this.height,
      this.color1,
      this.color2,
      this.title,
      this.subtitle});
  final double? width;
  final double? height;
  final Color? color1;
  final Color? color2;
  final String? title;
  final String? subtitle;

  @override
  State<DecoratedContainer> createState() => _DecoratedContainerState();
}

class _DecoratedContainerState extends State<DecoratedContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            widget.color1 ?? Colors.blue,
            widget.color2 ?? Colors.amber
          ]),
          boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 12)]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.title ?? "Unknown",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              widget.subtitle ?? "",
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
