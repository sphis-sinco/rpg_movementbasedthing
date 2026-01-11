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

		makeGraphic(DEFAULT_SIZE, DEFAULT_SIZE, 0xFFFFFFFF);

		switch (this.direction)
		{
			case 0:
				makeGraphic(DEFAULT_SIZE, DEFAULT_SIZE, 0xFFFF00FF);
			case 1:
				makeGraphic(DEFAULT_SIZE, DEFAULT_SIZE, 0xFF00FFFF);
			case 2:
				makeGraphic(DEFAULT_SIZE, DEFAULT_SIZE, 0xFF00FF00);
			case 3:
				makeGraphic(DEFAULT_SIZE, DEFAULT_SIZE, 0xFFFF0000);
			default:
				makeGraphic(DEFAULT_SIZE, DEFAULT_SIZE, 0xFFFFFFFF);
		};
	}
}
