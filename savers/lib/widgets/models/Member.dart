class Member {
  final String nickname;
  final String name;
  final int age;
  final String gender;
  final String medicalCondition;
  final String etc;

  Member({
    required this.nickname,
    required this.name,
    required this.age,
    required this.gender,
    required this.medicalCondition,
    required this.etc,
  });

  factory Member.fromJson(Map<String, dynamic> json) {
    return Member(
      nickname: json['nickname'],
      name: json['name'],
      age: json['age'],
      gender: json['gender'],
      medicalCondition: json['medicalCondition'],
      etc: json['etc'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nickname': nickname,
      'name': name,
      'age': age,
      'gender': gender,
      'medicalCondition': medicalCondition,
      'etc': etc,
    };
  }
}
