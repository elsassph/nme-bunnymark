package;

import nme.Assets;
import nme.display.Sprite;
import nme.display.StageAlign;
import nme.display.StageScaleMode;
import nme.events.Event;
import nme.events.MouseEvent;
import nme.Lib;

/**
 * @author Joshua Granick
 * @author Philippe Elsass
 */
class BunnyMark extends Sprite 
{
	private var bg:Background;
	private var fps:FPS;

	function new()
	{
		super ();
		addEventListener(Event.ADDED_TO_STAGE, addedToStage);
	}

	function addedToStage(e) 
	{
		stage.align = StageAlign.TOP_LEFT;
		stage.scaleMode = StageScaleMode.NO_SCALE;

		bg = new Background();
		bg.texture = Assets.getBitmapData("assets/grass.png");
		bg.cols = 8;
		bg.rows = 12;
		bg.x = -50;
		bg.y = -50;
		if (stage.stageWidth > 0)
			bg.setSize(stage.stageWidth + 100, stage.stageHeight + 100);
		addChild(bg);

		#if cpp
		addChild (new TileTest ());
		#end

		fps = new FPS();
		addChild(fps);
		fps.addEventListener(MouseEvent.CLICK, toggleFPS);

		stage.addEventListener(Event.RESIZE, resize);
	}

	function resize(e) 
	{
		if (stage.stageWidth > stage.stageHeight)
		{
			bg.cols = 12;
			bg.rows = 8;
		}
		else
		{
			bg.cols = 8;
			bg.rows = 12;
		}
		bg.setSize(stage.stageWidth + 100, stage.stageHeight + 100);
	}

	function toggleFPS(e)
	{
		stage.frameRate = 90 - stage.frameRate;
	}
	
	
	public static function main()
	{
		Lib.current.addChild (new BunnyMark());	
	}
	
	
}
