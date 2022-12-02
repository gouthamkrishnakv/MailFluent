
public class Application : Adw.Application {
    public Application () {
        Object (application_id: "com.crosine.MailFluent", flags: ApplicationFlags.FLAGS_NONE);
    }

    construct {
        ActionEntry[] action_entries = {
            { "about", this.on_about_action },
            { "preferences", this.on_preferences_action },
            { "quit", this.quit }
        };
        this.add_action_entries (action_entries, this);
        this.set_accels_for_action ("app.quit", { "<primary>q" });
    }

    public override void activate () {
        base.activate ();
        Gtk.Window win = this.active_window;
        if (win == null) {
            win = new MailFluent.MainWindow (this);
        }
        win.present ();
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

    private void on_preferences_action () {
        message ("app.preferences action activated");
    }
}