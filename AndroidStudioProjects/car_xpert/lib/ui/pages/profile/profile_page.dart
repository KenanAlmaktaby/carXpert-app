import 'package:carxpert/config/user_information.dart';
import 'package:carxpert/ui/style/themes/theme_service.dart';
import 'package:carxpert/ui/style/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SizedBox(
        height: double.infinity.h,
        child: Column(
          children: [
            Header(title: 'Your Profile'),
            SizedBox(
              height: 2.h,
            ),
            Center(
              child: Text(
                '${UserInformation.user.name}',
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface),
              ),
            ),
            SizedBox(
              height: 0.1.h,
            ),
            SizedBox(
              height: 4.h,
              width: double.infinity.w,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${UserInformation.user.email}',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.pencil,
                      color: Theme.of(context).colorScheme.secondary,
                      size: 10.sp,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Container(
              height: 0.1.h,
              width: double.infinity.w,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            Expanded(
              child: Column(
                children: [
                  ExpansionTile(
                    textColor:Theme.of(context).colorScheme.onSurface,
                    iconColor: Theme.of(context).colorScheme.primary,
                    collapsedIconColor:Theme.of(context).colorScheme.tertiary ,
                    leading: Icon(
                      FontAwesomeIcons.solidHeart,
                      size: 10.sp,
                    ),
                    title: Text('Favourites'),
                    children: [
                      ListTile(
                        leading: Icon(
                          FontAwesomeIcons.car,
                          color: Theme.of(context).colorScheme.tertiary,
                          size: 10.sp,
                        ),
                        title: Text('Cars For Sale'),
                        onTap: () {
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          FontAwesomeIcons.car,
                          color: Theme.of(context).colorScheme.tertiary,
                          size: 10.sp,
                        ),
                        title: Text('Cars For Rent'),
                        onTap: () {
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Ionicons.bag,
                          color: Theme.of(context).colorScheme.tertiary,
                          size: 10.sp,
                        ),
                        title: Text('Car Accessories'),
                        onTap: () {
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Ionicons.extension_puzzle,
                          color: Theme.of(context).colorScheme.tertiary,
                          size: 10.sp,
                        ),
                        title: Text('Spare Parts'),
                        onTap: () {
                        },
                      ),
                    ],
                  ),
                  Container(
                    height: 0.1.h,
                    width: double.infinity.w,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  ExpansionTile(
                    title: Text('Settings'),
                    leading: Icon(
                      Ionicons.settings,
                      size: 10.sp,
                    ),
                    textColor: Theme.of(context).colorScheme.onSurface,
                    iconColor: Theme.of(context).colorScheme.primary,
                    collapsedIconColor:Theme.of(context).colorScheme.tertiary ,
                    children: [
                      ListTile(
                        leading: Icon(
                          FontAwesomeIcons.moon,
                          size: 10.sp,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                        title: Text('Dark Mode'),
                        trailing: Switch(
                          activeColor: Theme.of(context).colorScheme.primary,
                        value: ThemeService().isSavedDarkMode(),
                        onChanged: (value) {
                          ThemeService().changeThemeMode();
                        }),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
