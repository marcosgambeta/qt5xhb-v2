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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QWinJumpList(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=QString identifier() const

$prototype=void setIdentifier(const QString &identifier)
$method=|void|setIdentifier|const QString &

$prototypeV2=QWinJumpListCategory * recent() const

$prototypeV2=QWinJumpListCategory * frequent() const

$prototypeV2=QWinJumpListCategory * tasks() const

$prototype=QList<QWinJumpListCategory *> categories() const
$method=|QList<QWinJumpListCategory *>|categories|

$prototype=void addCategory(QWinJumpListCategory *category)
$internalMethod=|void|addCategory,addCategory1|QWinJumpListCategory *

$prototype=QWinJumpListCategory *addCategory(const QString &title, const QList<QWinJumpListItem *> items = QList<QWinJumpListItem *>())
%% TODO: $internalMethod=|QWinJumpListCategory *|addCategory,addCategory2|const QString &,const QList<QWinJumpListItem *>=QList<QWinJumpListItem *>()

/*
[1]void addCategory(QWinJumpListCategory *category)
[2]QWinJumpListCategory *addCategory(const QString &title, const QList<QWinJumpListItem *> items = QList<QWinJumpListItem *>())
*/

HB_FUNC_STATIC( QWINJUMPLIST_ADDCATEGORY )
{
  if( ISNUMPAR(1) && ISQWINJUMPLISTCATEGORY(1) )
  {
    QWinJumpList_addCategory1();
  }
%%  else if( ISNUMPAR(2) && ISCHAR(1) && ISOPTARRAY(2) )
%%  {
%%    QWinJumpList_addCategory2();
%%  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addCategory

$prototypeV2=void clear()

#pragma ENDDUMP
