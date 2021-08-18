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

        var button_hello = new Gtk.Button.with_label ("amogis") {
            margin = 12
        };
        
        button_hello.clicked.connect (() => {
            button_hello.label = "WHY DID YOU CLICK MEEEEEEEEEEEEEE";
            button_hello.sensitive = false;
        });

        main_window.add (button_hello);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}