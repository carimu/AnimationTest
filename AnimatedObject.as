 package {
	import flash.display.*;
	import flash.events.*;
	import flash.utils.getTimer;
	
	public class AnimatedObject extends MovieClip {
		private var speedX, speedY:Number; // current speed, pixels per second
		private var lastTime:int; // remember the last frame's time
		
		public function AnimatedObject(x,y,dx,dy) {
			// set location and speed
			this.x = x;
			this.y = y;
			speedX = dx;
			speedY = dy;
			lastTime = getTimer();
			
			// move each frame
			addEventListener(Event.ENTER_FRAME, moveObject);
		}
		
		// move according to speed
		public function moveObject(event:Event) {
			// get time passed
			var timePassed:int = getTimer() - lastTime;
			lastTime += timePassed;
			
			// update position according to speed and time
			this.x += speedX*timePassed/1000;
			this.y += speedY*timePassed/1000;
		}
	}
}
