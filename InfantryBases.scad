// Small Infantry Bases are 32x25mm with a 32mm front.
// In testing, a 0.6mm buffer worked best with my models.
module SmallInfantryBase(height)
{
    cube([32.6, 25.6, height]);
}

// Medium Infantry Bases are 50x32mm with a 50mm front.
// In testing, a 0.6mm buffer worked best with my models.
module MediumInfantryBase(height)
{
    cube([50.6, 32.6, height]);
}

