#
# Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/HAbstractListModelMoc.cpp             : $(QT5XHB_SRC_DIR)/QtCore/HAbstractListModel.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/HAbstractTableModelMoc.cpp            : $(QT5XHB_SRC_DIR)/QtCore/HAbstractTableModel.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/HAbstractTableModelV2Moc.cpp          : $(QT5XHB_SRC_DIR)/QtCore/HAbstractTableModelV2.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/HEventFilterMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtCore/HEventFilter.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
