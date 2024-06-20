import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helpers/extensions.dart';

import '../../../../constants.dart';

class SaveView extends StatelessWidget {
  const SaveView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          child: AppBar(
            shadowColor: Colors.grey.withOpacity(0.3),
            automaticallyImplyLeading: false,
            surfaceTintColor: Colors.transparent,
            elevation: .1,
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Image.asset('assets/logos/logo.png'),
            ),
            centerTitle: true,
            backgroundColor: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
