#!/bin/sh

BASEDIR=$(dirname $0)

sips --resampleHeight 36 -s format png --out $BASEDIR/app/src/main/res/drawable-mdpi/ic_actionbar.png $BASEDIR/HeaderImage 2>&1
sips --resampleHeight 54 -s format png --out $BASEDIR/app/src/main/res/drawable-hdpi/ic_actionbar.png $BASEDIR/HeaderImage 2>&1
sips --resampleHeight 72 -s format png --out $BASEDIR/app/src/main/res/drawable-xhdpi/ic_actionbar.png $BASEDIR/HeaderImage 2>&1
sips --resampleHeight 108 -s format png --out $BASEDIR/app/src/main/res/drawable-xxhdpi/ic_actionbar.png $BASEDIR/HeaderImage 2>&1

pngcrush -q -rem -allb -brute -reduce -ow $BASEDIR/app/src/main/res/drawable-mdpi/ic_actionbar.png 2>&1
pngcrush -q -rem -allb -brute -reduce -ow $BASEDIR/app/src/main/res/drawable-hdpi/ic_actionbar.png 2>&1
pngcrush -q -rem -allb -brute -reduce -ow $BASEDIR/app/src/main/res/drawable-xhdpi/ic_actionbar.png 2>&1
pngcrush -q -rem -allb -brute -reduce -ow $BASEDIR/app/src/main/res/drawable-xxhdpi/ic_actionbar.png 2>&1
