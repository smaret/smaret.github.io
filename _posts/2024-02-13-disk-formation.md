---
layout:     post
title:      "How do protoplanetary disks form?"
subtitle:   "Results from long-timescale and high spatial resolution simulations."
author:     "Sébastien Maret"
date:       2024-02-13 09:00:00
background: "/img/posts/disk-formation/disk-formation-bg.png"
---

Protoplanetary disks are the birthplaces of planets. [A few disks have
been observed]({% post_url 2020-01-20-disk-survey %}) around young
protostars that are still embedded in their natal envelopes. This
suggests that these disks form early in the evolution of the
protostars. Howver, the details of their formation are unclear: how is
[the angular momentum transported within the disk]({% post_url
2020-01-31-angular-momentum %}), and what is the impact of the
envelope gas on the early evolution of the disk?

One way to answer to questions is to perform numerical
simulations. However, this is a difficult task, due to the wide range
of physical scales involved: simulations much achieve sufficient
resolution in the simulations to capture the fine details of the
accretion process, while also covering several thousand
astronomical units (au), the typical size of a protostellar
envelope. Of course, the highest the spatial resolution, the longest
the computation time. Therefore, a trade-off must be made between the
spatial resolution and the integration time, that is the duration of
the simulation.

Recently, Jonah Mauxion, [Geoffroy
Lesur](https://ipag.osug.fr/~lesurg/) and I have tackled this problem
by running simulations on the [Jean Zay
supercomputer](https://www.cnrs.fr/fr/presse/jean-zay-le-supercalculateur-le-plus-puissant-de-france-pour-la-recherche). This
supercomputer has a hybrid architecture, featuring both CPUs (central
processing units) and [GPUs (graphics processing
units)](https://en.wikipedia.org/wiki/Graphics_processing_unit). GPUs
are typically a hundred time faster than CPUs, but they require
tailored codes in order to be fully exploited. Jonah used the [Idefix
code](https://github.com/idefix-code/idefix), written by
Geoffroy. Idefix is a finite-volume [magnetohydrodynamical
(MHD)](https://en.wikipedia.org/wiki/Magnetohydrodynamics), 3D code
based on the [Kokkos library](https://kokkos.org), which allows to run
it on almost any architecture. Jonah added a self-gravity solver to
the code, and we also included non-ideal magnetic diffusivities to
take account the effects of the magnetic field on the disk formation.

Indeed, the magnetic field can have a significant impact on the disk
formation. If the ionization fraction -- the ratio between the
abundance of charged species that of neutrals -- is large enough, the
magnetic field lines become "frozen" into the gas, and the magnetic
field in the central regions of the protostar will increase as the gas
collapses onto the central object. This creates magnetic tension,
known as magnetic braking, which can prevent disk formation. However,
in a weakly ionized gas, the magnetic field can decouple from the gas
by the diffusion of neutrals relative to the charged species. These
processes are known as Ohmic diffusion, ambipolar diffusion, and the
Hall effect. To take these effects into account, one must compute the
ionization fraction of the gas, but also the abundances of the main
charge carriers. For this, we ran the [Astrochem
code](https://github.com/smaret/astrochem) to compute the steady state
abundances of the main charge carriers as a function of density and
temperature. We then computed the corresponding magnetic
diffusivities, which Idefix uses to model the gas dynamics.

![Surface density predicted by the simulation at two epochs](/img/posts/disk-formation/surface-density.png){:width="100%" align="center"}

*Figure 1: Gas surface density, in the disk equatorial plane, as
predicted by the simulation at two epochs. The left panel corresponds
to t = 5,000 yr, where t = 0 yr marks the formation of the
protostar. The right panel correspond to t = 70,000 yr. From Mauxion,
Lesur & Maret (2024).*

With this setup, Jonah simulated the secular evolution of a prestellar
core, from the onset of the gravitational collapse up to 100,000 years
after the formation of the protostar (i.e. the first hydrostatic
core), with a spatial resolution of 0.02 astronomical units (au). This
is the longest and highest-resolution simulation of this kind so
far. In Figure 1, we show the results of these simulations, 5,000 yr
and 70,000 yr after the formation of the protostar. At t = 5,000 yr,
we observe a small (radius ~ 10 au) protostellar disk in Keplerian
rotation. This disk is fed by a "pseudo-disk " of a few hundred au, in
which the magnetic braking is significant, which limits the accretion
onto the disk. The disk itself is gravitationally unstable, as
indicated by the presence of small spiral. It continues to grow until
is becomes fully unstable. At t = 70,000 yr, we observe a larger disk
(radius ~ 60~au) featuring many spirals arms. The disk size
remains constant until the end of the simulation. In this simulation,
the size of the disk is regulated by the gravitational instability
(GI): as material accretes onto the disk, it becomes unstable and
accretes onto the protostar, thereby limiting the disk growth.

![Surface density predicted by the simulation at t = 70,000 au, on large scales](/img/posts/disk-formation/streamer.png){:width="75%" align="center"}

*Figure 2: Gas surface density and velocity field, in the equatorial
plane, at t = 70,000 yr, shown on large spatial scales. The white
arrows indicate the equatorial velocity field. From Mauxion, Lesur &
Maret (2024).*

Another interesting prediction from this simulation is the presence of
streamers. Figure 2 shows the gas surface density at t = 70,000 yr on
large spatial scales (1000 au). We observe that the accretion is not
isotropic, but occurs preferentially in the direction indicated by the
dashed line in the figure. This streamer constitutes an important mass
reservoir, and the accretion rate measured along the streamer is
comparable to that onto the protostar. This suggests that a
significant fraction of the protostar's mass is assembled through this
kind of streamers.

How do the predictions of these simulations compare to the
observations of protostellar disks? First, the predicted disk sizes
are in good agreement with the sizes of disks observed around young
protostars. Streamers have also been observed around these
protostars. However, spirals are not observed in protostellar disks,
unlike in more evolved protoplanetary disks. One possible explanation
for this discrepancy is that the continuum emission from these disks
is optically thick, which prevent us from observing the spirals. To
test this hypothesis, one would need to post-process the results of the
simulations with a radiative transfer code. This will be the purpose
of a future study.

The paper "Modeling the secular evolution of embedded protoplanetary
discs" by Mauxion, Lesur & Maret is published in [Astronomy &
Astrophysics](https://www.aanda.org/articles/aa/full_html/2024/06/aa48405-23/aa48405-23.html).

<!-- Local Variables: -->
<!-- jinx-languages: "en_US" -->
<!-- End: -->
