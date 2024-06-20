// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/core/helpers/extensions.dart';
import 'package:flutter_application_2/core/widgets/custom_listTile.dart';
import 'package:flutter_application_2/features/Home/presentation/view/preview_view.dart';
import '../../../../core/routing/routes.dart';

class FindMedicine extends StatefulWidget {
  FindMedicine({super.key});

  @override
  State<FindMedicine> createState() => _FindMedicineState();
}

class _FindMedicineState extends State<FindMedicine> {
  String? medicineName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'The Medicine',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: kBlueColor),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: SizedBox(
                    height: 50,
                    width: 218,
                    child: TextField(
                      onChanged: (value) => medicineName = value,
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
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              listtilename: 'Uses of the Medicine',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PreviewViewBody(
                      name: medicineName ?? '',
                      pageName: 'Uses of the Medicine',
                    ),
                  ),
                );
              },
            ),
            CustomListTile(
              listtilename: 'Precautions for use',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PreviewViewBody(
                      name: medicineName ?? '',
                      pageName: 'Precautions for use',
                    ),
                  ),
                );
              },
            ),
            CustomListTile(
              listtilename: 'Contraindications for use',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PreviewViewBody(
                      name: medicineName ?? '',
                      pageName: 'Contraindications for use',
                    ),
                  ),
                );
              },
            ),
            CustomListTile(
              listtilename: 'Side effects',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PreviewViewBody(
                      name: medicineName ?? '',
                      pageName: 'Side effects',
                    ),
                  ),
                );
              },
            ),
            CustomListTile(
              listtilename: 'Medication alternation',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PreviewViewBody(
                      name: medicineName ?? '',
                      pageName: 'Medication alternation',
                    ),
                  ),
                );
              },
            ),
            CustomListTile(
              listtilename: 'Active ingredients',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PreviewViewBody(
                      name: medicineName ?? '',
                      pageName: 'Active ingredients',
                    ),
                  ),
                );
              },
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(right: 11),
            //       child: CustomBottom(
            //         buttonName: 'Medication interventions',
            //         onPressed: () {
            //           context.pushNamed(Routes.SecondMedicine);
            //         },
            //       ),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
