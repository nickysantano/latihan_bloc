part of 'colors_bloc.dart';

@immutable
abstract class ColorsEvent extends Equatable{

  const ColorsEvent();

  @override
  List<Object> get props => [];

}

class ChangeColor extends ColorsEvent{}
