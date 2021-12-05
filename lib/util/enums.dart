enum Gender { male, female, others }

String genderEnum2String(Gender g) {
  switch (g) {
    case Gender.male:
      return "Male";
    case Gender.female:
      return "Female";
    case Gender.others:
      return "Other";
    default:
      return "Other";
  }
}
