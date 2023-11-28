class Users {
  String? id;
  String? name;
  String? email;
  String? image;
  String? region;
  int? mobile;
  String? zone;
  bool? isOnline;
  String? description;
  int? price;

  String? subText;

  Users({
    required this.id,
    required this.name,
    this.email,
    this.image,
    this.region,
    this.mobile,
    this.zone,
    this.isOnline,
    this.subText,
    this.description,
    this.price,
  });

  static List<Users> userList() {
    return [
      Users(
          id: '01',
          name: "Aswanth",
          email: "aswanth@mailinator.com",
          image:
              "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80",
          region: "+971",
          mobile: 524796202,
          zone: "Dubai",
          isOnline: true),
      Users(
          id: '02',
          name: "Jibin",
          email: "jibin@mailinator.com",
          image:
              "https://img.freepik.com/free-photo/photo-serious-handsome-guy-posing-against-white-wall_273609-20462.jpg?w=2000",
          region: "+971",
          mobile: 581256393,
          zone: "Abudhabi",
          isOnline: false),
      Users(
          id: '03',
          name: "Faizan",
          email: "faizan@mailinator.com",
          image:
              "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
          region: "+971",
          mobile: 581256393,
          zone: "Abudhabi",
          isOnline: false),
      Users(
          id: '04',
          name: "Shameer",
          email: "shameer@yahoo.com",
          image:
              "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
          region: "+971",
          mobile: 762849475,
          zone: "Abudhabi",
          isOnline: true),
      Users(
          id: '05',
          name: "Akhil",
          email: "akhil@gmail.com",
          image:
              "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
          region: "+971",
          mobile: 762849475,
          zone: "Abudhabi",
          isOnline: true),
      Users(
          id: '06',
          name: "Ali Hasan",
          email: "alihasan@rediffmail.com",
          image:
              "https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
          region: "+971",
          mobile: 762849475,
          zone: "Sharja",
          isOnline: false),
      Users(
          id: '07',
          name: "Clarisa",
          email: "clarisa@rediffmail.com",
          image:
              "https://images.unsplash.com/photo-1614436163996-25cee5f54290?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
          region: "+971",
          mobile: 68732940204,
          zone: "Ajman",
          isOnline: true),
      Users(
          id: '08',
          name: "Susan",
          email: "susan@clearmail.com",
          image:
              "https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
          region: "+971",
          mobile: 128794349,
          zone: "Ajman",
          isOnline: true),
      Users(
          id: '09',
          name: "Nijo",
          email: "nijo@mailinator.com",
          image:
              "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
          region: "+971",
          mobile: 5940294868,
          zone: "Ras-AlKhaima",
          isOnline: true),
      Users(
          id: '10',
          name: "Venkitesh",
          email: "venki@trailmail.com",
          image:
              "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
          region: "+971",
          mobile: 5940294868,
          zone: "Deira",
          isOnline: false),
      Users(
          id: '11',
          name: "Vasu",
          email: "vasu@mailinator.com",
          image:
              "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80",
          region: "+971",
          mobile: 524796202,
          zone: "Dubai",
          isOnline: true),
      Users(
          id: '12',
          name: "Venu",
          email: "venu@mailinator.com",
          image:
              "https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
          region: "+971",
          mobile: 581256393,
          zone: "Abudhabi",
          isOnline: false),
      Users(
          id: '13',
          name: "Anjana",
          email: "anjana@mailinator.com",
          image:
              "https://images.unsplash.com/photo-1605993439219-9d09d2020fa5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
          region: "+971",
          mobile: 581256393,
          zone: "Abudhabi",
          isOnline: false),
      Users(
          id: '14',
          name: "Honey",
          email: "honey@yahoomail.com",
          image:
              "https://images.unsplash.com/photo-1534180477871-5d6cc81f3920?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
          region: "+971",
          mobile: 762849475,
          zone: "Abudhabi",
          isOnline: false),
      Users(
          id: '15',
          name: "Vishnu",
          email: "vishnu@gmail.com",
          image:
              "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
          region: "+971",
          mobile: 762849475,
          zone: "Al Ain",
          isOnline: false),
    ];
  }
}
