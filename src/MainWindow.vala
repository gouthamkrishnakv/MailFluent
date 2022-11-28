
namespace Mailfluent {
    [GtkTemplate (ui = "/com/crosine/MailFluent/ui/MainWindow.ui")]
    public class Window : Adw.ApplicationWindow {
        [GtkChild]
        private unowned Gtk.Label label;

        public Window (Gtk.Application app) {
            Object (application: app);
        }
    }
}
