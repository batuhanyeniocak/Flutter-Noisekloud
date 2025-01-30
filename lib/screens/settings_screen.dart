import 'package:flutter/material.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.onSecondary,
        iconTheme: IconThemeData(
          color: colorScheme.primary,
        ),
        title: Text(
          'Ayarlar',
          style: TextStyle(
            color: colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.palette, color: colorScheme.primary),
              title: Text(
                'Tema Değiştir',
                style: TextStyle(
                  color: colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                context.read<ThemeProvider>().toggleTheme();
              },
            ),
            const Divider(),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.notifications, color: colorScheme.primary),
              title: Text(
                'Bildirimleri Aç/Kapat',
                style: TextStyle(
                  color: colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Switch(
                value: false,
                onChanged: (value) {},
              ),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.language, color: colorScheme.primary),
              title: Text(
                'Dil Seçimi',
                style: TextStyle(
                  color: colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Türkçe',
                style: TextStyle(color: colorScheme.onSurfaceVariant),
              ),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.info, color: colorScheme.primary),
              title: Text(
                'Hakkında',
                style: TextStyle(
                  color: colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            const Divider(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
