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
			addEventListener(Event.ADDED_TO_STAGE, _preCheckAdded);
		}
		
		private function _preCheckAdded(event:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, _preCheckAdded);
			addEventListener(Event.ENTER_FRAME, _preCheckEnterFrame);
		}
		
		private function _preCheckEnterFrame(e:Event):void {
			removeEventListener(Event.ENTER_FRAME, _preCheckEnterFrame);
			preInit();
		}
		
		protected function preInit():void {
			_("stage", stage);
			
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			init();
		}
		
		protected function init():void {
			
		}
		
	}
}