class SampleModel {
  final String notNullable;
  final String? nullable;

  SampleModel({
    required this.notNullable,
    this.nullable,
  });

  factory SampleModel.fromMap(Map<String, dynamic> map) => SampleModel(
        notNullable: map['notNullable'].toString(),
        nullable: map['notNullable']?.toString(),
      );

  toJson() => {
        "notNullable": notNullable,
        "nullable": nullable,
      };
}
