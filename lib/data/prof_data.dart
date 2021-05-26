import '../data/prof_model.dart';

class ProfDummyData {
  final dummyDetails = [
    ProfModel(
      email: 'something@testing.edu',
      password: 'password@123',
      name: 'Mr. Mike Coke',
      designation: 'Assistant Professor',
      idNo: '933564',
      phNo: '97056897420',
      researchInterest: 'Data Mining',
    ),
    ProfModel(
      email: 'random@testing.edu',
      password: 'asdfg102',
      name: 'Dr. Hugh Jass',
      designation: 'Associate Head',
      idNo: '445685',
      phNo: '9856147249',
      researchInterest: 'Web Designing',
    ),
    ProfModel(
      email: 'xyz@testing.edu',
      password: 'lamepassword',
      name: 'Dr. Joe Mama',
      designation: 'Assistant Professor',
      idNo: '933564',
      phNo: '9849524750',
      researchInterest: 'Artificial Intelligence',
    ),
  ];
}