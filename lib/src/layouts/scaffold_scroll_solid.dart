import 'package:flutter/material.dart';

class ScaffoldScrollSolid extends StatelessWidget {

  final PreferredSizeWidget? appBar;
  final List<Widget> content;
  final double spaceBetweenContent;

  const ScaffoldScrollSolid({
    super.key,
    this.appBar,
    required this.content,
    this.spaceBetweenContent = 0.0
  });

  @override
  Widget build(BuildContext context) {

    List<Widget> spacedContent = [];
    for (int i = 0; i < content.length; i++) {
      spacedContent.add(content[i]);
      if (i < content.length - 1 && spaceBetweenContent > 0) {
        spacedContent.add(SizedBox(height: spaceBetweenContent));
      }
    }

    return Scaffold(
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: spacedContent,
          )
        )
      )
    );
  }
}
