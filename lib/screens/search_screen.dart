import 'package:flutter/material.dart';
import '../widgets/bottom_menu.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              enabled: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: colorScheme.surface,
                hintText: 'Şarkı, sanatçı veya albüm ara...',
                hintStyle: TextStyle(color: colorScheme.onSurface),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(Icons.search, color: colorScheme.primary),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: colorScheme.secondary),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: colorScheme.secondary),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Son Aramalar',
              style: TextStyle(
                color: colorScheme.onSurface,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 10),
          _buildSearchHistoryItem(colorScheme, '2hollis - jeans'),
          _buildSearchHistoryItem(colorScheme, 'Ecco2k - Peroxide'),
          _buildSearchHistoryItem(
              colorScheme, 'Goblin Daycare - Doing My Part'),
          _buildSearchHistoryItem(colorScheme, 'Ghoulies - Shafted'),
        ],
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }

  Widget _buildSearchHistoryItem(ColorScheme colorScheme, String title) {
    return ListTile(
      leading: Icon(Icons.history, color: colorScheme.primary),
      title: Text(
        title,
        style: TextStyle(color: colorScheme.onSurface),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}
