package;

import Song.SwagSong;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import lime.app.Application;

class AboutState extends MusicBeatState
{
	var lol:FlxSprite;
    var selectedSomethin:Bool = false;
	var logoBl:FlxSprite;

	var text:FlxText;

	override function create()
	{
		var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('menuBGBlue'));
		
		logoBl = new FlxSprite(-150, -100);
		logoBl.frames = Paths.getSparrowAtlas('logoBumpin');
		logoBl.antialiasing = true;
		logoBl.animation.addByPrefix('bump', 'logo bumpin', 24);
		logoBl.animation.play('bump');
		logoBl.updateHitbox();
		logoBl.screenCenter();
		logoBl.y = logoBl.y - 100;

		text = new FlxText(0, 0, 0, "Custom build by Nong vanila", 64);
		text.setFormat(Paths.font("vcr.ttf"), 32, FlxColor.WHITE, RIGHT);
		text.screenCenter();
		text.y = text.y + 150;

		add(bg);
		add(logoBl);
		add(text);
		
		#if mobile
		addVirtualPad(NONE, A_B);
		#end
	}

    override function update(elapsed:Float)
        {
            if (controls.ACCEPT)
            {
                FlxG.switchState(new OptionsMenu());
            }
            if (controls.BACK)
            {
                FlxG.switchState(new OptionsMenu());
            }
            super.update(elapsed);
        }
}
