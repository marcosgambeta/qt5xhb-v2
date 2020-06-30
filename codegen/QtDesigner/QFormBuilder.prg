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

$prototypeV2=void addPluginPath( const QString & pluginPath )

$prototypeV2=void clearPluginPaths()

$prototypeV2=QList<QDesignerCustomWidgetInterface *> customWidgets() const

$prototypeV2=QStringList pluginPaths() const

$prototypeV2=void setPluginPath( const QStringList & pluginPaths )

#pragma ENDDUMP
