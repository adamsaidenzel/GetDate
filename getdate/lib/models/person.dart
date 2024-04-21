import 'package:cloud_firestore/cloud_firestore.dart';

class Person{
  //personal info
  String? imageProfile;
  String? email;
  String? password;
  String? name;
  int? age;
  String? phoneNo;
  String? city;
  String? country;
  String? profileHeading;
  String? lookingForInPartner;
  int? publishedDateTime;

  //appearance
  String? height;
  String? weight;
  String? bodyType;

  //life style
  String? drink;
  String? smoke;
  String? martialStatus;
  String? haveChildren;
  String? noOfChildren;
  String? profession;
  String? employmentStatus;
  String? income;
  String? livingSituation;
  String? willingToRelocate;
  String? relationshipYouAreLookingFor;

  //Background - Cultural Values
  String? nationality;
  String? education;
  String? languageSpoken;
  String? religion;
  String? ethnicity;

  Person({
    //personal info
    this.imageProfile,
    this.email,
    this.password,
    this.name,
    this.age,
    this.phoneNo,
    this.city,
    this.country,
    this.profileHeading,
    this.lookingForInPartner,
    this.publishedDateTime,

    //appearance
    this.height,
    this.weight,
    this.bodyType,

    //life style
    this.drink,
    this.smoke,
    this.martialStatus,
    this.haveChildren,
    this.noOfChildren,
    this.profession,
    this.employmentStatus,
    this.income,
    this.livingSituation,
    this.willingToRelocate,
    this.relationshipYouAreLookingFor,

    //background cultural - values
    this.nationality,
    this.education,
    this.languageSpoken,
    this.religion,
    this.ethnicity,


  });

  static Person fromDataSnapshot(DocumentSnapshot snapshot){
    var dataSnapshot = snapshot.data() as Map<String, dynamic>;

    return Person(
      //personal info
      name: dataSnapshot["name"],
      imageProfile: dataSnapshot["imageProfile"],
      email: dataSnapshot["email"],
      password: dataSnapshot["password"],
      age: dataSnapshot["age"],
      phoneNo: dataSnapshot["phoneNo"],
      city: dataSnapshot["city"],
      country: dataSnapshot["country"],
      profileHeading: dataSnapshot["profileHeading"],
      lookingForInPartner: dataSnapshot["lookingForInPartner"],
      publishedDateTime: dataSnapshot["publishedDateTime"],

      //appearance
      height: dataSnapshot["height"],
      weight: dataSnapshot["weight"],
      bodyType: dataSnapshot["bodyType"],

      //life style
      drink: dataSnapshot["drink"],
      smoke: dataSnapshot["smoke"],
      martialStatus: dataSnapshot["martialStatus"],
      haveChildren: dataSnapshot["haveChildren"],
      noOfChildren: dataSnapshot["noOfChildren"],
      profession: dataSnapshot["profession"],
      employmentStatus: dataSnapshot["employmentStatus"],
      income: dataSnapshot["income"],
      livingSituation: dataSnapshot["livingSituation"],
      willingToRelocate: dataSnapshot["willingToRelocate"],
      relationshipYouAreLookingFor: dataSnapshot["relationshipYouAreLookingFor"],

      //background cultural-values
      nationality: dataSnapshot["nationality"],
      education: dataSnapshot["education"],
      languageSpoken: dataSnapshot["languageSpoken"],
      religion: dataSnapshot["religion"],
      ethnicity: dataSnapshot["ethnicity"],



    );
  }

  Map<String, dynamic> toJson()=>
      {
        //personal info
        "imageProfile": imageProfile,
        "email": email,
        "password": password,
        "name": name,
        "age": age,
        "phoneNo": phoneNo,
        "city": city,
        "country": country,
        "profileHeading": profileHeading,
        "lookingForInPartner": lookingForInPartner,
        "publishedDateTime": publishedDateTime,

        //Appearance
        "height": height,
        "weight": weight,
        "bodyType": bodyType,

        //life style
        "drink": drink,
        "smoke": smoke,
        "martialStatus": martialStatus,
        "haveChildren": haveChildren,
        "noOfChildren": noOfChildren,
        "profession": profession,
        "employmentStatus": employmentStatus,
        "income": income,
        "livingSituation": livingSituation,
        "willingToRelocate": willingToRelocate,
        "relationshipYouAreLookingFor": relationshipYouAreLookingFor,

        //background cultural - values
        "nationality": nationality,
        "education": education,
        "languageSpoken": languageSpoken,
        "religion": religion,
        "ethnicity": ethnicity,




      };
}