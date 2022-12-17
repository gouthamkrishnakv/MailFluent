
class Main {
    private static bool version = false;
    private static bool background_service = false;
    
    private const OptionEntry[] options = {
        // --version
        {"version", '\0', OptionFlags.NONE, OptionArg.NONE, ref version, "Display version", null},
        // --background-service
        {"background-service", '\0', OptionFlags.NONE, OptionArg.NONE, ref background_service, "Only start background service", null},
        // List terminator
        { null }
    };
    
    public static int main (string[] args) {
        try {
            var opt_context = new OptionContext(" - A simple and fast mail application");
            opt_context.set_help_enabled(true);
            opt_context.add_main_entries(options, null);
            opt_context.parse(ref args);
        } catch (OptionError e) {
            stderr.printf("Error: %s\n", e.message);
            // TODO: Change this to a config variable (APPEXEC maybe?).
            stderr.printf("Run `%s --help` to see a full list of command-line options", "com.crosine.MailFluent");
            // Exit with error
            return 1;
        }
        // If version is asked, pass the version in
        if (version) {
            stdout.printf("%s %s", "com.crosine.MailFluent", Config.VERSION);
            return 0;
        }
        if (background_service) {
            stderr.printf("%s: %s Not Implemented Yet.", "com.crosine.MailFluent", "Background Services");
            return 0;
        }
        // For other cases, just pass the application
        var app = new Application (background_service);
        return app.run (args);
    }
}