//
// Copyright 2018 by Garmin Ltd. or its subsidiaries.
// Subject to Garmin SDK License Agreement and Wearables
// Application Developer Agreement.
//

using Toybox.WatchUi;
using Toybox.Graphics as Gfx;



var Bird;
var bird;
// This is the main view of the application.
// This view only exists to push the sample menus.
class Menu2TestView extends WatchUi.View {

    function initialize() {
        View.initialize();
    }

    //! Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.MainLayout(dc));
        Bird = WatchUi.loadResource(Rez.Drawables.Bird);
        bird = WatchUi.loadResource(Rez.Drawables.bird);
    }

    //! Called when this View is brought to the foreground. Restore
    //! the state of this View and prepare it to be shown. This includes
    //! loading resources into memory.
    function onShow() {
    }

    //! Update the view
    function onUpdate(dc) {
        // Call the parent onUpdate function to redraw the layout
        
         var width;
       var height;

//       var id_monkey1 =setLayout(Rez.Bitmap.id_monkey(dc));
    
        width = dc.getWidth();
        height = dc.getHeight();
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
                dc.clear();
          dc.setColor(Gfx.COLOR_WHITE, Gfx.COLOR_TRANSPARENT);
         dc.fillRectangle(0, 0, dc.getWidth(), dc.getHeight());
                dc.setColor(Gfx.COLOR_RED, Gfx.COLOR_PINK);
		          dc.fillRectangle(0, dc.getHeight() /6, dc.getWidth(), 60);
                
                            dc.setColor(Gfx.COLOR_BLUE, Gfx.COLOR_TRANSPARENT);
            dc.drawText(width /2, height / 6, Gfx.FONT_LARGE, "Super", Gfx.TEXT_JUSTIFY_RIGHT);
                               dc.setColor(Gfx.COLOR_YELLOW, Gfx.COLOR_TRANSPARENT);
            
                        dc.drawText(width /2, height / 6, Gfx.FONT_LARGE, "-Bird", Gfx.TEXT_JUSTIFY_LEFT);
            
                                           dc.setColor(Gfx.COLOR_BLACK, Gfx.COLOR_TRANSPARENT);
                        dc.drawText(width /2, height / 2.5, Gfx.FONT_XTINY, "Press the Select Button", Gfx.TEXT_JUSTIFY_CENTER);
        
        //high Score
            	var score = WatchUi.loadResource(Rez.Strings.Best) + $.mBest;
            	
        dc.drawText(width /2, height / 2, Gfx.FONT_XTINY, score, Gfx.TEXT_JUSTIFY_CENTER);
            	
       		                              	dc.drawBitmap(width /3, height / 1.6,Bird);
       		                              	dc.drawBitmap(width /2, height / 1.5,bird);

 }

    //! Called when this View is removed from the screen. Save the
    //! state of this View here. This includes freeing resources from
    //! memory.
    function onHide() {
    }
}
