package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import lime.app.Application;

class BadEndState extends MusicBeatState
{
	public static var leftState:Bool = false;
	public static var needVer:String = "IDFK LOL";
	public static var currChanges:String = "dk";

	var daBg:FlxSprite;
	private var bgColors:Array<String> = [
		'#314d7f',
		'#4e7093',
		'#70526e',
		'#594465'
	];
	private var colorRotation:Int = 1;

	override function create()
	{
		super.create();
		
		var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('cutscenes/rushEndLose', 'shared'));
		bg.screenCenter();
		add(bg);

		var txt:FlxText = new FlxText(0, 0, FlxG.width,
			"You lose!"
			+ "\n[Press ENTER to go back the the main menu]"
			+ "\nThanks for playing Vs. Bluey!",
			32);
		
		txt.setFormat("VCR OSD Mono", 32, FlxColor.fromRGB(200, 200, 200), CENTER);
		txt.borderColor = FlxColor.BLACK;
		txt.borderSize = 3;
		txt.borderStyle = FlxTextBorderStyle.OUTLINE;
		txt.screenCenter();
		add(txt);
	}

	override function update(elapsed:Float)
	{
		if (controls.ACCEPT)
		{
		leftState = true;
			FlxG.switchState(new MainMenuState());
		}
		super.update(elapsed);
	}
}
