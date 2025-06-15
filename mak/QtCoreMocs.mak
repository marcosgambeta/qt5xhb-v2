#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/HAbstractListModelMoc.cpp             : $(QT5XHB_SRC_DIR)/QtCore/HAbstractListModel.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/HAbstractListModelV2Moc.cpp           : $(QT5XHB_SRC_DIR)/QtCore/HAbstractListModelV2.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/HAbstractTableModelMoc.cpp            : $(QT5XHB_SRC_DIR)/QtCore/HAbstractTableModel.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/HAbstractTableModelV2Moc.cpp          : $(QT5XHB_SRC_DIR)/QtCore/HAbstractTableModelV2.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/HEventFilterMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtCore/HEventFilter.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
