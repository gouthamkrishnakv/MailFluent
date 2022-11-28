mailfluent_sources = [
  'main.vala',
  'Application.vala',
  'MainWindow.vala',
]

mailfluent_deps = [
  dependency('gtk4'),
  dependency('libadwaita-1'),
]

mailfluent_sources += ui_resources

executable('mailfluent', mailfluent_sources,
  dependencies: mailfluent_deps,
  vala_args: [
    '--target-glib=2.50',
    '--gresourcesdir=ui/'
  ],
  install: true,
)


