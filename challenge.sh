#!/usr/bin/env bash
dir="$1"
if [ ! -d "$dir" ]
then
    echo "fatal: $dir is not a directory"
    exit 1
fi
mkdir 00 01 02
function sthThesiTou () {
    foo="$1" #edw mpainei 00, 01 h 02
    if ! [ $foo =~ ^[0-9]+$ ]
    then
        echo "fatal: this function is only meant to work with integers"
        exit 1
    fi
    find . -name "$foo*" -exec 'mv' {} "$foo" #vres ta arxeia pou ksekinane apo auto to integer p edwses k metafere ta sto antistoixo directory
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
