#! /bin/sh

cp -rv * $AGNER_INSTALL_PREFIX
echo "#! /bin/sh" > $AGNER_INSTALL_PREFIX/bin/efene
echo "FNPATH=$AGNER_INSTALL_PREFIX $AGNER_INSTALL_PREFIX/bin/fnc \$*" >> $AGNER_INSTALL_PREFIX/bin/efene
chmod +x $AGNER_INSTALL_PREFIX/bin/efene
