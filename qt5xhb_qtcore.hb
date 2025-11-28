//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#define RUNMOC(file) run(cMocExe + " " + file + " -o " + strtran(file, ".hpp", "Moc.cpp"))

FUNCTION hbmk_plugin_qt(hbmk)

   LOCAL cRetVal := ""
   LOCAL cMocExe := getenv("QT_MOC_EXE")

   IF empty(cMocExe)
      cMocExe := "moc"
   ENDIF

   SWITCH hbmk["cSTATE"]

   CASE "init"
      EXIT

   CASE "pre_all"
      EXIT

   CASE "pre_c"
      RUNMOC("source\QtCore\HAbstractListModel.hpp")
      RUNMOC("source\QtCore\HAbstractListModelV2.hpp")
      RUNMOC("source\QtCore\HAbstractTableModel.hpp")
      RUNMOC("source\QtCore\HAbstractTableModelV2.hpp")
      RUNMOC("source\QtCore\HEventFilter.hpp")
      EXIT

   CASE "post_all"
      ferase("source\QtCore\HAbstractListModelMoc.cpp")
      ferase("source\QtCore\HAbstractListModelV2Moc.cpp")
      ferase("source\QtCore\HAbstractTableModelMoc.cpp")
      ferase("source\QtCore\HAbstractTableModelV2Moc.cpp")
      ferase("source\QtCore\HEventFilterMoc.cpp")

   ENDSWITCH

RETURN cRetVal
