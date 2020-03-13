part of 'note_watcher_bloc.dart';

@freezed
abstract class NoteWatcherState with _$NoteWatcherState {
  const factory NoteWatcherState.initial() = Initial;
  const factory NoteWatcherState.loadInProgress() = DataTransferInProgress;
  const factory NoteWatcherState.loadSuccess(KtList<Note> notes) = LoadSuccess;
  const factory NoteWatcherState.loadFailure(NoteFailure noteFailure) =
      LoadFailure;
}
