import 'package:flutter/material.dart';
import 'package:spotiplay/app/core/style.dart';
import 'package:spotiplay/app/helpers/image.dart';

class OptionsView extends StatelessWidget {
  const OptionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: Style.H1),
          Container(
            decoration: Style.CIRCLE,
            clipBehavior: Clip.hardEdge,
            child: Image(
              width: 120,
              image: HelperImage.getNetworkImage(""),
            ),
          ),
          const SizedBox(height: Style.PADDING),
          const Text(
            "Name",
            style: Style.TEXT_MD_WHITE_BOLD,
          ),
          const Text(
            "email@example.com",
            style: Style.TEXT_MD_WHITE,
          ),
          const SizedBox(height: Style.H1),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.data_saver_off, color: Style.PRIMARY),
            title: const Text("User page"),
            onTap: () {},
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.exit_to_app, color: Style.PRIMARY),
            title: const Text("Log Out"),
            onTap: () {},
          ),
          const Divider(height: 1),
        ],
      ),
    );
  }
}
