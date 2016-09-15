using Toybox.WatchUi as Ui;
using Toybox.System as Sys;
using Toybox.Math as Math;

class AlarmDelegate extends Ui.MenuInputDelegate {

	var	view, count;
	
	// view is only needed if you need to access the menu array directly or replace it.  Otherwise
	// the item passed to onMenu can be modified 'in place'.
    function initialize (_view)
	{
		view = _view;
        MenuInputDelegate.initialize ();
		count = 0;
    }

    function onMenuItem (item) 
	{
 		if (item.id == :AddAlarm)
		{
			var time = [Math.rand () % 12, Math.rand () % 60];
			var timeStr = Lang.format("$1$:$2$ am", time);
			var on = [true, false][Math.rand () % 2];

			var alarm = {:time => time, :on => on};
			var value = on ? "On" : "Off";

			var countStr = Lang.format("($1$)  ", [count]);
			var alarmItem = new DMenuItem (count, countStr + timeStr, value, alarm);
			
			// Insert new alarm just before the AddAlarm entry.  This has the benefit of also
			// being the newly selectable menu item, otherwise view.index could be updated.
			view.menuArray[item.index] = alarmItem;
			view.menuArray.add (item);
			count++;
		}
		else
		{			
			// Just toggle the status.
			if (item.userData[:on])
			{
				item.userData[:on] = false;
				item.value = "No";
			}
			else
			{
				item.userData[:on] = true;
				item.value = "Yes";
			}
		}
    }
}
