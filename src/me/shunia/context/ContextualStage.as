package me.shunia.context
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;

	public class ContextualStage extends Sprite
	{
		public function ContextualStage()
		{
			addEventListener(Event.ADDED_TO_STAGE, onAdded);
		}
		
		private function onAdded(event:Event):void
		{
			_("stage", stage);
			removeEventListener(Event.ADDED_TO_STAGE, onAdded);
			
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			init();
		}
		
		protected function init():void {
			
		}
		
	}
}