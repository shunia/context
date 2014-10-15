package me.shunia.context
{
	import flash.display.Stage;

	public interface IContextPlugin {
		
		function startUp(stage:Stage, param:* = null):void;
		
	}
}