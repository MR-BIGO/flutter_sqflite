import 'package:flutter/material.dart';
import 'package:flutter_sqflite/db/students.dart';
import 'package:flutter_sqflite/db/database_helper.dart';
import 'package:flutter_sqflite/presentation/widgets/list_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

 

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final dbHelper = DatabaseHelper.instance;
  late List<Students> students;

  bool isLoading = false;

  


  @override
  
  Widget build(BuildContext context) {
    final amount = dbHelper.queryRowCount();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'STUDENT DATABASE',
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      body: 
           Column(
            
            children: [
              ListView.builder(
                
                itemCount: amount,
                scrollDirection: Axis.vertical,
                
                itemBuilder: (BuildContext context, int index) {
                  final student = students[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/update', arguments: {
                        "student": student,
                      });
                    },
                    
                    child: ListItem(
                        name: student.name, age: student.age, id: student.id!),
                        
                        
                  );
                  
                },
              ),
            ],
         
           
        
           
      ),
    );
  }
}
