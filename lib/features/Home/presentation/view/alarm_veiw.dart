import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helpers/extensions.dart';

class AlarmView extends StatelessWidget {
  const AlarmView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          automaticallyImplyLeading: false,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Image.asset('assets/logos/logo.png'),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
