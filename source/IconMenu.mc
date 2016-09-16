using Toybox.WatchUi as Ui;
using Toybox.System as Sys;

class IconMenu extends DMenuItem
{
	var bitmap;
	
	function initialize (_id, _label, _value, _userData, _bitmap)
	{
		DMenuItem.initialize (_id, _label, _value, _userData);
		bitmap = _bitmap;
	}
	
	// May want to take bitmap width and hight into account, but as this is 
	// just an example it is easier to hardcode it.
	function drawHighlightedLabel (dc, y)
	{
		DMenuItem.drawHighlightedLabel (dc, y);

		if (bitmap)
		{
			dc.drawBitmap (150, y + 34 , bitmap);
		}
	}
}