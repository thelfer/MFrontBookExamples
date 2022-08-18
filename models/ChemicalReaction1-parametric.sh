#! /usr/bin/env bash

for k1 in 0.016666666666666666                      \
	  0.008333333333333333 0.004166666666666667 \
	  0.03333333333333333 0.06666666666666667
do
    mtest ChemicalReaction1-parametric.mtest --@k1@=${k1} \
	  --@OutputFile="'ChemicalReaction1-parametric-${k1}.res'"
done

# tplot ChemicalReaction1-parametric-0.004166666666666667.res -t "k<sub>1</sub>=0.004166666666666667" \
#       ChemicalReaction1-parametric-0.008333333333333333.res -t "k<sub>1</sub>=0.008333333333333333" \
#       ChemicalReaction1-parametric-0.016666666666666666.res -t "k<sub>1</sub>=0.016666666666666666" \
#       ChemicalReaction1-parametric-0.03333333333333333.res -t "k<sub>1</sub>=0.03333333333333333" \
#       ChemicalReaction1-parametric-0.06666666666666667.res -t "k<sub>1</sub>=0.06666666666666667" \
#       --xlabel="Time (s)" --ylabel="Molar concentration [A] (mol)" -kh center --ymax=0.1 --with-grid
