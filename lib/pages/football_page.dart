import 'package:flutter/material.dart';

class FootballPage extends StatelessWidget {
  FootballPage({super.key});

  final List<Map<String, String>> stadiums = [
    {"name": "Camp Nou", "image": "assets/football/football 1.jpg", "location": "Barcelona, Spain"},
    {"name": "Old Trafford", "image": "assets/football/football 2.jpg", "location": "Manchester, England"},
    {"name": "Wembley", "image": "assets/football/football 3.jpeg", "location": "London, England"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(180), // Increased app bar height
        child: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centering the texts vertically
            crossAxisAlignment: CrossAxisAlignment.center, // Centering the texts horizontally
            children: const [
              Text(
                "Football Arena",
                style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4), // A small gap between the title and subtitle
              Text(
                "Explore the best arenas",
                style: TextStyle(color: Colors.black54, fontSize: 14),
              ),
            ],
          ),
          backgroundColor: Colors.green,
          actions: [
            // Right-side image in app bar
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/football/football 1.jpg', // Replace with your image
                height: 180, // Make the image larger to fill the height of the app bar
                width: 180,  // Adjust width as needed to match the height
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // List of Football Stadiums
          Expanded(
            child: ListView.builder(
              itemCount: stadiums.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      height: 220,
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          // Stadium Image
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              stadiums[index]['image']!,
                              width: 200,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 20),

                          // Stadium Name and Location
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  stadiums[index]['name']!,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  stadiums[index]['location']!,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
