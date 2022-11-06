import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String id;
  final String name;
  final String? email;
  final String? profilePhoto;

  const UserEntity({
    required this.id,
    required this.name,
    this.email,
    this.profilePhoto,
  });

  @override
  List<Object?> get props => [id, name, email, profilePhoto];

  @override
  bool get stringify => true;
}
