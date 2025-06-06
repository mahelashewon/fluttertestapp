import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCategory = 'Chest';

  final categories = ['Chest', 'Shoulders', 'Arms', 'Core', 'Legs'];
  final workouts = {
    'Chest': 'Touch Mudder Full Body',
    'Shoulders': 'Core Buster',
    'Arms': 'Bicep Curls',
    'Core': 'Plank Challenge',
    'Legs': 'Squat Circuit'
  };

  final communities = {
    'Austin': 'Divas of Austin',
    'Phoenix': 'Boulderers of Arizona',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Good Morning'),
        actions: [
          CircleAvatar(child: Icon(Icons.person)),
        ],
      ),
      body: Column(
        children: [
          // Category Selection Row (Horizontal Scroll)
          Container(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategory = categories[index];
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: selectedCategory == categories[index]
                          ? Colors.blue
                          : Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      categories[index],
                      style: TextStyle(
                        color: selectedCategory == categories[index]
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // Workout and Communities List
          Expanded(
            child: ListView(
              children: [
                Card(
                  child: ListTile(
                    title: Text(workouts[selectedCategory]!),
                    subtitle: Text('Number of workouts'),
                    leading: Icon(Icons.fitness_center),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('Top Communities'),
                    subtitle: Text('Search and explore'),
                    leading: Icon(Icons.group),
                    trailing: Icon(Icons.search),
                  ),
                ),
                ...communities.entries.map(
                  (entry) => Card(
                    child: ListTile(
                      title: Text(entry.value),
                      subtitle: Text(entry.key),
                      leading: Icon(Icons.location_on),
                    ),
                  ),
                ).toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
