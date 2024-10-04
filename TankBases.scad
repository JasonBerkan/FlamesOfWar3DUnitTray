module TankBase(length, width, height)
{
    cube([length, width, height]);
}

// Small Tanks
// In testing, the resin/metal Toldi doesn't always have the same height and width.
// 37.3 x 21.3 worked for the "larger" Toldis that I had, but one was much narrower,
// so I added in an adjustment to tweak the base size if required.
module ToldiTankBase(length_adj, width_adj, height)
{
    TankBase(21.3+length_adj, 37.3+width_adj, height);
}

// Medium Tanks
// My tests came up with 33x50 for a plastic Panther, though I think the newer
// plastic Panther might be a little bit wider.
module PantherTankBase(height)
{
    TankBase(33, 50, height);
}

// Large Tanks