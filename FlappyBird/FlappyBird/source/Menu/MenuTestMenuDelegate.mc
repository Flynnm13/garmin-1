using Toybox.WatchUi;
using Toybox.Graphics;

class Menu2TestMenu2Delegate extends WatchUi.Menu2InputDelegate {

    function initialize() {
        Menu2InputDelegate.initialize();
    }

    function onSelect(item) {
    var customMenu = new WatchUi.Menu2({:title=>"Settings"});
            customMenu.addItem(new WatchUi.MenuItem("Characters", null, :images, null));
            WatchUi.pushView(customMenu, new Menu2SampleCustomDelegate(), WatchUi.SLIDE_UP );

        }
    

    function onBack() {
        WatchUi.popView(WatchUi.SLIDE_DOWN);
    }
}

class Menu2SampleSubMenuDelegate extends WatchUi.Menu2InputDelegate {
    function initialize() {
        Menu2InputDelegate.initialize();
    }

        }

    function onBack() {
        WatchUi.popView(WatchUi.SLIDE_DOWN);
    }

    function onDone() {
        WatchUi.popView(WatchUi.SLIDE_DOWN);
    }


class Menu2SampleCustomDelegate extends WatchUi.Menu2InputDelegate {
    function initialize() {
       Menu2InputDelegate.initialize();
    }


}