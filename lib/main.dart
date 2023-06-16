import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("My Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildAvatarAndName(),
            _buildDetails(),
            const Divider(
              thickness: 1,
              height: 30,
              color: Colors.white,
              indent: 20,
              endIndent: 20,
            ),
            const Text(
              "Hi, I am Husain, working as a full-time mobile app developer based in Mumbai",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            _buildEducationDetails(context),
            _buildSkills(context),
            const SizedBox(height: 100)
          ],
        ),
      ),
    );
  }

  Card _buildSkills(BuildContext context) {
    return Card(
      color: Colors.deepPurple.shade200,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(10),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Skills",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const Divider(
              thickness: 1,
              height: 10,
              color: Colors.white,
              endIndent: 20,
            ),
            const SizedBox(height: 5),
            Card(
              color: Theme.of(context).primaryColor.withOpacity(.5),
              elevation: 10,
              child: ListTile(
                leading: const CircleAvatar(child: Icon(Icons.bolt)),
                title: const Text(
                  "Figma",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                subtitle: Stack(
                  children: [
                    Container(
                      height: 10,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Container(
                      height: 10,
                      width: MediaQuery.of(context).size.width * .3,
                      decoration: BoxDecoration(
                          color: Colors.purple.shade400,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Theme.of(context).primaryColor.withOpacity(.5),
              elevation: 10,
              child: ListTile(
                leading: const CircleAvatar(child: Icon(Icons.bolt)),
                title: const Text(
                  "Flutter",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                subtitle: Stack(
                  children: [
                    Container(
                      height: 10,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Container(
                      height: 10,
                      width: MediaQuery.of(context).size.width * .5,
                      decoration: BoxDecoration(
                          color: Colors.purple.shade400,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Card _buildEducationDetails(BuildContext context) {
    return Card(
      color: Colors.deepPurple.shade200,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(10),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Education",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const Divider(
              thickness: 1,
              height: 10,
              color: Colors.white,
              endIndent: 20,
            ),
            const SizedBox(height: 5),
            Card(
              color: Theme.of(context).primaryColor.withOpacity(.5),
              elevation: 10,
              child: ListTile(
                leading: const CircleAvatar(child: Icon(Icons.school)),
                title: const Text(
                  "KJSIT, Sion",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  "BTech on Computer Engineering",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple.shade200,
                  ),
                ),
                trailing: Text(
                  "2021-2024",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple.shade200,
                  ),
                ),
              ),
            ),
            Card(
              color: Theme.of(context).primaryColor.withOpacity(.5),
              elevation: 10,
              child: ListTile(
                leading: const CircleAvatar(child: Icon(Icons.school)),
                title: const Text(
                  "KJSP, Vidyavihar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  "Diploma Computer Engineering",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple.shade200,
                  ),
                ),
                trailing: Text(
                  "2018-2021",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple.shade200,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _buildDetails() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.calendar_month,
                  color: Colors.white,
                ),
                SizedBox(width: 5),
                Text(
                  "16/11/2000",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 50),
            Row(
              children: const [
                Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                SizedBox(width: 5),
                Text(
                  "+91-7021965251",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.house,
                  color: Colors.white,
                ),
                SizedBox(width: 5),
                Text(
                  "Mumbai",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 50),
            Row(
              children: const [
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                SizedBox(width: 5),
                Text(
                  "husain@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Column _buildAvatarAndName() {
    return Column(
      children: [
        const SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 8,
            ),
            shape: BoxShape.circle,
          ),
          width: 150,
          height: 150,
          child: Image.asset(
            "assets/avatar.png",
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          "Husain Lokhandwala",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 15),
        const Text(
          "Flutter Mobile Application Developer",
          style: TextStyle(
            fontWeight: FontWeight.w200,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          "Working at an Ed-Tech Startup",
          style: TextStyle(
            fontWeight: FontWeight.w200,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
