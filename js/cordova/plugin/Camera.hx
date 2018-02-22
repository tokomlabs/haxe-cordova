package js.cordova.plugin;

@:enum
abstract CameraDirection(Int) {
	var Back = 0;
	var Front = 1;
}

@:enum
abstract CameraPopoverArrowDirection(Int) {
	var ArrowUp = 1;
	var ArrowDown = 2;
	var ArrowLeft = 4;
	var ArrowRight = 8;
	var ArrowAny = 15;
}

@:enum
abstract CameraSourceType(Int) {
	var PhotoLibrary = 0;
	var Camera = 1;
	var SavedPhotoAlbum = 2;
}

@:enum
abstract CameraMediaType(Int) {
	var Picture = 0;
	var Video = 1;
	var All = 2;
}

@:enum
abstract CameraEncodingType(Int) {
	var JPEG = 0;
	var PNG = 1;
}

@:enum
abstract CameraDestinationType(Int) {
	var DataUrl = 0;
	var FileUri = 1;
	var NativeUri = 2;
}

typedef CameraOptions = {
	? quality : Int,
	? destinationType : CameraDestinationType,
	? sourceType : CameraSourceType,
	? allowEdit : Bool,
	? encodingType : CameraEncodingType,
	? targetWidth : Int,
	? targetHeight : Int,
	? mediaType : CameraMediaType,
	? correctOrientation : Bool,
	? saveToPhotoAlbum : Bool,
	? popoverOptions : CameraPopoverOptions,
	? cameraDirection : CameraDirection,
}

@:native("CameraPopoverOptions")
extern class CameraPopoverOptions {
	public function new(x : Int, y :  Int, width : Int, height : Int, arrowDir : CameraPopoverArrowDirection);
}

/**
Extern for the [cordova-plugin-camera](https://github.com/apache/cordova-plugin-camera) plugin.
**/
@:native("navigator.camera")
extern class Camera {
	static function getPicture(successCb : String -> Void, errorCb : String -> Void, options : CameraOptions) : Void;
	static function cleanup(successCb : Void -> Void, errorCb : String -> Void) : Void;
}
