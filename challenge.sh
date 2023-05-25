#!/usr/bin/env bash
dir="$1"
if [ ! -d "$dir" ]
then
    echo "fatal: $dir is not a directory"
    exit 1
fi
mkdir "$dir"/00 "$dir"/01 "$dir"/02
function sthThesiTou () {
    foo="$1" #edw mpainei 00, 01 h 02
    if [ -z $foo ]
    then
        echo "fatal: sorting function needs input"
        exit 1
    fi
    find "$dir" -maxdepth 1 -type f -name "$foo*" -exec mv -t "$dir/$foo" {} \; #vres ta arxeia pou ksekinane apo auto to integer p edwses k metafere ta sto antistoixo directory
    #edw kalista mporei na mpei ena sha256sum prin k ena meta an 8es na eisai sigouros oti den xalases to arxeio apla profanws ksodeueis porous
    #to cp kai to mv den einai idiatera asfalh k gia pio euais8htes antigrafes xrhsimopoieis rsync
}
sthThesiTou 00
sthThesiTou 01
sthThesiTou 02 #auto mporeis na to kaneis k apla na pairnei ola ta arguments k na kanei loop, mia gia to ka8ena
#afou einai mono 3 to egrapsa etsi alla einai pio proxeiro
if [ $? -eq 0 ]
then
    echo "the files were sorted successfully"
fi