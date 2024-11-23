public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "io.github.vfjr1968.gtk-hello",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var button_hello = new Gtk.Button.with_label ("Click me!") {
    margin_top = 12,
    margin_bottom = 12,
    margin_start = 12,
    margin_end = 12
};

button_hello.clicked.connect (() => {
    button_hello.label = "Hello World!";
    button_hello.sensitive = false;
});

        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = "Hello World"
        };
        main_window.present ();
        main_window.child = button_hello;

    }

    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}

