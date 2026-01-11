package;

import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.FlxState;

class PlayState extends FlxState
{
	public var tiles:FlxTypedGroup<Tile>;

	override public function create()
	{
		super.create();

		tiles = new FlxTypedGroup<Tile>();
		add(tiles);

		tiles.add(new Tile(0, Tile.DEFAULT_SIZE * 0));
		tiles.add(new Tile(1, Tile.DEFAULT_SIZE * 1));
		tiles.add(new Tile(2, Tile.DEFAULT_SIZE * 2));
		tiles.add(new Tile(3, Tile.DEFAULT_SIZE * 3));
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
