late String tableStudents = 'students';

class StudentFields {
  static final List<String> values = [
    id, name, age
  ];
  
  static final String id = '_id';
  static final String name = 'name';
  static final String age = 'age';

}

class Students {

  final int? id;
  final String name;
  final int age;

    Students({
    this.id,
    required this.name,
    required this.age,
  });

//   Students copy({

//     int? id,
//     String? name,
//     int? age,
//   }) =>
//     Students(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       age: age ?? this.age
//     );
  

  static Students fromJson(Map<String, Object?> json) => Students(
    id: json[StudentFields.id] as int?,
    age: json[StudentFields.age] as int,
    name: json[StudentFields.name] as String,

  );


  Map<String, Object?> toJson() => {
    StudentFields.id: id,
    StudentFields.name: name,
    StudentFields.age: age,

  };
 }