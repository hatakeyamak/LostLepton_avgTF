#! /bin/bash

#
# for prediction
#-----------------

cd TauHad2Multiple

for i in 100_200 200_400 400_600 600_800 800_1200 1200_2500 2500_Inf ; do 

    rm SFCR_0_WJet_${i}_.root
    hadd SFCR_0_WJet_${i}_.root `ls SFCR_0_WJet_${i}_*00.root`
done

rm SFCR_0_haddWJet_.root

hadd SFCR_0_haddWJet_.root `ls SFCR_0_WJet_*_.root`

for i in  tW_top tW_antitop s_channel; do

    rm SFCR_0_ST_${i}_.root
    hadd SFCR_0_ST_${i}_.root `ls SFCR_0_ST_${i}_*00.root`
done

rm SFCR_0_haddST_.root

hadd SFCR_0_haddST_.root `ls SFCR_0_ST_*_.root`

for i in  HT_1200_2500 HT_600_800 HT_800_1200 HT_2500_Inf DiLept T_SingleLep Tbar_SingleLep ; do

    rm SFCR_0_TTbar_${i}_.root
    hadd SFCR_0_TTbar_${i}_.root `ls SFCR_0_TTbar_${i}_*00.root`
done

rm SFCR_0_haddTTbar_.root

hadd SFCR_0_haddTTbar_.root `ls SFCR_0_TTbar_*_.root`


for i in  ZZZ ZZTo2L2Q WZZ WZTo1L3Nu WZTo1L1Nu2Q WWZ WWTo2L2Nu WWTo1L1Nu2Q TTZToQQ TTZToLLNuNu TTWJetsToQQ TTWJetsToLNu TTTT TTGJets ; do

    rm SFCR_0_Exotic_${i}_.root
    hadd SFCR_0_Exotic_${i}_.root `ls SFCR_0_Exotic_${i}_*00.root`
done

cd ..

