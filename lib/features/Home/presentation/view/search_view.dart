// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/core/helpers/extensions.dart';

import '../../../../core/routing/routes.dart';

class Search extends StatelessWidget {
  const Search({super.key});

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
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  onTap: () => context.pushNamed(Routes.FindMedicine),
                  minLines: 1,
                  maxLines: 2,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                    ),
                    prefixIconColor: kBlueColor,
                    hintText: 'Search any medicine....',
                    hintStyle: TextStyle(fontSize: 18, color: kHentGrayColor),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kBlueColor),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Recently Search',
                      style: TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 170),
                    child: Text(
                      'Clear',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 110,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 10),
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 4,
                    //  childAspectRatio: 8 / 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 25,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Row(
                          children: const [
                            // Padding(
                            //   padding: const EdgeInsets.only(left: 10),
                            //   child: Icon(
                            //     Icons.redo,
                            //     color: Colors.grey,
                            //   ),
                            // ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'insulin Aspart',
                                style:
                                    TextStyle(fontSize: 17, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Row(
                          children: const [
                            // Padding(
                            //   padding: const EdgeInsets.only(left: 10),
                            //   child: Icon(
                            //     Icons.redo,
                            //     color: Colors.grey,
                            //   ),
                            // ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'insulin Aspart',
                                style:
                                    TextStyle(fontSize: 17, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Row(
                          children: const [
                            // Padding(
                            //   padding: const EdgeInsets.only(left: 10),
                            //   child: Icon(
                            //     Icons.redo,
                            //     color: Colors.grey,
                            //   ),
                            // ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'insulin Aspart',
                                style:
                                    TextStyle(fontSize: 17, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Text(
                  'Search by Categories',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: SizedBox(
                  height: 100,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.grey),
                        ),
                        margin: EdgeInsets.only(right: 6),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/Rectangle 3370 (6).png',
                                fit: BoxFit.fitHeight,
                                height: 50,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  'Diabetes',
                                  style: TextStyle(fontSize: 11),
                                ),
                              )
                            ]),
                      ),
                      Container(
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.grey),
                        ),
                        margin: EdgeInsets.only(right: 6),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/Rectangle 3370 (7).png',
                                fit: BoxFit.fitHeight,
                                height: 50,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  'Bool pressure spiked',
                                  style: TextStyle(fontSize: 11),
                                ),
                              )
                            ]),
                      ),
                      Container(
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.grey),
                        ),
                        margin: EdgeInsets.only(right: 6),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/Rectangle 3370 (8).png',
                                fit: BoxFit.fitHeight,
                                height: 50,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  'Ance',
                                  style: TextStyle(fontSize: 11),
                                ),
                              )
                            ]),
                      ),
                      Container(
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.grey),
                        ),
                        margin: EdgeInsets.only(right: 6),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/Rectangle 3370 (9).png',
                                fit: BoxFit.fitHeight,
                                height: 50,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  'Cholesterol sprain',
                                  style: TextStyle(fontSize: 11),
                                ),
                              )
                            ]),
                      ),
                      Container(
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.grey),
                        ),
                        margin: EdgeInsets.only(right: 6),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/Rectangle 3370 (10).png',
                                fit: BoxFit.fitHeight,
                                height: 50,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  'Blood pressure spiked',
                                  style: TextStyle(fontSize: 11),
                                ),
                              )
                            ]),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
