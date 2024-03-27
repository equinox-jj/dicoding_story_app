import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'maps_event.dart';
part 'maps_state.dart';
part 'maps_bloc.freezed.dart';

class MapsBloc extends Bloc<MapsEvent, MapsState> {
  MapsBloc() : super(_Initial()) {
    on<MapsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
