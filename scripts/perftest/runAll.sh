#!/bin/bash 

if [ "$1" == "" -o "$2" == "" ]; then  echo "Usage: $0 <hdfsDataDir> <MR | SPARK | ECHO>   e.g. $0 perftest SPARK" ; exit 1 ; fi

#init time measurement
date >> times.txt

./runAllBinomial.sh $1 $2
./runAllMultinomial.sh $1 $2
./runAllRegression.sh $1 $2
./runAllStats.sh $1 $2
./runAllClustering.sh $1 $2

# add stepwise Linear 
# add stepwise GLM
#./runAllTrees $1 $2
# add randomForest
#./runAllDimensionReduction $1 $2
#./runAllMatrixFactorization $1 $2
#ALS
#./runAllSurvival $1 $2
#KaplanMeier
#Cox





