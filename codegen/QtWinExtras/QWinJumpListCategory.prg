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

$prototype=explicit QWinJumpListCategory(const QString &title = QString())
$constructor=|new|const QString &=QString()

$deleteMethod

$prototype=Type type() const
$method=|QWinJumpListCategory::Type|type|

$prototype=bool isVisible() const
$method=|bool|isVisible|

$prototype=void setVisible(bool visible)
$method=|void|setVisible|bool

$prototype=QString title() const
$method=|QString|title|

$prototype=void setTitle(const QString &title)
$method=|void|setTitle|const QString &

$prototype=int count() const
$method=|int|count|

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$prototype=QList<QWinJumpListItem *> items() const
$method=|QList<QWinJumpListItem *>|items|

$prototype=void addItem(QWinJumpListItem *item)
$method=|void|addItem|QWinJumpListItem *

$prototype=QWinJumpListItem *addDestination(const QString &filePath)
$method=|QWinJumpListItem *|addDestination|const QString &

$prototype=QWinJumpListItem *addLink(const QString &title, const QString &executablePath, const QStringList &arguments = QStringList())
$internalMethod=|QWinJumpListItem *|addLink,addLink1|const QString &,const QString &,const QStringList &=QStringList()

$prototype=QWinJumpListItem *addLink(const QIcon &icon, const QString &title, const QString &executablePath, const QStringList &arguments = QStringList())
$internalMethod=|QWinJumpListItem *|addLink,addLink2|const QIcon &,const QString &,const QString &,const QStringList &=QStringList()

//[1]QWinJumpListItem *addLink(const QString &title, const QString &executablePath, const QStringList &arguments = QStringList())
//[2]QWinJumpListItem *addLink(const QIcon &icon, const QString &title, const QString &executablePath, const QStringList &arguments = QStringList())

HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_ADDLINK )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISCHAR(2) && ISOPTARRAY(3) )
  {
    QWinJumpListCategory_addLink1();
  }
  else if( ISBETWEEN(3,4) && ISQICON(1) && ISCHAR(2) && ISCHAR(3) && ISOPTARRAY(4) )
  {
    QWinJumpListCategory_addLink2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addLink

$prototype=QWinJumpListItem *addSeparator()
$method=|QWinJumpListItem *|addSeparator|

$prototype=void clear()
$method=|void|clear|

$extraMethods

#pragma ENDDUMP
