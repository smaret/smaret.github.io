---
layout:     post
title:      "Snow lines around embedded protostars" 
subtitle:   "A solution to the missing carbon problem in disks?"
date:       2016-04-27 13:30:00
author:     "Sébastien Maret"
background: '/img/posts/snowline/snowline-bg.jpg'
---

Embedded [protostars](https://en.wikipedia.org/wiki/Protostar) are
very young stars that are still accreting gas and dust from their
parental [molecular
cloud](https://en.wikipedia.org/wiki/Molecular_cloud). This is the
earliest phase of the formation of sun-like star. Because embedded
protostars are not burning hydrogen in their interior yet, they are
extremely cold, from a few tens to a few hundreds Kelvins, depending
on the distance to the center of the protostar. As a result, volatile
elements that compose the protostellar envelope -- such as carbon
monoxide, water, or complex organic molecules -- condense onto [dust
particles](https://en.wikipedia.org/wiki/Cosmic_dust). The specific
distance from the protostar is called the *snow line*. Because not all
chemical species condense at the same temperature, the snowline also
varies from one species to the other. For example, the carbon monoxide
snowline is located much farther away that the water snowline, because
carbon monoxide is more volatile than water.

Snow lines are important for the formation of planets, because they
determine their chemical composition. Indeed, in the protosolar
nebulae, the water snowline was located somewhere between Mars and
Jupiter. This is the reason why inner solar planets are composed
mostly of refractory elements, while outer solar system planets are
gaseous giants. Snowlines can also [influence the composition of
extra-solar planet
atmospheres](http://doi.org/10.1088/2041-8205/743/1/L16). In addition,
dust particles can [grow and form planetesimals more
efficiently](http://dx.doi.org/10.1051/0004-6361/201220536) close to
snowline.

In [a recent study](http://arxiv.org/abs/1604.05121), [Sibylle
Anderl](http://sibylleanderl.net), myself are our colleagues from the
CALYPSO team have used the
[NOEMA](http://iram-institute.org/EN/noema-project.php) interferometer
to measure the carbon monoxide snowline around several embedded
protostars. For this we have used C<sup>18</sup>O (a rare carbon
monoxide [isotopologue](http://en.wikipedia.org/wiki/Isotopologue))
and N<sub>2</sub>H<sup>+</sup> (the [diazenylium
ion](http://en.wikipedia.org/wiki/Diazenylium)) line observations. In
four protostars, we have observed an anti-correlation between these
two species, with the C<sup>18</sup>O emission centered on the
protostar, and surrounded by the N<sub>2</sub>H<sup>+</sup> emission
(see the figure below for an example). This anti-correlation was
indeed expected, as the N<sub>2</sub>H<sup>+</sup> ion is destroyed by
reactions with carbon monoxide: within the snowline, CO reacts quickly
with N<sub>2</sub>H<sup>+</sup>, and the latter is depleted from the
gas. The anti-correlation has been observed previously in [prestellar
cores such as Barnard
68](http://www.nature.com/nature/journal/v442/n7101/abs/nature04919.html)
and the [HD 163296 protoplanetary
disk](http://doi.org/10.1088/0004-637X/813/2/128). However, it is
first time that it is searched for in a large sample of embedded
protostars.

![CO snowline in NGC 1333 IRAS 4B](/img/posts/snowline/snowline-iras4b.svg)

*Figure above: NOEMA observations of the C<sup>18</sup>O 1-0 (left
panel) and N<sub>2</sub>H<sup>+</sup> 1-0 lines (right panel) in the
embedded protostar NGC 1333 IRAS 4B. Note the anti-correlation between
these two species. The white circles show the position of the carbon
monoxide snowline. It is located at 460 [astronomical
units](https://en.wikipedia.org/wiki/Astronomical_unit) from the
protostar, i.e. about 15 times the distance between Neptune and the
Sun.*

In order to constrain the exact position of the CO snowline, we have
compared our observations with [chemistry
model](http://github.com/smaret/astrochem) coupled with a [radiative
transfer
model](http://personal.sron.nl/~vdtak/ratran/frames.html). Although
the anti-correlation between N<sub>2</sub>H<sup>+</sup> and
C<sup>18</sup>O was well reproduced by our model, we have found that
the predicted position for the CO snowline was slightly closer from
the protostar than one would have expected from CO ice evaporation
laboratory measurements. This suggests that the CO ices are not pure,
but that some of the CO may be trapped into less volatile
CO<sub>2</sub> or H<sub>2</sub>O ices. In addition, the CO abundance
within the snowline is about *an order of magnitude lower than
expected*. Indeed, within the water snowline, one would expect most of
the carbon to be locked into gaseous CO, so the CO abundance should be
close to the carbon elemental solar abundance (10<sup>-4</sup> with
respect to H<sub>2</sub>). Instead, we have measured CO abundances of
10<sup>-5</sup> in *all the protostars of our sample*.

Interestingly, a comparably low CO abundance [has been measured in the
TW Hya disk](http://doi.org/10.1088/2041-8205/776/2/L38). The authors
of this study suggested that it may be the result of active carbon
chemistry in the disk, with CO being rapidly converted into carbon
chains, or perhaps CO<sub>2</sub>. Our results suggest an alternative
scenario: the low CO abundance *was simply inherited from the
protostellar phase*. Although this scenario is appealing, there is
still some uncertainty on the CO abundance measurement: the
H<sub>2</sub> density -- which we use to normalize our abundance -- is
somewhat uncertain in the innermost region of the protostar. In order
to better constrain it, we have just submitted an
[ALMA](http://www.almaobservatory.org) cycle 4 proposal to observe
high density line tracers at high angular resolution. In addition, we
will observe the C<sup>18</sup>O at higher angular resolution in order
to detect a second CO snowline closer to the protostar, as expected if
some of the CO is indeed trapped into more refractory ices.

The paper "Probing the CO and methanol snow lines in young protostars
-- Results from the CALYPSO IRAM-PdBI survey" by Anderl et al. is
available on [arXiv](http://arxiv.org/abs/1604.05121).

*Background image credit: A. Angelich (NRAO/AUI/NSF)/ALMA (ESO/NAOJ/NRAO)*
