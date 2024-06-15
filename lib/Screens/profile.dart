import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Profile({Key? key});

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: [
                Text('logout'),
                IconButton(
                  onPressed: () {
                    // Navigate to login screen
                  },
                  icon: Icon(Icons.logout),
                )
              ],
            ),
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1633332755192-727a05c4013d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D'),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'name',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade500),
                  ),
                ),
                controller: _nameController,
                enabled: false,
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'email',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade500),
                  ),
                ),
                controller: _emailController,
                enabled: false,
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'phone',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade500),
                  ),
                ),
                controller: _phoneController,
                enabled: false,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(height: 30),
            // Container(
            //   padding: const EdgeInsets.symmetric(horizontal: 10),
            //   width: MediaQuery.of(context).size.width,
            //   child: ElevatedButton(
            //     onPressed: () {
            //       // Navigate to edit profile screen
            //     },
            //     style: ElevatedButton.styleFrom(
            //       primary: Colors.teal,
            //     ),
            //     child: Text('Edit'),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
