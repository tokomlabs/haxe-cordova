package js.cordova.plugin;

@:enum
abstract CalendarRecurrence(String) from String to String {
	var Daily = "daily";
	var Weekly = "weekly";
	var Monthly = "monthly";
	var Yearly = "yearly";
}

typedef CalendarOptions = {
	? id : String, // iOS only
	? calendarId : Int, // Android only
	? calendarName : String, // iOS only
	? firstReminderMinutes : Int,
	? recurrence : CalendarRecurrence,
	? recurrenceEndDate : Date,
	? recurrenceInterval : Int,
	? secondReminderMinutes : Int,
	? url : String
}

/**
Extern for the [cordova-plugin-calendar](https://github.com/EddyVerbruggen/Calendar-PhoneGap-Plugin) plugin.
**/
@:native("window.plugins.calendar")
extern class Calendar {
	static public function createCalendar(name : String, success : Dynamic -> Void, error : Dynamic -> Void) : Void;
	static public function deleteCalendar(name : String, success : Dynamic -> Void, error : Dynamic -> Void) : Void;
	static public function getCalendarOptions() : CalendarOptions;
	static public function createEvent(title : String, eventLocation : String, notes : String, startDate : Date, endDate : Date, success : Dynamic -> Void, error : Dynamic -> Void) : Void;
	static public function createEventWithOptions(title : String, eventLocation : String, notes : String, startDate : Date, endDate : Date, options : CalendarOptions, success : Dynamic -> Void, error : Dynamic -> Void) : Void;
	static public function createEventInteractively(title : String, eventLocation : String, notes : String, startDate : Date, endDate : Date, success : Dynamic -> Void, error : Dynamic -> Void) : Void;
	static public function createEventInteractivelyWithOptions(title : String, eventLocation : String, notes : String, startDate : Date, endDate : Date, success : Dynamic -> Void, error : Dynamic -> Void) : Void;
	static public function findEvent(title : String, eventLocation : String, notes : String, startDate : Date, endDate : Date, success : Dynamic -> Void, error : Dynamic -> Void) : Void;
	static public function findEventWithOptions(title : String, eventLocation : String, notes : String, startDate : Date, endDate : Date, options : CalendarOptions, success : Dynamic -> Void, error : Dynamic -> Void) : Void;
	static public function listCalendars(success : Array<{id : String, name : String}>, error : Dynamic -> Void) : Void;
	static public function findAllEventsInNamedCalendars(calendarName : String, success : Dynamic -> Void, error : Dynamic -> Void) : Void;
	static public function modifyEvent(title : String, eventLocation : String, notes : String, startDate : Date, endDate : Date, newTitle : String, newEventLocation : String, newNotes : String, newStartDate : Date, newEndDate : Date, success : Dynamic -> Void, error : Dynamic -> Void) : Void;
	static public function modifyEventWithOptions(title : String, eventLocation : String, notes : String, startDate : Date, endDate : Date, newTitle : String, newEventLocation : String, newNotes : String, newStartDate : Date, newEndDate : Date, filterOptions : CalendarOptions, newOptions : CalendarOptions, success : Dynamic -> Void, error : Dynamic -> Void) : Void;
	static public function deleteEvent(title : String, eventLocation : String, notes : String, startDate : Date, endDate : Date, success : Dynamic -> Void, error : Dynamic -> Void) : Void;
	static public function deleteEventFromNamedCalendar(title : String, eventLocation : String, notes : String, startDate : Date, endDate : Date, calendarName : String, success : Dynamic -> Void, error : Dynamic -> Void) : Void;
	static public function openCalendar(? date : Date, ? success : Dynamic -> Void, ? error : Dynamic -> Void) : Void;
	// Android only
	static public function listEventsInRange(startDate : Date, endDate : Date, success : Dynamic -> Void, error : Dynamic -> Void) : Void;
}
