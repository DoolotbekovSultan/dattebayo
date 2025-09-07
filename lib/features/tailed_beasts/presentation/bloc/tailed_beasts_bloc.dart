import 'package:bloc/bloc.dart';
import 'package:dattebayo/features/tailed_beasts/domain/entities/tailed_beast.dart';
import 'package:dattebayo/features/tailed_beasts/domain/usecases/get_tailed_beast_by_id_usecase.dart';
import 'package:dattebayo/features/tailed_beasts/domain/usecases/get_tailed_beasts_usecase.dart';
part 'tailed_beasts_event.dart';
part 'tailed_beasts_state.dart';

class TailedBeastsBloc extends Bloc<TailedBeastsEvent, TailedBeastsState> {
  final GetTailedBeastsUsecase getTailedBeastsUsecase;
  final GetTailedBeastByIdUsecase getTailedBeastByIdUsecase;

  TailedBeastsBloc({
    required this.getTailedBeastsUsecase,
    required this.getTailedBeastByIdUsecase,
  }) : super(TailedBeastsInitial()) {
    on<GetTailedBeastsEvent>(_onGetTailedBeasts);
    on<GetTailedBeastByIdEvent>(_onGetTailedBeastById);
  }

  Future<void> _onGetTailedBeasts(
    GetTailedBeastsEvent event,
    Emitter<TailedBeastsState> emit,
  ) async {
    emit(TailedBeastsLoading());
    try {
      final tailedBeasts = await getTailedBeastsUsecase(name: event.name);
      emit(GetTailedBeastsSuccess(tailedBeasts: tailedBeasts));
    } catch (e) {
      emit(TailedBeastsError(message: e.toString()));
    }
  }

  Future<void> _onGetTailedBeastById(
    GetTailedBeastByIdEvent event,
    Emitter<TailedBeastsState> emit,
  ) async {
    emit(TailedBeastsLoading());
    try {
      final tailedBeast = await getTailedBeastByIdUsecase(id: event.id);
      emit(GetTailedBeastByIdSuccess(tailedBeast: tailedBeast));
    } catch (e) {
      emit(TailedBeastsError(message: e.toString()));
    }
  }
}
