package js.cordova.plugin;

typedef ListPickerItem<T> = {
	text : String,
	value : T
}

typedef ListPickerOptions<T> = {
	title : String, 
    items : Array<ListPickerItem<T>>,
    selectedValue : T,
    doneButtonLabel : String,
    cancelButtonLabel : String
}

/**
Extern for the [cordova-plugin-listpicker](https://github.com/roberthovhannisyan/PhoneGap-Plugin-ListPicker) plugin.
**/
@:native("window.plugins.listpicker")
extern class ListPicker {
	public static function showPicker<T>(opts : ListPickerOptions<T>, onSuccess : T -> Void, onError : String -> Void) : Void;
}
