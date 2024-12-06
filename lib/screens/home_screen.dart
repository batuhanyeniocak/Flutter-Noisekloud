import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 52, 52, 52),
      // AppBar
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(50, 0, 0, 0),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.bell),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(CupertinoIcons.person),
            onPressed: () {},
          ),
        ],
      ),

      // Drawer (Yan Menü)
      drawer: Drawer(
        child: Column(
          children: [
            // Drawer Header
            Container(
              height: 200,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    CupertinoIcons.person_circle,
                    size: 80,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Kullanıcı Adı',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            // Menü öğeleri
            ListTile(
              leading: const Icon(CupertinoIcons.home),
              title: const Text('Ana Sayfa'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.settings),
              title: const Text('Ayarlar'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      // Ana içerik
      body: Column(
        children: [
          // Örnek bir satır: Şarkı bilgisi
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Sol taraf: Resim
                Container(
                  width: 60, // Resim genişliği
                  height: 60, // Resim yüksekliği
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                          'assets/images/coverArt_1.png'), // Resim yolu
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                        BorderRadius.circular(8), // Köşeleri yuvarlatma
                  ),
                ),
                const SizedBox(width: 16), // Resim ve metin arası boşluk

                // Sağ taraf: Şarkı bilgileri
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Saturn Devouring His Son', // Şarkı adı
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                          height: 4), // Şarkı adı ile sanatçı adı arası boşluk
                      Text(
                        'Jornada Del Muerto', // Sanatçı adı
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                          height:
                              4), // Sanatçı adı ile dinlenme sayısı arası boşluk
                      Text(
                        'Dinlenme: 1.429', // Dinlenme sayısı
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: IconButton(
                    icon: const Icon(Icons.more_vert),
                    color: Colors.white,
                    onPressed: () {
                      // Bos
                    },
                  ),
                )
              ],
            ),
          ),
          const Divider(), // Satırları ayırmak için bir çizgi

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Sol taraf: Resim
                Container(
                  width: 60, // Resim genişliği
                  height: 60, // Resim yüksekliği
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                          'assets/images/coverArt_2.png'), // Resim yolu
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                        BorderRadius.circular(8), // Köşeleri yuvarlatma
                  ),
                ),
                const SizedBox(width: 16), // Resim ve metin arası boşluk

                // Sağ taraf: Şarkı bilgileri
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Redlight Moments', // Şarkı adı
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                          height: 4), // Şarkı adı ile sanatçı adı arası boşluk
                      Text(
                        'Bladee', // Sanatçı adı
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                          height:
                              4), // Sanatçı adı ile dinlenme sayısı arası boşluk
                      Text(
                        'Dinlenme: 3.537.194', // Dinlenme sayısı
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: IconButton(
                    icon: const Icon(Icons.more_vert),
                    color: Colors.white,
                    onPressed: () {
                      // Bos
                    },
                  ),
                )
              ],
            ),
          ),
          const Divider(), // Satırları ayırmak için bir çizgi

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Sol taraf: Resim
                Container(
                  width: 60, // Resim genişliği
                  height: 60, // Resim yüksekliği
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                          'assets/images/coverArt_3.png'), // Resim yolu
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                        BorderRadius.circular(8), // Köşeleri yuvarlatma
                  ),
                ),
                const SizedBox(width: 16), // Resim ve metin arası boşluk

                // Sağ taraf: Şarkı bilgileri
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Me Siento Ridículo', // Şarkı adı
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                          height: 4), // Şarkı adı ile sanatçı adı arası boşluk
                      Text(
                        'Finale', // Sanatçı adı
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                          height:
                              4), // Sanatçı adı ile dinlenme sayısı arası boşluk
                      Text(
                        'Dinlenme: 372.373', // Dinlenme sayısı
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: IconButton(
                    icon: const Icon(Icons.more_vert),
                    color: Colors.white,
                    onPressed: () {
                      // Bos
                    },
                  ),
                )
              ],
            ),
          ),
          const Divider(), // Satırları ayırmak için bir çizgi

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Sol taraf: Resim
                Container(
                  width: 60, // Resim genişliği
                  height: 60, // Resim yüksekliği
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                          'assets/images/coverArt_4.png'), // Resim yolu
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                        BorderRadius.circular(8), // Köşeleri yuvarlatma
                  ),
                ),
                const SizedBox(width: 16), // Resim ve metin arası boşluk

                // Sağ taraf: Şarkı bilgileri
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Clifford the Big Red Stab Wound', // Şarkı adı
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                          height: 4), // Şarkı adı ile sanatçı adı arası boşluk
                      Text(
                        'Your Arms Are My Cocoon', // Sanatçı adı
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                          height:
                              4), // Sanatçı adı ile dinlenme sayısı arası boşluk
                      Text(
                        'Dinlenme: 550.425', // Dinlenme sayısı
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: IconButton(
                    icon: const Icon(Icons.more_vert),
                    color: Colors.white,
                    onPressed: () {
                      // Bos
                    },
                  ),
                )
              ],
            ),
          ),
          const Divider(), // Satırları ayırmak için bir çizgi

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Sol taraf: Resim
                Container(
                  width: 60, // Resim genişliği
                  height: 60, // Resim yüksekliği
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                          'assets/images/coverArt_5.png'), // Resim yolu
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                        BorderRadius.circular(8), // Köşeleri yuvarlatma
                  ),
                ),
                const SizedBox(width: 16), // Resim ve metin arası boşluk

                // Sağ taraf: Şarkı bilgileri
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '你就像太陽，永遠照耀著我。', // Şarkı adı
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                          height: 4), // Şarkı adı ile sanatçı adı arası boşluk
                      Text(
                        'AkuraVortex', // Sanatçı adı
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                          height:
                              4), // Sanatçı adı ile dinlenme sayısı arası boşluk
                      Text(
                        'Dinlenme: 38.656', // Dinlenme sayısı
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: IconButton(
                    icon: const Icon(Icons.more_vert),
                    color: Colors.white,
                    onPressed: () {
                      // Bos
                    },
                  ),
                )
              ],
            ),
          ),
          const Divider(), // Satırları ayırmak için bir çizgi
        ],
      ),

      // Alt navigasyon çubuğu
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(50, 0, 0, 0),
        selectedItemColor: const Color.fromARGB(255, 233, 86, 32),
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cloud),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Keşfet',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.music_albums),
            label: 'Kütüphane',
          ),
        ],
        onTap: (index) {
          // Navigasyon işlemleri buraya gelecek
        },
      ),
    );
  }
}
