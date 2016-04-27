package js.cordova.plugin;

typedef GlobalizationResult = {
	value : String	
}
@:enum
abstract GlobalizationErrorCode(Int) from Int to Int {
	var UnknownError = 0;
	var FormattingError = 1;
	var ParsingError = 2;
	var PatternError = 3;
}
typedef GlobalizationError = {
	code : GlobalizationErrorCode,
	message : String
}

@:enum
abstract DateTimeFormatLength(String) from String to String {
	var Short = "short";
	var Medium = "medium";
	var Long = "long";
	var Full = "full";
}
@:enum
abstract DateTimeSelector(String) from String to String {
	var Date = "date";
	var Time = "time";
	var DateAndTime = "date and time";
}
typedef DateToStringOptions = {
	formatLength : DateTimeFormatLength,
	selector : DateTimeSelector
}

/**
Extern for the [cordova-plugin-globalization](https://github.com/apache/cordova-plugin-globalization) plugin.
**/
@:native('navigator.globalization')
extern class Globalization {
	static public function getPreferredLanguage(successCb : GlobalizationResult -> Void, errorCb : GlobalizationError -> Void) : Void;
	static public function getLocaleName(successCb : GlobalizationResult -> Void, errorCb : GlobalizationError -> Void) : Void;
	static public function dateToString(date : Date, successCallback : GlobalizationResult -> Void, errorCallback : GlobalizationError -> Void, options : DateToStringOptions) : Void;

	// TODO...
	// static public function stringToDate() : Void;

	// static public function getDatePattern() : Void;

	// static public function getDateNames() : Void;

	// static public function isDayLightSavingsTime() : Void;

	// static public function getFirstDayOfWeek() : Void;

	// static public function numberToString() : Void;

	// static public function stringToNumber() : Void;

	// static public function getNumberPattern() : Void;

	// static public function getCurrencyPattern() : Void;
}
