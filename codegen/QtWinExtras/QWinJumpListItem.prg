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

$prototype=Type type() const
$method=|QWinJumpListItem::Type|type|

$prototype=void setType(Type type)
$method=|void|setType|QWinJumpListItem::Type

$prototype=QString filePath() const
$method=|QString|filePath|

$prototype=void setFilePath(const QString &filePath)
$method=|void|setFilePath|const QString &

$prototype=QString workingDirectory() const
$method=|QString|workingDirectory|

$prototype=void setWorkingDirectory(const QString &workingDirectory)
$method=|void|setWorkingDirectory|const QString &

$prototype=QIcon icon() const
$method=|QIcon|icon|

$prototype=void setIcon(const QIcon &icon)
$method=|void|setIcon|const QIcon &

$prototype=QString title() const
$method=|QString|title|

$prototype=void setTitle(const QString &title)
$method=|void|setTitle|const QString &

$prototype=QString description() const
$method=|QString|description|

$prototype=void setDescription(const QString &description)
$method=|void|setDescription|const QString &

$prototype=QStringList arguments() const
$method=|QStringList|arguments|

$prototype=void setArguments(const QStringList &arguments)
$method=|void|setArguments|const QStringList &

$extraMethods

#pragma ENDDUMP
