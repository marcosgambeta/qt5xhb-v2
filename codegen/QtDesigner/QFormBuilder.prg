%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDesigner

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractFormBuilder

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QFormBuilder ()
$constructor=|new|

$deleteMethod

$prototype=void addPluginPath ( const QString & pluginPath )
$method=|void|addPluginPath|const QString &

$prototypeV2=void clearPluginPaths()

$prototype=QList<QDesignerCustomWidgetInterface *> customWidgets () const
$method=|QList<QDesignerCustomWidgetInterface *>|customWidgets|

$prototypeV2=QStringList pluginPaths() const

$prototype=void setPluginPath ( const QStringList & pluginPaths )
$method=|void|setPluginPath|const QStringList &

#pragma ENDDUMP
