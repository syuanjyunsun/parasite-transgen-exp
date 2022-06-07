# parasite-transgen-exp

Transgenerational plasticity alters parasite fitness in changing environments

List of authors:
Syuan-Jyun Sun1,2,*, Marcin K. Dziuba1, Kristina M. Mclntire1, Riley N. Jaye1, Meghan A. Duffy1

1Department of Ecology & Evolutionary Biology, University of Michigan, Ann Arbor, MI 48109, USA
2International Degree Program in Climate Change and Sustainable Development, National Taiwan University, Taipei 10617, Taiwan

The data and code used for this study are available in the main folder of # parasite-transgen-exp on this repository.

The dataset contains parasite infectivity, reproductive output, and virulence (i.e., the effects on host fecundity and lifespan), across a two-generational study to explore the effect of transgenerational plasticity in the fungal parasite Metschnikowia bicuspidata when infecting a crustacean zooplankton host Daphnia dentifera. This study was conducted in the Duffy Lab at the University of Michigan, Ann Arbor, in March 2022. We used parasite spores reared either at cooler (20°C) or warmer temperatures (24°C), to infect new hosts at 20°C or 24°C, with a fully factorial design. The data were analyzed using R version 4.1.2.

Explanations:
code: unique sample number for each host individual
rearing temp: the temperature at which parasites were reared, control = 20°C, warming = 24°C
current temp: the temperature at which parasites infected new hosts, control = 20°C, warming = 24°C
spore source: the parental source of the spores (i.e., the identity of infected host individual)
terminal infection: whether or not a host develops terminal infection, 0 = no infection, 1 = infection
lifespan: the lifespan of each host individual from spore exposure to death
status: survival status when the experiment ends, 1 = alive, 2 = dead
fecundity: total number of offspring produced by the host
mature spore count1: the first counting of the number of mature spores from a Neubauer hemocytometer
mature spore count2: the second counting of the number of mature spores from a Neubauer hemocytometer
mature spore count3: the third counting of the number of mature spores from a Neubauer hemocytometer
mature spore count4: the fourth counting of the number of mature spores from a Neubauer hemocytometer
immature spore count1: the first counting of the number of immature spores from a Neubauer hemocytometer
immature spore count2: the second counting of the number of immature spores from a Neubauer hemocytometer
immature spore count3: the third counting of the number of immature spores from a Neubauer hemocytometer
immature spore count4: the fourth counting of the number of immature spores from a Neubauer hemocytometer
avg mature spore count: averaged number (from count1 to count4) of mature spores from a Neubauer hemocytometer
avg immature spore count: averaged number (from count1 to count4) of immature spores from a Neubauer hemocytometer
avg total spore count: averaged number (from count1 to count4) of total spores from a Neubauer hemocytometer
prop of spore maturation: proportion of spore maturation, i.e., avg mature spore count divided by avg total spore count
mature spore count controlling for volume: avg mature spore count*10000, i.e., correcting for the volume sampled
immature spore count controlling for volume: avg immature spore count*10000, i.e., correcting for the volume sampled
total spore count controlling for volume: avg total spore count*10000, i.e., correcting for the volume sampled

