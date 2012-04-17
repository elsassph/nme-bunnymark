import nme.Lib;
import nme.text.TextField;
import nme.text.TextFormat;
import nme.events.Event;


class FPS extends TextField
{
   var times:Array<Float>;

   public function new(inX:Float=10.0, inY:Float=10.0, inCol:Int = 0x000000)
   {
      super();
      x = inX;
      y = inY;
      selectable = false;
      defaultTextFormat = new TextFormat("_sans", 20, 0, true);
      text = "FPS:";
      textColor = inCol;
      width = 150;
      times = [];
      addEventListener(Event.ENTER_FRAME, onEnter);
   }

   public function onEnter(_)
   {
	  var now = Lib.getTimer () / 1000;
      times.push(now);
      while(times[0]<now-1)
         times.shift();
      if (visible)
      {
         text = Env.width+"x"+Env.height+"x"+Env.dpi 
            + "\nFPS:\n" + times.length + "/" + Lib.current.stage.frameRate;
      }
   }

}
