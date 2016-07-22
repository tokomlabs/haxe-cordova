package js.cordova.plugin;

// listen on window.document
@:enum
abstract AdMobEvent(String) from String to String {
	var AdLoaded = "onAdLoaded";
	var AdFailLoad = "onAdFailLoad";
	var AdPresent = "onAdPresent";
	var AdDismiss = "onAdDismiss";
	var AdLeaveApp = "onAdLeaveApp";
	// for banner Ad
	var BannerFailedToReceive = "onBannerFailedToReceive";
	var BannerReceive = "onBannerReceive";
	var BannerPresent = "onBannerPresent";
	var BannerLeaveApp = "onBannerLeaveApp";
	var BannerDismiss = "onBannerDismiss";
	// for interstitial Ad    
	var InterstitialFailedToReceive = "onInterstitialFailedToReceive";
	var InterstitialReceive = "onInterstitialReceive";
	var InterstitialPresent = "onInterstitialPresent";
	var InterstitialLeaveApp = "onInterstitialLeaveApp";
	var InterstitialDismiss = "onInterstitialDismiss";
}

@:enum
abstract AdSize(String) from String to String {
	var SmartBanner = 'SMART_BANNER';
	var Banner = 'BANNER';
	var MediumRectangle = 'MEDIUM_RECTANGLE';
	var FullBanner = 'FULL_BANNER';
	var Leaderboard = 'LEADERBOARD';
	var Skyscraper = 'SKYSCRAPER';
	var Custom = 'CUSTOM';
}

@:enum
abstract AdPosition(Int) from Int to Int {
	var NoChange = 0;
	var TopLeft = 1;
	var TopCenter = 2;
	var TopRight = 3;
	var Left = 4;
	var Center = 5;
	var Right = 6;
	var BottomLeft = 7;
	var BottomCenter = 8;
	var BottomRight = 9;
	var PosXy = 10;
}

typedef AdExtras = {
    color_bg : String,
    color_bg_top : String,
    color_border : String,
    color_link : String,
    color_text : String,
    color_url : String
}

typedef AdMobOptions = {
	? adId : String,
	? adSize : AdSize,
	? width : Int,
	? height : Int,
	? overlap : Bool,
	? position : AdPosition,
	? x : Int,
	? y : Int,
	? isTesting : Bool,
	? autoShow : Bool,
	? orientationRenew : Bool,
	? adExtras : AdExtras
}

typedef AdSettings = {
	adId : String,
	adTrackingEnabled : Bool
}

/**
Extern for the [cordova-plugin-admobpro](https://github.com/floatinghotpot/cordova-admob-pro) plugin.
**/
@:native("AdMob")
extern class AdMob {
	// use banner
	static public function createBanner(? ad : haxe.extern.EitherType<String,AdMobOptions>,
										? success : Void -> Void,
										? fail : Void -> Void) : Void;
	static public function removeBanner() : Void;
	static public function showBanner(position : AdPosition) : Void;
	static public function showBannerAtXY(x : Int, y : Int) : Void;
	static public function hideBanner() : Void;

	// use interstitial
	static public function prepareInterstitial(ad : haxe.extern.EitherType<String,AdMobOptions>,
											   ? success : Void -> Void,
											   ? fail : Void -> Void) : Void;
	static public function requestInterstitial() : Void;
	static public function showInterstitial() : Void;
	@:deprecated
	static public function isInterstitialReady(cb : Bool -> Void) : Void;

	// use reward video
	static public function prepareRewardVideoAd(ad : haxe.extern.EitherType<String,AdMobOptions>,
												? success : Void -> Void,
												? fail : Void -> Void) : Void;
	static public function showRewardVideoAd() : Void;

	// set values for configuration and targeting
	static public function setOptions(options : AdMobOptions, ? success : Void -> Void, ? fail : Void -> Void) : Void;

	// get user ad settings
	static public function getAdSettings(success : AdSettings -> Void, ? fail : Void -> Void) : Void;
}
