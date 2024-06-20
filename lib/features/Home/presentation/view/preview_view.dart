// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helpers/extensions.dart';

import '../../../../constants.dart';

class PreviewViewBody extends StatefulWidget {
  final String name;
  final String pageName;
  const PreviewViewBody(
      {super.key, required this.name, required this.pageName});

  @override
  State<PreviewViewBody> createState() => _PreviewViewBodyState();
}

class _PreviewViewBodyState extends State<PreviewViewBody> {
  @override
  Widget build(BuildContext context) {
    // return BlocProvider(
    //   create: (context) => ActivityCubit()..fetchMedications(),
    //   child: BlocBuilder<ActivityCubit, ActivityState>(
    //     builder: (context, state) {
    //       if (state == ActivityState.loading) {
    //         return const Center(child: CircularProgressIndicator());
    //       } else if (state == ActivityState.success) {
    //         return PreviewView();
    //       } else if (state == ActivityState.error) {
    //         return const Center(child: Text('Error fetching medications'));
    //       } else {
    //         return Container(); // Handle other states if necessary
    //       }
    //     },
    //   ),
    // );
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
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: kBlueColor),
                  color: Color(0xffDCEAFD),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Center(
                child: Text(
                  widget.name,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: kBlueColor),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: kBlueColor),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Center(
                child: Text(
                  widget.pageName,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              constraints: BoxConstraints(maxHeight: 600),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromRGBO(216, 250, 207, 0.65), width: 5),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'It is used to treat Type I diabetes ( insulin-dependent), and to control the condition of hyperglycemia in Type II diabetes ( non-insulin-dependent).',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
