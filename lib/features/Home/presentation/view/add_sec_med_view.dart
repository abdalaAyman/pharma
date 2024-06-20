// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helpers/extensions.dart';
import 'package:flutter_application_2/core/routing/routes.dart';
import 'package:flutter_application_2/core/widgets/custom_bottom.dart';

import '../../../../constants.dart';
import '../../../../core/widgets/custom_listTile.dart';
import 'interacion_view.dart';

class SecondMedicine extends StatelessWidget {
  const SecondMedicine({super.key});

  @override
  Widget build(BuildContext context) {
    String? medicineName1 = '';
    String? medicineName2 = '';
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          automaticallyImplyLeading: false,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          flexibleSpace:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
              width: 90,
              child: Padding(
                padding: const EdgeInsets.only(top: 40, right: 40),
                child: IconButton(
                  icon: ImageIcon(AssetImage('assets/backarrow.png')),
                  onPressed: () => context.pop(),
                ),
              ),
            ),
            SizedBox(width: 210, child: Image.asset('assets/logos/logo.png')),
            Container(
              width: 90,
            )
          ]),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  opacity: .15,
                  image: AssetImage('assets/grayintr.png'),
                  fit: BoxFit.fitWidth)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Container(
                //     height: 150,
                //     width: 150,
                //     child: Image.asset('assets/blueintr.png')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'The First Medicine    ',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: kBlueColor),
                    ),
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: TextField(
                        onChanged: (value) => medicineName1 = value,
                        decoration: InputDecoration(
                          hintText: 'Enter the name of the medicine..',
                          hintStyle: const TextStyle(
                              fontSize: 12, color: Color(0XFF838383)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF9DB2CE)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'The Second Medicine',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: kBlueColor),
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: TextField(
                        onChanged: (value) => medicineName2 = value,
                        //  minLines: 1,
                        decoration: InputDecoration(
                          hintText: 'Enter the name of the medicine..',
                          hintStyle: const TextStyle(
                              fontSize: 12, color: Color(0XFF838383)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF9DB2CE)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomBottom(
                  buttonName: 'interaction',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InteractionView(
                            Name1: medicineName1 ?? '',
                            Name2: medicineName2 ?? '',
                          ),
                        ));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
