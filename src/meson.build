# Source File Build Recipe

# App Dependencies
mailfluent_deps = [
  dependency('gio-2.0'),
  dependency('gtk4'),
  dependency('libadwaita-1'),
  dependency('sqlite3')
]

# App Source Files
mailfluent_sources = [
  'Main.vala',
  # `Config.vala` generated from `Config.vala.in` by applying configuration
  'Config.vala',
  'Application.vala',
  'MainWindow.vala',
  'SideBar.vala',
  'MainPane.vala'
]

# Add UI Resources
mailfluent_sources += ui_resources

# AppData Directory
data_dir = join_paths(get_option('prefix'), get_option('datadir'), meson.project_name())

# Initialize Configuration Data
conf = configuration_data()
# Set AppData Directory)
conf.set('DATADIR', data_dir)
conf.set('VERSION', meson.project_version())

# Apply Configurations
configure_file(
  input: 'Config.vala.in',
  output: 'Config.vala',
  configuration: conf
)

# Copy from build directory to source directory
run_command(
  'cp',
  meson.project_build_root() / 'src' / 'Config.vala',
  meson.project_source_root() / 'src' / 'Config.vala',
  check: true
)

# Compile Executable
executable('mailfluent', mailfluent_sources,
  dependencies: mailfluent_deps,
  vala_args: [
    '--target-glib=2.50',
    '--gresourcesdir=ui/'
  ],
  install: true,
)
