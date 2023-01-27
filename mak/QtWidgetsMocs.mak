#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/HStyledItemDelegateMoc.cpp            : $(QT5XHB_SRC_DIR)/QtWidgets/HStyledItemDelegate.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/HHeaderViewMoc.cpp                    : $(QT5XHB_SRC_DIR)/QtWidgets/HHeaderView.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
