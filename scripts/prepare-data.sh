#!/bin/bash

set -x

DATA_DIR=../data

ABS_PATH=$(echo $(cd $DATA_DIR; pwd)) 

unzip -q -o $DATA_DIR/characters.zip -d $DATA_DIR

python add-type.py $ABS_PATH/characters 
