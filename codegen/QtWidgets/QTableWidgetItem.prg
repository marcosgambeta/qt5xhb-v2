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

$prototype=QTableWidgetItem ( int type = Type )
$internalConstructor=|new1|int=QTableWidgetItem::Type

$prototype=QTableWidgetItem ( const QString & text, int type = Type )
$internalConstructor=|new2|const QString &,int=QTableWidgetItem::Type

$prototype=QTableWidgetItem ( const QIcon & icon, const QString & text, int type = Type )
$internalConstructor=|new3|const QIcon &,const QString &,int=QTableWidgetItem::Type

$prototype=QTableWidgetItem ( const QTableWidgetItem & other )
$internalConstructor=|new4|const QTableWidgetItem &

/*
[1]QTableWidgetItem ( int type = Type )
[2]QTableWidgetItem ( const QString & text, int type = Type )
[3]QTableWidgetItem ( const QIcon & icon, const QString & text, int type = Type )
[4]QTableWidgetItem ( const QTableWidgetItem & other )
*/

HB_FUNC_STATIC( QTABLEWIDGETITEM_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QTableWidgetItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QTableWidgetItem_new2();
  }
  else if( ISBETWEEN(2,3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISOPTNUM(3) )
  {
    QTableWidgetItem_new3();
  }
  else if( ISNUMPAR(1) && ISQTABLEWIDGETITEM(1) )
  {
    QTableWidgetItem_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QBrush background() const

$prototypeV2=Qt::CheckState checkState() const

$prototypeV2=virtual QTableWidgetItem * clone() const

$prototypeV2=int column() const

$prototype=virtual QVariant data ( int role ) const
$virtualMethod=|QVariant|data|int

$prototypeV2=Qt::ItemFlags flags() const

$prototypeV2=QFont font() const

$prototypeV2=QBrush foreground() const

$prototypeV2=QIcon icon() const

$prototypeV2=bool isSelected() const

$prototype=virtual void read ( QDataStream & in )
$virtualMethod=|void|read|QDataStream &

$prototypeV2=int row() const

$prototype=void setBackground ( const QBrush & brush )
$method=|void|setBackground|const QBrush &

$prototype=void setCheckState ( Qt::CheckState state )
$method=|void|setCheckState|Qt::CheckState

$prototype=virtual void setData ( int role, const QVariant & value )
$virtualMethod=|void|setData|int,const QVariant &

$prototype=void setFlags ( Qt::ItemFlags flags )
$method=|void|setFlags|Qt::ItemFlags

$prototype=void setFont ( const QFont & font )
$method=|void|setFont|const QFont &

$prototype=void setForeground ( const QBrush & brush )
$method=|void|setForeground|const QBrush &

$prototype=void setIcon ( const QIcon & icon )
$method=|void|setIcon|const QIcon &

$prototype=void setSelected ( bool select )
$method=|void|setSelected|bool

$prototype=void setSizeHint ( const QSize & size )
$method=|void|setSizeHint|const QSize &

$prototype=void setStatusTip ( const QString & statusTip )
$method=|void|setStatusTip|const QString &

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

$prototype=void setTextAlignment ( int alignment )
$method=|void|setTextAlignment|int

$prototype=void setToolTip ( const QString & toolTip )
$method=|void|setToolTip|const QString &

$prototype=void setWhatsThis ( const QString & whatsThis )
$method=|void|setWhatsThis|const QString &

$prototypeV2=QSize sizeHint() const

$prototypeV2=QString statusTip() const

$prototypeV2=QTableWidget * tableWidget() const

$prototypeV2=QString text() const

$prototypeV2=int textAlignment() const

$prototypeV2=QString toolTip() const

$prototypeV2=int type() const

$prototypeV2=QString whatsThis() const

$prototype=virtual void write ( QDataStream & out ) const
$virtualMethod=|void|write|QDataStream &

$extraMethods

#pragma ENDDUMP
