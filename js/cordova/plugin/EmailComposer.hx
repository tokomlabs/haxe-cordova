package js.cordova.plugin;

typedef EmailData = {
    @:optional var to : Array<String>;
    @:optional var cc : Array<String>;
    @:optional var bcc : Array<String>;
    /**
     * paths to the files you want to attach or base64 encoded data streams
     */
    @:optional var attachments : Array<Dynamic>;
    @:optional var subject : String;
    @:optional var body : String;
    @:optional var isHtml : Bool;
}

/**
Extern for the [cordova-plugin-email-composer](https://github.com/katzer/cordova-plugin-email-composer.git) plugin.
**/
@:native("window.plugin.email")
extern class EmailComposer {
    public static function isAvailable(isAvailable : Bool -> Void) : Void;
    public static function open(email : EmailData) : Void;
}
