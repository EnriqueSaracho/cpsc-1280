#!/bin/bash
#hashbang to specify the use of bash shell to run the script

# Root directory
mkdir -p  A1
mkdir -p A1/classical
mkdir -p A1/kpop
mkdir -p A1/rap

# classical subdirectories
mkdir -p A1/classical/Bach
mkdir -p A1/classical/Beethoven
mkdir -p A1/classical/Paganini
mkdir -p A1/classical/Liszt
mkdir -p A1/classical/Tchaikovsky
mkdir -p A1/classical/Vivaldi

# Bach subdirectories
mkdir -p A1/classical/Bach/"Air on the G String"
mkdir -p A1/classical/Bach/"Inventions and Sinfonias"
mkdir -p A1/classical/Bach/"Mass in B minor"

# Beethoven subdirectories
mkdir -p A1/classical/Beethoven/"Piano Sonata No. 8"
mkdir -p A1/classical/Beethoven/"Symphony No.6"
mkdir -p A1/classical/Beethoven/"Symphony No.3"

# Paganini subdirectories
mkdir -p A1/classical/Paganini/"Carmagnola con variazioni"
mkdir -p A1/classical/Paganini/Lucca
mkdir -p A1/classical/Paganini/"Le Streghe"
mkdir -p A1/classical/Paganini/Pot-Pourri

# Liszt subdirectories
mkdir -p A1/classical/Liszt/"Les preludes"

# Vivaldi subdirectories
mkdir -p A1/classical/Vivaldi/"Four Seasons"
mkdir -p A1/classical/Vivaldi/"Violin concertos"

# kpop subdirectories
mkdir -p A1/kpop/AOA
mkdir -p A1/kpop/BTS
mkdir -p A1/kpop/GirlsGeneration
mkdir -p A1/kpop/"In the morning"
mkdir -p A1/kpop/itzy
mkdir -p A1/kpop/LOCO
mkdir -p A1/kpop/newJeans
mkdir -p A1/kpop/Not-Shy
mkdir -p A1/kpop/purplekiss
mkdir -p A1/kpop/redvelvet
mkdir -p A1/kpop/sneakers
mkdir -p A1/kpop/Twice

# AOA subdirectories
mkdir -p A1/kpop/AOA/Elvis
mkdir -p A1/kpop/AOA/"Like a Cat"
mkdir -p A1/kpop/AOA/"Short Hair"
mkdir -p A1/kpop/AOA/"Bing Bing"

# BTS subdirectories
mkdir -p A1/kpop/BTS/Dynamite
mkdir -p A1/kpop/BTS/"Take 2"
mkdir -p A1/kpop/BTS/Butter
mkdir -p A1/kpop/BTS/"Permission to dance"

# GirlsGeneration subdirectories
mkdir -p A1/kpop/GirlsGeneration/"Forever 1"
mkdir -p A1/kpop/GirlsGeneration/Gee
mkdir -p A1/kpop/GirlsGeneration/"Into the Future"
mkdir -p A1/kpop/GirlsGeneration/"oh!"

# redvelvet subdirectories
mkdir -p A1/kpop/redvelvet/"Red Flavor"
mkdir -p A1/kpop/redvelvet/"Russian Roulette"

# Twice subdirectories
mkdir -p A1/kpop/Twice/Alcohol-Free
mkdir -p A1/kpop/Twice/"Feel Special"
mkdir -p A1/kpop/Twice/"Set Me Free"
mkdir -p A1/kpop/Twice/"Talk that Talk"
mkdir -p A1/kpop/Twice/TT

# rap subdirectories
mkdir -p A1/rap/Anarchy
mkdir -p A1/rap/"Bang Yong-guk"
mkdir -p A1/rap/dok2
mkdir -p A1/rap/Hannya
mkdir -p A1/rap/"rm"
mkdir -p A1/rap/so-yeon
mkdir -p A1/rap/suga

# rm subdirectories
mkdir -p A1/rap/"rm"/"life goes on"
mkdir -p A1/rap/"rm"/"love u hate u"

# so-yeon
mkdir -p A1/rap/so-yeon/Latata
mkdir -p A1/rap/so-yeon/"My Bag"
mkdir -p A1/rap/so-yeon/Tomboy

# listing.txt
cd A1/classical/Liszt
ls -l > listing.txt

cp listing.txt ../../rap/
