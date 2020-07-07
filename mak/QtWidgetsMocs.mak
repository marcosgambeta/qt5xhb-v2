#
# Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/HStyledItemDelegateMoc.cpp            : $(QT5XHB_SRC_DIR)/QtWidgets/HStyledItemDelegate.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/HHeaderViewMoc.cpp                    : $(QT5XHB_SRC_DIR)/QtWidgets/HHeaderView.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
