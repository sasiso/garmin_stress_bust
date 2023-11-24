import Toybox.Graphics;
import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;

class stressbustView extends WatchUi.WatchFace {

    function initialize() {
        WatchFace.initialize();
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.WatchFace(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
    }

function onUpdate(dc as Dc) as Void {
    // Get and show the current time
    var clockTime = System.getClockTime();
    var timeString = Lang.format("$1$:$2$", [clockTime.hour, clockTime.min.format("%02d")]);

    // Get the Text view with the ID "TimeLabel"
    var timeView = View.findDrawableById("TimeLabel") as Text;
    
    
    
    // Set the text to the formatted time
    timeView.setText(timeString);

    // Get the Text view with the ID "StressLabel"
    var stressView = View.findDrawableById("StressLabel") as Text;
    

    // Set the stress number (replace 42 with the actual stress value)
    stressView.setText(": " + 42);

    // Call the parent onUpdate function to redraw the layout
    View.onUpdate(dc);
}




    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

    // The user has just looked at their watch. Timers and animations may be started here.
    function onExitSleep() as Void {
    }

    // Terminate any active timers and prepare for slow updates.
    function onEnterSleep() as Void {
    }

}
