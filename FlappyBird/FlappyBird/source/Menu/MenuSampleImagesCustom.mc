//
// Copyright 2018 by Garmin Ltd. or its subsidiaries.
// Subject to Garmin SDK License Agreement and Wearables
// Application Developer Agreement.
//

using Toybox.WatchUi;
using Toybox.Graphics;

var playerSprite;

var myTimer;

class ImagesMenu extends WatchUi.CustomMenu {
    function initialize(itemHeight, backgroundColor, options) {
        CustomMenu.initialize(itemHeight, backgroundColor, options);
    }

    function drawTitle(dc) {
        dc.setColor(Graphics.COLOR_DK_GRAY, Graphics.COLOR_DK_GRAY);
        dc.setPenWidth(3);
        dc.drawLine(0,dc.getHeight()-2,dc.getWidth(),dc.getHeight()-2);
        dc.setPenWidth(1);
        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        dc.drawText(dc.getWidth()/2, dc.getHeight()/2, Graphics.FONT_LARGE, "Characters", Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER);
    }
}

//This is the menu input delegate shared by all the basic sub-menus in the application
class ImagesCustomDelegate extends WatchUi.Menu2InputDelegate {
    function initialize() {
        Menu2InputDelegate.initialize();
    }

    function onSelect(item) {
            var id = item.getId();
       //   function onMenuItem(item) {
       // WatchUi.requestUpdate();
                    // WatchUi.pushView(new FlappyBirdView(), new BehaviorDelegate(), WatchUi.SLIDE_UP);
                  System.println("yep");
              if (id == :fox) {
            System.println("fox");
             WatchUi.pushView(new FlappyBirdView(), new BehaviorDelegate(), WatchUi.SLIDE_UP);
              playerSprite = WatchUi.loadResource(Rez.Drawables.Bird);
              return true;

                       WatchUi.requestUpdate();
              	
             
 
        } else if (id == :mouse) {
                      WatchUi.pushView(new FlappyBirdView(), new BehaviorDelegate(), WatchUi.SLIDE_UP);
                      playerSprite = WatchUi.loadResource(Rez.Drawables.bird);
            System.println("Bird");
            return true;

            WatchUi.requestUpdate();
            
                 } else if (id == :bear) {
                      WatchUi.pushView(new FlappyBirdView(), new BehaviorDelegate(), WatchUi.SLIDE_UP);
                      playerSprite = WatchUi.loadResource(Rez.Drawables.standard);
            System.println("normal");
            return true;

            WatchUi.requestUpdate();   
            
                             } else if (id == :RM) {
                      WatchUi.pushView(new RMView(), new BehaviorDelegate(), WatchUi.SLIDE_UP);
                     //playerSprite = WatchUi.loadResource(Rez.Drawables.standard);
            System.println("RM");
            return true;

            WatchUi.requestUpdate();  

       
    }
    
  }

    function onBack() {
        WatchUi.popView(WatchUi.SLIDE_DOWN);
        	                        // myTimer.stop();
    }
}

// This is the custom item drawable.
// It draws the label it is initialized with at the center of the region
class CustomImagesItem extends WatchUi.CustomMenuItem {
    var mLabel;
    var mBitmap;
    var mBitmapOffset;

    function initialize(id, label, bitmap) {
        CustomMenuItem.initialize(id, {});
        mLabel = label;
        mBitmap = bitmap;
        mBitmapOffset = 0 - bitmap.getWidth() / 2;
    }

    // draw the item string at the center of the item.
    function draw(dc) {
        var font;
        var bmXY = dc.getHeight()/2 + mBitmapOffset;
        if( isFocused() ) {
            font = Graphics.FONT_LARGE;
        } else {
            font = Graphics.FONT_SMALL;
        }

        dc.drawBitmap(bmXY, bmXY, mBitmap);

        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        dc.drawText(dc.getHeight(), dc.getHeight()/2, font, mLabel, Graphics.TEXT_JUSTIFY_LEFT | Graphics.TEXT_JUSTIFY_VCENTER);
    }
}

