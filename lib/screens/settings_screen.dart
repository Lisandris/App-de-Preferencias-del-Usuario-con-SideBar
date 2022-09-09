import 'package:flutter/material.dart';
import 'package:preferences_app/share_preferences/preferences.dart';
import 'package:preferences_app/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {

  static const String routeName = 'Settings';

  const SettingsScreen ({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  // bool isDarkMode = false;
  // int gender = 1;
  // String name = 'Lis';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ajustes', style: TextStyle( fontSize: 35, fontWeight: FontWeight.w300),),

              SwitchListTile.adaptive(
                value: Preferences.isDarkmode,
                title: const Text('DarkMode'),
                 onChanged: ( value ) {
                  // para activar el Switch
                  Preferences.isDarkmode = value;
                  setState(() {});
                }
              ),
              const Divider(),

              RadioListTile<int>(
                value: 1, 
                groupValue: Preferences.gender,
                title: const Text('Masculino'),
                 onChanged: (value ) {
                  Preferences.gender = value ?? 1;
                  setState(() {});
                }

              ),
              const Divider(),
              RadioListTile<int>(
                value: 2, 
                groupValue: Preferences.gender,
                title: const Text('Femenino'),
                 onChanged: (value ) {
                  Preferences.gender = value ?? 2;
                  setState(() {});
                }
              ),

              const Divider(),

              Padding(
                padding: const EdgeInsets.symmetric( horizontal: 20 ),
                child: TextFormField(
                  initialValue: Preferences.name,
                  onChanged: ( value ) {
                    Preferences.name = value;
                    setState(() {});
                  },
                  decoration: const InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre del usuario',
                  ),
                ),
              )
            ],
          ),
        ),
      )
     
   );
  }
}