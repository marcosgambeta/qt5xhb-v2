%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWinExtras
$added=5,2,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QWinJumpListItem(Type type)
$constructor=|new|QWinJumpListItem::Type

$deleteMethod

$prototypeV2=QWinJumpListItem::Type type() const

$prototype=void setType(Type type)
$method=|void|setType|QWinJumpListItem::Type

$prototypeV2=QString filePath() const

$prototype=void setFilePath(const QString &filePath)
$method=|void|setFilePath|const QString &

$prototypeV2=QString workingDirectory() const

$prototype=void setWorkingDirectory(const QString &workingDirectory)
$method=|void|setWorkingDirectory|const QString &

$prototypeV2=QIcon icon() const

$prototype=void setIcon(const QIcon &icon)
$method=|void|setIcon|const QIcon &

$prototypeV2=QString title() const

$prototype=void setTitle(const QString &title)
$method=|void|setTitle|const QString &

$prototypeV2=QString description() const

$prototype=void setDescription(const QString &description)
$method=|void|setDescription|const QString &

$prototypeV2=QStringList arguments() const

$prototype=void setArguments(const QStringList &arguments)
$method=|void|setArguments|const QStringList &

$extraMethods

#pragma ENDDUMP
