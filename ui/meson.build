# MailFluent: UI
#
# Copyright (C) 2022 Crosine Inc.

blueprints = custom_target('blueprints',
  input: files(
    'MainWindow.blp'
  ),
  output: '.',
  command: [find_program('blueprint-compiler'), 'batch-compile', '@OUTPUT@', '@CURRENT_SOURCE_DIR@', '@INPUT@'],
)


ui_resources += gnome.compile_resources('com.crosine.MailFluent.UI',
  'mailfluent.ui.gresource.xml',
  dependencies: blueprints,
  c_name: 'mailfluent_ui'
)

