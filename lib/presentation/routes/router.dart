import 'package:auto_route/auto_route_annotations.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/notes/note_form/note_form_page.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/notes/notes_overview/notes_overview_page.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/sign_in/sign_in_page.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/splash/splash_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  SplashPage splashPage;
  SignInPage signInPage;
  NotesOverviewPage notesOverviewPage;
  @MaterialRoute(fullscreenDialog: true)
  NoteFormPage noteFormPage;
}
