
[GtkTemplate(ui = "/com/crosine/MailFluent/ui/MainWindow.ui")]
public class MailFluent.MainWindow : Adw.ApplicationWindow {

    [GtkChild]
    private unowned SideBar sidebar;

    // Main Window
    public MainWindow(Gtk.Application app) {
        Object(application: app);
    }

    [GtkCallback]
    private void compose_clicked() {
        stdout.printf("Compose Button Clicked\n");
        stdout.flush();
    }
}
