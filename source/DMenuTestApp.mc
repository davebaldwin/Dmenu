using Toybox.Application as App;
using Toybox.WatchUi as Ui;
using Toybox.System as Sys;

class DMenuTestApp extends App.AppBase 
{
    function initialize() 
	{
        AppBase.initialize ();
    }

    // onStart() is called on application start up
    function onStart (state) 
	{
    }

    // onStop() is called when your application is exiting
    function onStop( state) 
	{
    }

    //! Return the initial view of your application here
    function getInitialView () 
	{	
		var alarmsMenu = [new DMenuItem (:AddAlarm, "Add Alarm", null, null)];
		var view = new DMenu (alarmsMenu, "Alarms");
		return [view, new DMenuDelegate (view, new AlarmDelegate (view))];
    }
}
