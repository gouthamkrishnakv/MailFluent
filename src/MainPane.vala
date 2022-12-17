/**
 *  MainPane
 *
 *  Copyright (C) 2022 Goutham Krishna K V
 */

[GtkTemplate(ui = "/com/crosine/MailFluent/ui/MainPane.ui")]
public class MailFluent.MainPane : Gtk.Box {
    [GtkChild]
    private unowned Adw.StatusPage status_page;
}