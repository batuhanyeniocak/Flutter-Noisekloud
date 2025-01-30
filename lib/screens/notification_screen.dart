import 'package:flutter/material.dart';
import 'package:flutter_app/core/routes.dart';
import 'package:go_router/go_router.dart';
import '../widgets/bottom_menu.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.secondary,
        iconTheme: IconThemeData(
          color: colorScheme.onPrimary,
        ),
        title: Text(
          'Bildirimler',
          style: TextStyle(
            color: colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          _buildNotificationItem(
            colorScheme,
            icon: Icons.favorite,
            title: 'Yeni Beğeni',
            description: 'Bir kullanıcı şarkınızı beğendi!',
            time: '2 dakika önce',
          ),
          const Divider(),
          _buildNotificationItem(
            colorScheme,
            icon: Icons.comment,
            title: 'Yeni Yorum',
            description: 'Bir kullanıcı gönderinize yorum yaptı.',
            time: '15 dakika önce',
          ),
          const Divider(),
          _buildNotificationItem(
            colorScheme,
            icon: Icons.person_add,
            title: 'Yeni Takipçi',
            description: 'Bir kullanıcı sizi takip etmeye başladı.',
            time: '1 saat önce',
          ),
          const Divider(),
          _buildNotificationItem(
            colorScheme,
            icon: Icons.music_note,
            title: 'Yeni Şarkı Yayında',
            description: 'Takip ettiğiniz bir sanatçı yeni şarkı yayınladı.',
            time: '3 saat önce',
          ),
          const Divider(),
          _buildNotificationItem(
            colorScheme,
            icon: Icons.warning,
            title: 'Sistem Bildirimi',
            description: 'Hesabınız ile ilgili önemli bir duyuru var.',
            time: 'Dün',
          ),
        ],
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }

  Widget _buildNotificationItem(
    ColorScheme colorScheme, {
    required IconData icon,
    required String title,
    required String description,
    required String time,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: colorScheme.primary, size: 36),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    color: colorScheme.onSurface,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 12,
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
