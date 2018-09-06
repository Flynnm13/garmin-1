
using Toybox.WatchUi;
using Toybox.Graphics;

class Menu2TestDelegate extends WatchUi.BehaviorDelegate {

    function initialize() { 
        BehaviorDelegate.initialize();
    }

    function onSelect() {
        var customMenu = new ImagesMenu(80,Graphics.COLOR_BLACK,{});
             customMenu.addItem(new CustomImagesItem(:bear, "Standard", WatchUi.loadResource(Rez.Drawables.standard)));   
        
            customMenu.addItem(new CustomImagesItem(:fox, "Superman", WatchUi.loadResource(Rez.Drawables.Bird)));
    customMenu.addItem(new CustomImagesItem(:mouse, "Purple Bird", WatchUi.loadResource(Rez.Drawables.bird)));
        customMenu.addItem(new CustomImagesItem(:RM, "ReadMe", WatchUi.loadResource(Rez.Drawables.att)));
    
        WatchUi.pushView(customMenu, new ImagesCustomDelegate(), WatchUi.SLIDE_UP );

        return true;
    }
}



class DrawableMenuTitle extends WatchUi.Drawable {
    function initialize() {
        Drawable.initialize({});
    }

    function draw(dc) {
        var spacing = 2;
        var appIcon = WatchUi.loadResource(Rez.Drawables.Bird);
        var bitmapWidth = appIcon.getWidth();
        var labelWidth = dc.getTextWidthInPixels("Menu", Graphics.FONT_MEDIUM);

        var bitmapX = (dc.getWidth() - (bitmapWidth + spacing + labelWidth)) / 2;
        var bitmapY = (dc.getHeight() - appIcon.getHeight()) / 2;
        var labelX = bitmapX + bitmapWidth + spacing;
        var labelY = dc.getHeight() / 2;

        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_BLACK);
        dc.clear();

        dc.drawBitmap(bitmapX, bitmapY, appIcon);
        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        dc.drawText(labelX, labelY, Graphics.FONT_MEDIUM, "Menu", Graphics.TEXT_JUSTIFY_LEFT | Graphics.TEXT_JUSTIFY_VCENTER);
    }
}
