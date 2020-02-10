---
layout:     post
title:      "Rotation of protostellar enveloppes" 
subtitle:   "How is the angular momentum redistributed during the formation of stars?"
date:       2020-02-10 13:00:00
author:     "Sébastien Maret"
background: '/img/posts/angular-momentum/angular-momentum-bg.jpg'
---

Stars form from the gravitational collapse of dense cores within
molecular clouds. [Observations of molecular lines in these cores
reveal velocity
gradients](https://ui.adsabs.harvard.edu/abs/1993ApJ...406..528G/abstract),
which are likely due to the rotation of the cores. Assuming
that the angular momentum is conserved during the gravitational
collapse, cores should spin up as they collapse. Eventually, the
centrifugal force will exceed the gravity, causing the gravitational
collapse to cease.  Clearly, the angular momentum must be
redistributed somehow during the collapse, or stars would not form at
all. But how the angular momentum is redistributed is still unclear.

In a [recent paper](http://arxiv.org/abs/2001.10004), Mathilde Gaudel
and co-workers from the CALYPSO team -- including myself -- study the
angular momentum distribution in a sample of Class 0 prototars. Class
0 are the youngest protostars, so they are particularly interesting to
study how the angular momentum it is redistributed during the earliest
phases of star formation. For this study, we use line observations
obtained with the [NOEMA
interferometer](https://www.iram-institute.org/EN/content-page-56-7-56-0-0-0.html)
and the [30m single dish
telescope](https://www.iram-institute.org/EN/30-meter-telescope.php?ContentID=2&rub=2&srub=0&ssrub=0&sssrub=0). The
advantage in using these two instruments lies in the fact that they
are sensitive to different spatial scales. One the one hand, NOEMA has
sharp resolution, but it is insensitive to large scale emission. The
[30-m
telescope](http://iram-institute.org/EN/30-meter-telescope.php?ContentID=2&rub=2&srub=0&ssrub=0&sssrub=0),
on the other hand, has a coarser resolution, but it does not suffer
from large scale emission filtering. By combining observations from
the two instruments, we get both spatial resolution and large scale
sensitivity.

For this study, we also combine line observations from two different
chemical species, C<sup>18</sup>O and N<sub>2</sub>H<sup>+</sup>. As
explained in [a previous post]({% post_url 2016-04-27-snowlines %}),
these two species are present in different parts of the protostar
envelope: C<sup>18</sup>O is present only in the innermost part of the
envelope, within the so-called CO snowline. N<sub>2</sub>H<sup>+</sup>
is almost absent within the CO snowline, because it is destroyed by
reactions with CO, but it is more abundant beyond the CO snowline, in
the outermost part of the envelope. By looking at the profiles of
lines from these two species, we can probe the kinematics in the
entire envelope.

![Angular momentum in Class 0](/img/posts/angular-momentum/angular-momentum.svg)

*Figure 1: Apparent specific angular momentum as a function of the
radius for several Class 0 protostars. The black line if a fit with a
broken power-law. The change in the slope of the power-law at a
characteristic radius of 1600 astronomical units is clearly seen. From
Gaudel et al. (2020).*

With the combination of the two instruments and the two lines, we can
measure the rotational motions at scales between 50 and 1600
astronomical units (au). The results of this analysis are shown in
Fig. 1. This figure shows the apparent specific angular momentum (that
is the angular momentum per mass unit) obtained from the velocity
profile. Each color point with an error bar is a measurement at one
radius of a protostar. Each color correspond to a different
protostar. When averaging the results for all protostars together, we
identify two distinct regimes: at scales larger than 1,600 au, the
apparent specific angular momentum scales as r<sup>-1.6</sup>, where r
is the protostar radius. A scales smaller than 1,600 au, the specific
angular momentum tends to become relatively constant, down to the
smallest scales probed by our observations, i.e. about 50 au. This
suggests that the specific angular momentum is conserved at scales
smaller than 1,600 au, which probably results in the formation of a 
proto-planetary disk.  Indeed, as explained in a [a recent post]({%
post_url 2020-01-20-disk-survey %}), we detect Keplerian disks in two
protostars of the CALYPSO sample. Disks are likely present in other
protostars as well, but they might be too small to be detected with
our observations.

The paper "Angular momentum profiles of Class 0 protostellar
envelopes" by Gaudel et al. is available on
[arXiv](http://arxiv.org/abs/2001.10004).
