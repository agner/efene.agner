#! /bin/sh

cp -rv * $AGNER_INSTALL_PREFIX
cp $AGNER_INSTALL_PREFIX/lib/*.beam $AGNER_INSTALL_PREFIX/ebin
echo "#! /bin/sh" > $AGNER_INSTALL_PREFIX/bin/efene
echo "FNPATH=$AGNER_INSTALL_PREFIX $AGNER_INSTALL_PREFIX/bin/fnc \$*" >> $AGNER_INSTALL_PREFIX/bin/efene
chmod +x $AGNER_INSTALL_PREFIX/bin/efene
