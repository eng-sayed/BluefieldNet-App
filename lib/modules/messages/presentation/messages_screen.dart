import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/widgets/customtext.dart';
import '../cubit/cubit.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MessagesCubit(),
        child: Scaffold(
            body: SafeArea(
          child: Center(
            child: Column(
              children: [CustomText("MessagesScreen")],
            ),
          ),
        )));
  }
}
