import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Picture')),
      body: Center(child: Text('ProfilePic Page')),
    );
  }
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.pinkAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Stack(
            clipBehavior: Clip.none, //? Allow overflow (for the shadow effect)
            children: [
              Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.purpleAccent,
                              backgroundColor: Colors.white70,
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.person_add_alt,
                                  color: Colors.purpleAccent,
                                ),
                                SizedBox(width: 3),
                                Text(
                                  "Connection",
                                  style: TextStyle(
                                    color: Colors.purpleAccent,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white70,
                              foregroundColor: Colors.purpleAccent,
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.message_outlined,
                                  color: Colors.purpleAccent,
                                ),
                                SizedBox(width: 3),
                                Text(
                                  "Message ",
                                  style: TextStyle(
                                    color: Colors.purpleAccent,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50),

                      Text(
                        "Charlie Hunnam",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 2),

                      Text(
                        "Newcastle upon Tyne, England",
                        style: TextStyle(color: Colors.black45, fontSize: 12),
                      ),

                      SizedBox(height: 25),

                      Text(
                        "King Arthur: Legend of the Sword",
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                      ),
                      SizedBox(height: 4),

                      Text(
                        " European Film Premiere",
                        style: TextStyle(color: Colors.black45, fontSize: 12),
                      ),

                      Text(
                        "Actor",
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                      ),

                      SizedBox(height: 30),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16, left: 16),
                            child: Column(
                              children: [
                                Text(
                                  "63",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Friends",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              Text(
                                "45",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Photo",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              Text(
                                "21",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Comments",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.purple, Colors.pinkAccent],
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfilePic(),
                              ),
                            );
                          },
                          child: Text(
                            "Show More",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -60,
                left: 400 / 2 - 60,
                child: Container(
                  padding: EdgeInsets.all(4), // Border width
                  decoration: BoxDecoration(
                    color: Colors.white, // Border color
                    shape: BoxShape.circle, //?the border shape
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 66, // 70 - border width
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSxrWjvdxLgN9VX0I7ee68N8kMAjzycBvgNuBPi5Fi_kdn0Ou5ULvfDWRgtWE2z_z1f9t6iCRsGuPkoLpU",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
