
using Toybox.WatchUi;
using Toybox.Graphics as Gfx;


class RMView extends WatchUi.View {

    function initialize() {
        View.initialize();
    }

    //! Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    //! Called when this View is brought to the foreground. Restore
    //! the state of this View and prepare it to be shown. This includes
    //! loading resources into memory.
    function onShow() {
    }

    //! Update the view
    function onUpdate(dc) {        
         var width;
       var height;    
        width = dc.getWidth();
        height = dc.getHeight();
        View.onUpdate(dc);
                dc.clear();
          dc.setColor(Gfx.COLOR_WHITE, Gfx.COLOR_TRANSPARENT);
         dc.fillRectangle(0, 0, dc.getWidth(), dc.getHeight());
                dc.setColor(Gfx.COLOR_BLACK, Gfx.COLOR_PINK);
		          dc.fillRectangle(0, dc.getHeight() /7, dc.getWidth(), 60);
                
                            dc.setColor(Gfx.COLOR_WHITE, Gfx.COLOR_TRANSPARENT);
            dc.drawText(width /2, height / 6, Gfx.FONT_LARGE, "Current Bug", Gfx.TEXT_JUSTIFY_CENTER);
              dc.setColor(Gfx.COLOR_BLACK, Gfx.COLOR_TRANSPARENT);           
              dc.drawText(width /2, height / 2.7, Gfx.FONT_XTINY, "There is a current bug...", Gfx.TEXT_JUSTIFY_CENTER); 
              dc.drawText(width /2, height / 2.3, Gfx.FONT_XTINY, "Dont change your character", Gfx.TEXT_JUSTIFY_CENTER);                       
              dc.drawText(width /2, height / 1.92, Gfx.FONT_XTINY, "more than 3 times without ", Gfx.TEXT_JUSTIFY_CENTER);
              dc.drawText(width /2, height / 1.65, Gfx.FONT_XTINY, "exiting the app this will", Gfx.TEXT_JUSTIFY_CENTER);
              dc.drawText(width /2, height / 1.45, Gfx.FONT_XTINY, "result in a crash", Gfx.TEXT_JUSTIFY_CENTER);
                                          
                               dc.setColor(Gfx.COLOR_YELLOW, Gfx.COLOR_TRANSPARENT);
                               
                               }
                     }