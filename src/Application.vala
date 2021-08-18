public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.NRDfoss.helo-world-in-vala",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = "hello amogis"
        };
        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}