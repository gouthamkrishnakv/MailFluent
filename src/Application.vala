
public class Application : Adw.Application {
    private bool background_service;

    private MailFluent.MainWindow main_window;

    public Application (bool background_service) {
        Object (application_id: "com.crosine.MailFluent", flags: ApplicationFlags.FLAGS_NONE);
        this.background_service = background_service;
    }

    construct {
        ActionEntry[] action_entries = {
            { "about", this.on_about_action },
            { "preferences", this.on_preferences_action },
            { "quit", this.quit },
            { "toggle-sidebar", this.main_window.toggle_sidebar }
        };
        this.add_action_entries (action_entries, this);
        this.set_accels_for_action ("app.quit", { "<primary>q" });
        this.set_accels_for_action ("toggle-sidebar", { "<primary>b" });
    }

    public override void activate () {
        base.activate ();
        Gtk.Window win = this.active_window;
        if (win == null) {
            this.main_window = new MailFluent.MainWindow (this);
            win = this.main_window;
            this.set_actions();
        }
        win.present ();
    }

    private void set_actions() {
        this.set_accels_for_action("win.toggle-sidebar", {"<Control><Shift>S"} );
    }

    private void on_about_action () {
        string[] developers = { "Goutham Krishna K V" };
        var about = new Adw.AboutWindow () {
            transient_for = this.active_window,
            application_name = "MailFluent",
            application_icon = "com.crosine.MailFluent",
            developer_name = "Crosine Inc.",
            version = "0.1.0",
            developers = developers,
            copyright = "© 2022 Crosine Inc."
        };

        about.present ();
    }

    private void on_sidebar_toggle() {
    }

    private void on_preferences_action () {
        message ("app.preferences action activated");
    }
}