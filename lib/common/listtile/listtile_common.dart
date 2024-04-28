import 'package:flutter/material.dart';
import 'package:flutter_application/common/snackbar/my_snackbar.dart';
import 'package:flutter_application/screen/output_scrren.dart';

class CommonListTile extends StatelessWidget {
  final int index;
  final String imageName;
  const CommonListTile({
    super.key,
    required this.index,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // leading: const Icon(Icons.person),
      // loading image
      leading:
          CircleAvatar(child: Image.asset('assets/images/$imageName.jpeg')),
      title: Text('Title ${index + 1}'),
      subtitle: const Text("Maitidevi Kathmandu"),
      trailing: const Icon(Icons.call),
      // onTap: () {
      //   showMySnackbar(messgae: "Hello", context: context);
      // },
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => OutputScreen(fullname: 'Title $index')));
      },
    );
  }
}
