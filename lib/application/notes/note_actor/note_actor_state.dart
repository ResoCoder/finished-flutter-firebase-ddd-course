part of 'note_actor_bloc.dart';

@freezed
abstract class NoteActorState with _$NoteActorState {
  const factory NoteActorState.initial() = Initial;
  const factory NoteActorState.actionInProgress() = ActionInProgress;
  const factory NoteActorState.deleteFailure(NoteFailure noteFailure) =
      DeleteFailure;
  const factory NoteActorState.deleteSuccess() = DeleteSuccess;
}
