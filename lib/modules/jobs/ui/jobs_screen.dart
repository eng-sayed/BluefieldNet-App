import 'package:bluefieldnet/shared/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:SafeArea(
          child: Center(
            child: Column(
              children: [
                TextWidget("JobsScreen")
              ],
            ),
          ),
        )

    );
  }
}
