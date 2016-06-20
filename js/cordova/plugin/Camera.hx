package js.cordova.plugin;

typedef CameraOptions = {
	? quality : Int,
	? destinationType : String,
	? sourceType : String,
	? allowEdit : Bool,
	? encodingType: String,
	? targetWidth: Int,
	? targetHeight: Int,
	? popoverOptions: CameraPopoverOptions,
	? saveToPhotoAlbum: Bool
}

@:native("CameraPopoverOptions")
extern class CameraPopoverOptions {
	public function new(x : Int, y :  Int, width : Int, height : Int, arrowDir : String);
}

/**
Extern for the [cordova-plugin-camera](https://github.com/apache/cordova-plugin-camera) plugin.
**/
@:native("navigator.camera")
extern class Camera {
	static function getPicture(cameraSuccess : String -> Void, cameraError : String -> Void, options : CameraOptions) : Void; //, [ cameraOptions ]
}
