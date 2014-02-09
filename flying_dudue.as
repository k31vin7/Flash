package {
	
	import flash.display.MovieClip;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.events.KeyboardEvent;
	
	public class flying_dudue extends MovieClip {
		var  timer:Timer;
		var gravity:Number = 3;
		var jump:uint    = 6;
		
		public function flying_dudue() {
			timer = new Timer(24);
			timer.addEventListener(TimerEvent.TIMER, _update);
			timer.start();
			this.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown); 
		}
		
		private function onKeyDown(Event:KeyboardEvent) {
			
			if (Event.keyCode == 32) {
				y-=jump;
			}
			
		}
		
		private function _update(event:TimerEvent) {
			y += gravity;
			
			if (this.y >= 400) {
				Document.setFrame(2);
			}
			
		}
	}
	
}