%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>

$prototype=QMimeType()
$internalConstructor=|new1|

$prototype=QMimeType(const QMimeType &other)
$internalConstructor=|new2|const QMimeType &

/*
[1]QMimeType()
[2]QMimeType(const QMimeType &other)
*/

HB_FUNC_STATIC( QMIMETYPE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMimeType_new1();
  }
  else if( ISNUMPAR(1) && ISQMIMETYPE(1) )
  {
    QMimeType_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void swap(QMimeType &other)
$method=|void|swap|QMimeType &

$prototypeV2=bool isValid() const

$prototypeV2=bool isDefault() const

$prototypeV2=QString name() const

$prototypeV2=QString comment() const

$prototypeV2=QString genericIconName() const

$prototypeV2=QString iconName() const

$prototypeV2=QStringList globPatterns() const

$prototypeV2=QStringList parentMimeTypes() const

$prototypeV2=QStringList allAncestors() const

$prototypeV2=QStringList aliases() const

$prototypeV2=QStringList suffixes() const

$prototypeV2=QString preferredSuffix() const

$prototype=bool inherits(const QString &mimeTypeName) const
$method=|bool|inherits|const QString &

$prototypeV2=QString filterString() const

$extraMethods

#pragma ENDDUMP
