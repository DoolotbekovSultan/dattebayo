part of 'tailed_beasts_bloc.dart';

sealed class TailedBeastsState {}

final class TailedBeastsInitial extends TailedBeastsState {}

final class TailedBeastsLoading extends TailedBeastsState {}

final class GetTailedBeastsSuccess extends TailedBeastsState {
  final List<TailedBeast> tailedBeasts;
  GetTailedBeastsSuccess({required this.tailedBeasts});
}

final class GetTailedBeastByIdSuccess extends TailedBeastsState {
  final TailedBeast? tailedBeast;
  GetTailedBeastByIdSuccess({required this.tailedBeast});
}

final class TailedBeastsError extends TailedBeastsState {
  final String message;
  TailedBeastsError({required this.message});
}
