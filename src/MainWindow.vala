
[GtkTemplate (ui = "/com/crosine/MailFluent/ui/MainWindow.ui")]
public class MainWindow : Adw.ApplicationWindow {
  // Main Window
  public MainWindow (Gtk.Application app) {
    Object (application: app);
  }

  [GtkCallback]
  private void compose_clicked() {
    stdout.printf("Compose Button Clicked\n");
    stdout.flush();
  }
}
