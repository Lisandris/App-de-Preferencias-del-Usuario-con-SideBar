import 'package:flutter/material.dart';
import 'package:preferences_app/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer( 
      child: ListView(
        padding: EdgeInsets.zero,
        children: [

           const _DrawerHeader(),

            ListTile(
              leading: const Icon( Icons.home_rounded ),
              title:  const Text('Home'),
              onTap: () {
                  Navigator.pushNamed(context, HomeScreen.routeName );
              },

            ),

            ListTile(
              leading: const Icon( Icons.people),
              title:  const Text('People'),
              onTap: () {
                  // Navigator.pushNamed(context, SettingsScreen.routeName );
              
              },

            ),

            ListTile(
              leading: const Icon( Icons.settings_outlined),
              title:  const Text('Settings'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.pushNamed(context, SettingsScreen.routeName );
              },

            ),

        ],
      ),

    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/fondogato.jpg'),
          fit: BoxFit.cover
        )

      ),
    );
  }
}