part of 'tack_photo_cubit.dart';

@immutable
abstract class TackState {}
class TackInitialState extends TackState{}
class PickImageSuccess extends TackState{}
class PickImageError extends TackState{}
