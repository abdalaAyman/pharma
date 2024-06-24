import 'package:flutter/material.dart';
import 'package:flutter_application_2/features/Home/presentation/view/widgets/save.dart';

import '../../../../constants.dart';

class SaveView extends StatelessWidget {
  const SaveView({super.key});

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<FavoriteProvider>(context);
    // final words = provider.words;
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
      //   body:  ListView.builder(
      //     itemCount: words.length,
      //     itemBuilder: (context, index) {
      //       final word = words[index];
      //       return ListTile(
      //         title: Text(word),
      //         trailing: IconButton(
      //             onPressed: () {
      //               provider.toggleFavorite(word);
      //             },
      //             icon: provider.isExist(word)
      //                 ? const Icon(Icons.favorite, color: Colors.blue)
      //                 : const Icon(Icons.favorite_border)),
      //       );
      //     },
      //   ),
    );
  }
}
