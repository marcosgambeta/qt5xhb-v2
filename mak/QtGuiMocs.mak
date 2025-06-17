#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
#

$(QT5XHB_OBJ_DIR)/HCodeBlockValidatorMoc.cpp              : $(QT5XHB_SRC_DIR)/QtGui/HCodeBlockValidator.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
