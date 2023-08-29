import 'package:flutter/material.dart';
import 'package:project_app/app/routes/route_constants.dart';

import '../../widgets/custom_profile_button.dart';

class MyProfileView extends StatefulWidget {
  const MyProfileView({super.key});

  @override
  State<MyProfileView> createState() => _MyProfileViewState();
}

class _MyProfileViewState extends State<MyProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "My profile",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Khaled Ali",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.w200),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            customProfileButton(
                icon: Icons.edit_note_sharp,
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(RouteConstants.editInformationRoute);
                },
                title: "Edit information"),
            const SizedBox(
              height: 30,
            ),
            customProfileButton(
                icon: Icons.production_quantity_limits,
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(RouteConstants.myProjectsView);
                },
                title: "My Project"),
            const SizedBox(
              height: 30,
            ),
            customProfileButton(
                icon: Icons.shopping_cart,
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteConstants.myCartRoute);
                },
                title: "My Cart"),
            const SizedBox(
              height: 30,
            ),
            customProfileButton(
                icon: Icons.info_rounded,
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(RouteConstants.abouteTheAppView);
                },
                title: "About the app"),
            const SizedBox(
              height: 30,
            ),
            customProfileButton(
                icon: Icons.logout, onPressed: () {}, title: "Log out"),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
