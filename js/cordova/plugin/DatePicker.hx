package js.cordova.plugin;

@:enum
abstract DatePickerMode(String) from String to String {
	var DateMode = "date";
	var TimeMode = "time";
	var DatetimeMode = "datetime";
}

@:enum
abstract DatePickerPopoverArrowDirection(String) from String to String {
	var UpArrowDir = "up";
	var DownArrowDir = "down";
	var LeftArrowDir = "left";
	var RightArrowDir = "right";
	var AnyArrowDir = "any";
}

@:enum
abstract DatePickerAndroidTheme(Int) from Int to Int {
	var TraditionalTheme = 1;
	var HoloDarkTheme = 2;
	var HoloLightTheme = 3;
	var DefaultDarkTheme = 4;
	var DefaultLightTheme = 5;
}

typedef DatePickerOptions = {
	? mode : DatePickerMode, // default: DatePickerMode.DateMode
	? date : Dynamic, // Date | empty String, default: Date.now()
	? minDate : Dynamic, // minDate is a Date object for iOS and a millisecond precision unix timestamp for Android, so you need to account for that when using the plugin. Also, on Android, only the date is enforced (time is not).
	? maxDate : Dynamic, // Date | empty String, default: (empty String)
	? titleText : String,
	? okText : String,
	? cancelText : String,
	? todayText : String,
	? nowText : String,
	? is24Hour : Bool, // default: false
	? androidTheme : DatePickerAndroidTheme, // default: DatePickerAndroidTheme.Traditional
	? allowOldDates : Bool, // default: true
	? allowFutureDates : Bool, // default: true
	? doneButtonLabel : String, // default: "Done"
	? doneButtonColor : String, // default: #0000FF
	? cancelButtonLabel : String, // default: Cancel
	? cancelButtonColor : String, // default: #000000
	? x : String, // default: 0
	? y : String, // default: 0
	? minuteInterval : Int, // default: 1
	? popoverArrowDirection : DatePickerPopoverArrowDirection, // default: DatePickerPopoverArrowDirection.Any
	? locale : String // default: en_us
}

/**
Extern for the [cordova-plugin-datepicker](https://github.com/VitaliiBlagodir/cordova-plugin-datepicker) plugin.
**/
@:native("datePicker")
extern class DatePicker {

	static public function show(options : DatePickerOptions, successCb : Date -> Void, errorCb : String -> Void) : Void;
}
