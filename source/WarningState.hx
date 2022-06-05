package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;

class WarningState extends MusicBeatState
{
	override function create()
	{
		super.create();
		var warningscreen:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image('warningscreen', 'shared'));
		add(warningscreen);
		FlxG.camera.fade(FlxColor.BLACK, 0.8, true);
	}

	override function update(elapsed:Float)
	{
		if (controls.ACCEPT)
		{
			FlxG.switchState(new MainMenuState());
		}
		super.update(elapsed);
	}
}