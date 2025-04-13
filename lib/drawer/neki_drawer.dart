import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class NekiDrawer extends StatelessWidget {
  final ThemeMode currentThemeMode;
  final Function(ThemeMode) onThemeChanged;

  const NekiDrawer({
    super.key,
    required this.currentThemeMode,
    required this.onThemeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.blue),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '⚙️ Cài đặt Neki',
                    style: const TextStyle(color: Colors.white, fontSize: 24),
                  ).tr(),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: DropdownButton<Locale>(
                    value: context.locale,
                    icon: const Icon(Icons.language, color: Colors.white),
                    dropdownColor: Colors.white,
                    underline: const SizedBox(),
                    onChanged: (Locale? newLocale) {
                      if (newLocale != null) {
                        context.setLocale(newLocale);
                      }
                    },
                    items: const [
                      DropdownMenuItem(
                        value: Locale('en'),
                        child: Text('English'),
                      ),
                      DropdownMenuItem(
                        value: Locale('vi'),
                        child: Text('Tiếng Việt'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: Text('Homepage').tr(),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.color_lens),
            title: Text('Theme').tr(),
            trailing: DropdownButton<ThemeMode>(
              value: currentThemeMode,
              underline: const SizedBox(),
              onChanged: (mode) {
                if (mode != null) {
                  onThemeChanged(mode);
                }
              },
              items: const [
                DropdownMenuItem(value: ThemeMode.light, child: Text('Light')),
                DropdownMenuItem(value: ThemeMode.dark, child: Text('Dark')),
                DropdownMenuItem(value: ThemeMode.system, child: Text('System')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
