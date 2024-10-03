module TankBase(length, width, height)
{
    cube([length, width, height]);
}

// Small Tanks
// This is the perfect size for a resin/metal Toldi.
module ToldiTankBase(height)
{
    TankBase(37, 20.5, height);
}

// Medium Tanks
// This is the perfect size for a plastic Panther.
module PantherTankBase(height)
{
    TankBase(50, 33, height);
}

// Large Tanks