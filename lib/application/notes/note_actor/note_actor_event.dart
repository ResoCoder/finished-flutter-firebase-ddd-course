part of 'note_actor_bloc.dart';

@freezed
abstract class NoteActorEvent with _$NoteActorEvent {
  const factory NoteActorEvent.deleted(Note note) = _Deleted;
  // If we had a functionality of completing todos right from the overview UI, "ModifyTodo" event would go here

}
