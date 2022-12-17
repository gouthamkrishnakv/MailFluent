
[GtkTemplate(ui = "/com/crosine/MailFluent/ui/MainWindow.ui")]
public class MailFluent.MainWindow : Adw.ApplicationWindow {

    [GtkChild]
    private unowned SideBar sidebar;

    [GtkChild]
    private unowned Gtk.ToggleButton sidebar_toggle;

    [GtkChild]
    private unowned MainPane main_app_pane;

    // Main Window
    public MainWindow(Gtk.Application app) {
        Object(application: app);
        // Think about adding setups later on.
        //  this.setup_actions();
    }

    //  private void setup_actions() {
    //      var toggle_sidebar_action = new SimpleAction("win.toggle-sidebar", null);
    //      toggle_sidebar_action.activate.connect(this.toggle_sidebar);
    //      this.add_action(toggle_sidebar_action);
    //  }

    [GtkCallback]
    private void compose_clicked() {
        stdout.printf("Compose Button Clicked\n");
        stdout.flush();
    }

    public void toggle_sidebar() {
        this.sidebar_toggle.set_active(!this.sidebar_toggle.get_active());
    }
}
