// Small Bases are 32x25mm with a 32mm front.
// In testing, a 0.6mm buffer worked best with my models.
module SmallBase(height)
{
    cube([32.6, 25.6, height]);
}

// Medium Bases are 50x32mm with a 50mm front.
// In testing, a 0.6mm buffer worked best with my models.
// NOTE: Gun teams on Medium Bases use the 32mm as the front.
module MediumBase(height)
{
    cube([50.6, 32.6, height]);
}

// Large Bases are 50x64mm with a 50mm front.
// Not sure why, but needed a larger buffer - 0.8mm for this base.
module LargeBase(height)
{
    cube([50.8, 64.8, height]);
}