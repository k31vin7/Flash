package {
	
	import flash.display.MovieClip;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	
	public class Document extends MovieClip{
		
		var timer:Timer;
		static var frame:int;
		
		public function Document() {
			frame = 1;
			timer = new Timer(24);
			timer.addEventListener(TimerEvent.TIMER, _update);
			timer.start();
		}
		
		public function _update(event:TimerEvent) {
			gotoAndStop(frame);
		}
		
		public function _click() {
		}
		
		public static function setFrame(myframe:int) {
			frame = myframe;
		}
	}
}