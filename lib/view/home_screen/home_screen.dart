// ignore_for_file: use_build_context_synchronously, prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phnController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.skip_next),
      ),
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () async {},
            child: const Icon(Icons.logout),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Name",
                prefixIcon: Icon(Icons.person),
                contentPadding: EdgeInsets.all(8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: phnController,
              decoration: InputDecoration(
                labelText: "Phone",
                prefixIcon: Icon(Icons.phone),
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: Text("Add"),
            ),
            SizedBox(height: 20),
            // Expanded(
            //   child: StreamBuilder<QuerySnapshot>(
            //     stream: FirebaseFirestore.instance
            //         .collection('users')
            //         .doc(firebaseController.auth.currentUser?.uid)
            //         .collection('contacts')
            //         .snapshots(),
            //     builder: (context, snapshot) {
            //       if (snapshot.connectionState == ConnectionState.waiting) {
            //         return CircularProgressIndicator();
            //       }
            //       if (snapshot.hasError) {
            //         return Text("Something went wrong");
            //       }
            //       if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            //         return Text("No data available");
            //       }
            //       return ListView.builder(
            //         itemCount: snapshot.data!.docs.length,
            //         itemBuilder: (context, index) {
            //           var data = snapshot.data!.docs[index].data()
            //               as Map<String, dynamic>;
            //           return ListTile(
            //             title: Text(data['name'] ?? ''),
            //             subtitle: Text(data['phn'] ?? ''),
            //             trailing: Row(
            //               mainAxisSize: MainAxisSize.min,
            //               children: [
            //                 IconButton(
            //                   onPressed: () {
            //                     nameController.text = data['name'] ?? '';
            //                     phnController.text = data['phn'] ?? '';
            //                   },
            //                   icon: Icon(Icons.edit),
            //                 ),
            //                 IconButton(
            //                   onPressed: () {
            //                     firebaseController
            //                         .deleteData(snapshot.data!.docs[index].id);
            //                   },
            //                   icon: Icon(Icons.delete),
            //                 ),
            //               ],
            //             ),
            //           );
            //         },
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
