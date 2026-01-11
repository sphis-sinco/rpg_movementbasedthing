package;

import flixel.FlxSprite;

class Tile extends FlxSprite
{
	public static var DEFAULT_SIZE:Int = 48;

	override public function new(starting_direction:Int = 0, ?x = 0.0, ?y = 0.0)
	{
		super(x, y);

		makeGraphic(DEFAULT_SIZE, DEFAULT_SIZE, 0xFFFFFFFF);

        changeDirection(starting_direction);
	}

	public var direction(default, set):Int = 0;

	function set_direction(direction:Int):Int
	{
        if (direction < 0)
            return 0;

        if (direction > 3)
            return direction % 4;

		return direction;
	}

	public function changeDirection(direction:Int)
	{
		this.direction = direction;

		this.color = switch (this.direction)
		{
			case 0: 0xFFFF00FF;
			case 1: 0xFF00FFFF;
			case 2: 0xFF00FF00;
			case 3: 0xFFFF0000;
			default: 0xFFFFFFFF;
		};
	}
}
