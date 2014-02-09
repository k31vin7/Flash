package {
	
	import flash.display.MovieClip;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	
	public class flying_dudue extends MovieClip {
		var timer:Timer;
		var gravity:Number = 3;
		var jump:Number    = 3;
		
		public function flying_dudue() {
			timer = new Timer(24);
			timer.addEventListener(TimerEvent.TIMER, _update);
			this.addEventListener(KeyboardEvent.KEY_DOWN, _keypress);
		}
		
		private function _keypress(Event:KeyboardEvent) {
			
			if (event.keyCode == 32) {
				y -= jump;
			}
		}
		
		private function _update(event:TimerEvent) {
			y += gravity;
			
			
		}
	}
	
}