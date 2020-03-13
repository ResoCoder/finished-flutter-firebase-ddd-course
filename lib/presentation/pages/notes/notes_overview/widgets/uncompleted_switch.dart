import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:time/time.dart';
import 'package:finished_notes_firebase_ddd_course/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/notes/notes_overview/misc/icon_switch_data.dart';

class UncompletedSwitch extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final uncompletedSwitchState = useState(
      IconSwitchData(toggle: false, icon: Icon(Icons.indeterminate_check_box)),
    );

    return InkResponse(
      onTap: () {
        final s = uncompletedSwitchState;
        s.value = s.value.copyWith(toggle: !s.value.toggle);
        s.value = s.value.toggle
            ? s.value.copyWith(
                icon: Icon(
                Icons.check_box_outline_blank,
                key: const Key('outline'),
              ))
            : s.value.copyWith(
                icon: Icon(
                Icons.indeterminate_check_box,
                key: const Key('indeterminate'),
              ));
        performAction(context, uncompleted: s.value.toggle);
      },
      child: AnimatedSwitcher(
        duration: 100.milliseconds,
        transitionBuilder: (child, animation) => ScaleTransition(
          scale: animation,
          child: child,
        ),
        child: uncompletedSwitchState.value.icon,
      ),
    ).padding(horizontal: 16);
  }

  void performAction(BuildContext context, {@required bool uncompleted}) {
    context.bloc<NoteWatcherBloc>().add(
          uncompleted
              ? const NoteWatcherEvent.watchUncompletedStarted()
              : const NoteWatcherEvent.watchAllStarted(),
        );
  }
}
