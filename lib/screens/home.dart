import 'package:flutter/material.dart';
import 'package:state_management/widget/cheetah_input.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Provider Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(32),
        child: Form(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheetahInput(),
          ],
        )),
      ),
    );
  }
}
