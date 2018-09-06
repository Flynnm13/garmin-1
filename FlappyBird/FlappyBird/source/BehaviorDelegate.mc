using Toybox.WatchUi as Ui;
using Engine;
//var myTimer;

class BehaviorDelegate extends Ui.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }
    
    function onSelect() {
    	jump();
    	return true;
    }
    
    function jump() {
    	$.mPlayerSpeed -= Engine.PLAYER_JUMP_SPEED * 60;
    }
    
   // function onBack() {
//    myTimer.clear();


}
