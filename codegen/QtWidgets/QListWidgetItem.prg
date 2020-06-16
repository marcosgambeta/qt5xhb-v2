%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QListWidgetItem ( QListWidget * parent = nullptr, int type = Type )
$internalConstructor=|new1|QListWidget *=nullptr,int=QListWidgetItem::Type

$prototype=QListWidgetItem ( const QString & text, QListWidget * parent = nullptr, int type = Type )
$internalConstructor=|new2|const QString &,QListWidget *=nullptr,int=QListWidgetItem::Type

$prototype=QListWidgetItem ( const QIcon & icon, const QString & text, QListWidget * parent = nullptr, int type = Type )
$internalConstructor=|new3|const QIcon &,const QString &,QListWidget *=nullptr,int=QListWidgetItem::Type

$prototype=QListWidgetItem ( const QListWidgetItem & other )
$internalConstructor=|new4|const QListWidgetItem &

/*
[1]QListWidgetItem ( QListWidget * parent = nullptr, int type = Type )
[2]QListWidgetItem ( const QString & text, QListWidget * parent = nullptr, int type = Type )
[3]QListWidgetItem ( const QIcon & icon, const QString & text, QListWidget * parent = nullptr, int type = Type )
[4]QListWidgetItem ( const QListWidgetItem & other )
*/

HB_FUNC_STATIC( QLISTWIDGETITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQLISTWIDGET(1)||ISNIL(1)) && ISOPTNUM(2) )
  {
    QListWidgetItem_new1();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISQLISTWIDGET(2)||ISNIL(2)) && ISOPTNUM(3) )
  {
    QListWidgetItem_new2();
  }
  else if( ISBETWEEN(2,4) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && (ISQLISTWIDGET(3)||ISNIL(3)) && ISOPTNUM(4) )
  {
    QListWidgetItem_new3();
  }
  else if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
  {
    QListWidgetItem_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QBrush background() const

$prototype=void setBackground ( const QBrush & brush )
$method=|void|setBackground|const QBrush &

$prototypeV2=Qt::CheckState checkState() const

$prototype=void setCheckState ( Qt::CheckState state )
$method=|void|setCheckState|Qt::CheckState

$prototypeV2=virtual QListWidgetItem * clone() const

$prototype=virtual QVariant data ( int role ) const
$virtualMethod=|QVariant|data|int

$prototype=virtual void setData ( int role, const QVariant & value )
$virtualMethod=|void|setData|int,const QVariant &

$prototypeV2=Qt::ItemFlags flags() const

$prototype=void setFlags ( Qt::ItemFlags flags )
$method=|void|setFlags|Qt::ItemFlags

$prototypeV2=QFont font() const

$prototype=void setFont ( const QFont & font )
$method=|void|setFont|const QFont &

$prototypeV2=QBrush foreground() const

$prototype=void setForeground ( const QBrush & brush )
$method=|void|setForeground|const QBrush &

$prototypeV2=QIcon icon() const

$prototype=void setIcon ( const QIcon & icon )
$method=|void|setIcon|const QIcon &

$prototypeV2=bool isHidden() const

$prototype=void setHidden ( bool hide )
$method=|void|setHidden|bool

$prototypeV2=bool isSelected() const

$prototype=void setSelected ( bool select )
$method=|void|setSelected|bool

$prototypeV2=QListWidget * listWidget() const

$prototype=virtual void read ( QDataStream & in )
$virtualMethod=|void|read|QDataStream &

$prototypeV2=QSize sizeHint() const

$prototype=void setSizeHint ( const QSize & size )
$method=|void|setSizeHint|const QSize &

$prototypeV2=QString statusTip() const

$prototype=void setStatusTip ( const QString & statusTip )
$method=|void|setStatusTip|const QString &

$prototypeV2=QString text() const

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

$prototypeV2=int textAlignment() const

$prototype=void setTextAlignment ( int alignment )
$method=|void|setTextAlignment|int

$prototypeV2=QString toolTip() const

$prototype=void setToolTip ( const QString & toolTip )
$method=|void|setToolTip|const QString &

$prototypeV2=int type() const

$prototypeV2=QString whatsThis() const

$prototype=void setWhatsThis ( const QString & whatsThis )
$method=|void|setWhatsThis|const QString &

$prototype=virtual void write ( QDataStream & out ) const
$virtualMethod=|void|write|QDataStream &

$prototypeV2=QColor backgroundColor() const

$prototype=virtual void setBackgroundColor(const QColor &color)
$virtualMethod=|void|setBackgroundColor|const QColor &

$prototypeV2=QColor textColor() const

$prototype=void setTextColor(const QColor &color)
$method=|void|setTextColor|const QColor &

$extraMethods

#pragma ENDDUMP
