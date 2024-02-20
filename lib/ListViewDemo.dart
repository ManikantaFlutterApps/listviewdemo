import 'package:flutter/material.dart';

import 'Student.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {

  List<Student> studentList = [

    Student(firstName: "Manikanta", lastName: "Reddy", mobileNumber: "7022503201"),
    Student(firstName: "Anusha", lastName: "Reddy", mobileNumber: "7022503202"),
    Student(firstName: "Bhavana", lastName: "Reddy", mobileNumber: "7022503203"),
    Student(firstName: "Charan", lastName: "Reddy", mobileNumber: "7022503204"),
    Student(firstName: "Deepika", lastName: "Reddy", mobileNumber: "7022503205"),
    Student(firstName: "Dhamodhar", lastName: "Reddy", mobileNumber: "7022503206")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListViewDemo"),backgroundColor: Colors.pinkAccent,),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: studentList.map((student) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  print("Clicked on ${student.firstName}");
                });
              },
              child: Center(
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text(student.firstName,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.pinkAccent),),

                        Text(student.lastName,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.pinkAccent),),

                        Text(student.mobileNumber,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.pinkAccent),),

                      ],
                    ),
                  ),

                ),
              ),
            );
          }).toList(),
        )
    );
  }
}
