part of 'tailed_beasts_bloc.dart';

sealed class TailedBeastsEvent {}

class GetTailedBeastsEvent extends TailedBeastsEvent {
  final String? name;
  GetTailedBeastsEvent({this.name});
}

class GetTailedBeastByIdEvent extends TailedBeastsEvent {
  final int id;
  GetTailedBeastByIdEvent({required this.id});
}
