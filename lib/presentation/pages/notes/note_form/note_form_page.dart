import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

import 'package:finished_notes_firebase_ddd_course/application/notes/note_form/note_form_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/domain/notes/note.dart';
import 'package:finished_notes_firebase_ddd_course/injection.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/notes/note_form/widgets/add_todo_tile_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/notes/note_form/widgets/body_field_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/notes/note_form/widgets/color_field_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/notes/note_form/widgets/todo_list_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/routes/router.gr.dart';

class NoteFormPage extends HookWidget {
  final Note editedNote;

  const NoteFormPage({
    Key key,
    @required this.editedNote,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NoteFormBloc>()
        ..add(NoteFormEvent.initialized(optionOf(editedNote))),
      child: BlocConsumer<NoteFormBloc, NoteFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: failure.map(
                        // Use localized strings here in your apps
                        insufficientPermissions: (_) =>
                            'Insufficient permissions ❌',
                        unableToUpdate: (_) =>
                            "Couldn't update the note. Was it deleted from another device?",
                        unexpected: (_) =>
                            'Unexpected error occured, please contact support.'),
                  ).show(context);
                },
                (_) {
                  // Can't be just a simple pop. If another route (like a Flushbar) is on top of stack, we'll need to pop even that to get to
                  // the overview page.
                  Router.navigator.popUntil((route) =>
                      route.settings.name == Router.notesOverviewPage);
                },
              );
            },
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              const NoteFormPageScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({
    Key key,
    @required this.isSaving,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircularProgressIndicator(),
              const SizedBox(height: 8),
              Text(
                'Saving',
                // Not within a Scaffold. We have to get the TextStyle from a theme ourselves.
                style: Theme.of(context).textTheme.body2.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NoteFormPageScaffold extends StatelessWidget {
  const NoteFormPageScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: BlocBuilder<NoteFormBloc, NoteFormState>(
            condition: (p, c) => p.isEditing != c.isEditing,
            builder: (context, state) =>
                Text(state.isEditing ? 'Edit a note' : 'Create a note'),
          ),
          actions: <Widget>[
            Builder(
              builder: (context) {
                return IconButton(
                  icon: Icon(Icons.check),
                  onPressed: () {
                    context
                        .bloc<NoteFormBloc>()
                        .add(const NoteFormEvent.saved());
                  },
                );
              },
            ),
          ],
        ),
        body: BlocBuilder<NoteFormBloc, NoteFormState>(
          condition: (p, c) => p.showErrorMessages != c.showErrorMessages,
          builder: (context, state) {
            return ChangeNotifierProvider(
              // State for the todo list.
              // We can't operate with the validated ValueObjects and Entities directly in the UI
              // Just like the SignInForm holds its state in TextEditingControllers as raw strings and we use ValueObjects such as EmailAddress
              // only for showing messages and whatnot, we need to do the same here with the TodoList - but we, of course, have to manage the
              // primitive state ourselves. After all, there isn't a pre-built widget for managing the values multiple checkboxes and text fields
              create: (_) => FormTodos(),
              child: Form(
                autovalidate: state.showErrorMessages,
                child: const CustomScrollView(
                  slivers: <Widget>[
                    SliverToBoxAdapter(child: BodyField()),
                    SliverToBoxAdapter(child: ColorField()),
                    SliverToBoxAdapter(child: TodoList()),
                    SliverToBoxAdapter(child: AddTodoTile()),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
