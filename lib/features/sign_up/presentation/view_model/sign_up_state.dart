part of 'sign_up_cubit.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}
class PositionNameState extends SignUpState{}
class PickImageSuccess extends SignUpState{}
class PickImageError extends SignUpState{}
