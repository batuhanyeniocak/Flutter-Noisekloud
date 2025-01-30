import 'package:flutter/material.dart';
import '../widgets/bottom_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil',
          style: TextStyle(
            color: colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(
          color: colorScheme.primary,
        ),
        backgroundColor: colorScheme.secondary,
      ),
      backgroundColor: colorScheme.surface,
      body: Column(
        children: [
          const SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            backgroundImage: const AssetImage('assets/images/logo.png'),
            backgroundColor: colorScheme.onSurfaceVariant,
          ),
          const SizedBox(height: 10),
          Text(
            'batuhanyeniocak',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildProfileStat('0', 'Takipçi', colorScheme),
              const SizedBox(width: 40),
              _buildProfileStat('0', 'Takip Edilen', colorScheme),
              const SizedBox(width: 40),
              _buildProfileStat('0', 'Beğeniler', colorScheme),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            child: Text(
              'Profili Düzenle',
              style: TextStyle(color: colorScheme.onPrimary),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: colorScheme.error,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            child: Text(
              'Çıkış Yap',
              style: TextStyle(color: colorScheme.onPrimary),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }

  Widget _buildProfileStat(
      String count, String label, ColorScheme colorScheme) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: colorScheme.onSurface,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
