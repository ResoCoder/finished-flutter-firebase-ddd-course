// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/splash/splash_page.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/sign_in/sign_in_page.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/notes/notes_overview/notes_overview_page.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/notes/note_form/note_form_page.dart';
import 'package:finished_notes_firebase_ddd_course/domain/notes/note.dart';

class Router {
  static const splashPage = '/';
  static const signInPage = '/sign-in-page';
  static const notesOverviewPage = '/notes-overview-page';
  static const noteFormPage = '/note-form-page';
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SplashPage(),
          settings: settings,
        );
      case Router.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SignInPage(),
          settings: settings,
        );
      case Router.notesOverviewPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => NotesOverviewPage().wrappedRoute,
          settings: settings,
        );
      case Router.noteFormPage:
        if (hasInvalidArgs<NoteFormPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<NoteFormPageArguments>(args);
        }
        final typedArgs = args as NoteFormPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (_) => NoteFormPage(
              key: typedArgs.key, editedNote: typedArgs.editedNote),
          settings: settings,
          fullscreenDialog: true,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//NoteFormPage arguments holder class
class NoteFormPageArguments {
  final Key key;
  final Note editedNote;
  NoteFormPageArguments({this.key, @required this.editedNote});
}
