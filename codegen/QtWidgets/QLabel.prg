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

$beginClassFrom=QFrame

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QMovie>

$prototype=QLabel ( QWidget * parent = nullptr, Qt::WindowFlags f = 0 )
$internalConstructor=|new1|QWidget *=nullptr,Qt::WindowFlags=0

$prototype=QLabel ( const QString & text, QWidget * parent = nullptr, Qt::WindowFlags f = 0 )
$internalConstructor=|new2|const QString &,QWidget *=nullptr,Qt::WindowFlags=0

/*
[1]QLabel ( QWidget * parent = nullptr, Qt::WindowFlags f = 0 )
[2]QLabel ( const QString & text, QWidget * parent = nullptr, Qt::WindowFlags f = 0 )
*/

HB_FUNC_STATIC( QLABEL_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTQWIDGET(1) && ISOPTNUM(2) )
  {
    QLabel_new1();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTQWIDGET(2) && ISOPTNUM(3) )
  {
    QLabel_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=Qt::Alignment alignment() const

$prototypeV2=QWidget * buddy() const

$prototypeV2=bool hasScaledContents() const

$prototypeV2=bool hasSelectedText() const

$prototypeV2=int indent() const

$prototypeV2=int margin() const

$prototypeV2=QMovie * movie() const

$prototypeV2=bool openExternalLinks() const

$prototype=const QPicture * picture () const
$method=|const QPicture *|picture|

$prototype=const QPixmap * pixmap () const
$method=|const QPixmap *|pixmap|

$prototypeV2=QString selectedText() const

$prototype=void setAlignment ( Qt::Alignment )
$method=|void|setAlignment|Qt::Alignment

$prototype=void setBuddy ( QWidget * buddy )
$method=|void|setBuddy|QWidget *=nullptr

$prototype=void setIndent ( int )
$method=|void|setIndent|int

$prototype=void setMargin ( int )
$method=|void|setMargin|int

$prototype=void setOpenExternalLinks ( bool open )
$method=|void|setOpenExternalLinks|bool

$prototype=void setScaledContents ( bool )
$method=|void|setScaledContents|bool

$prototype=void setSelection ( int start, int length )
$method=|void|setSelection|int,int

$prototype=void setTextFormat ( Qt::TextFormat )
$method=|void|setTextFormat|Qt::TextFormat

$prototype=void setTextInteractionFlags ( Qt::TextInteractionFlags flags )
$method=|void|setTextInteractionFlags|Qt::TextInteractionFlags

$prototype=void setWordWrap ( bool on )
$method=|void|setWordWrap|bool

$prototypeV2=QString text() const

$prototypeV2=Qt::TextFormat textFormat() const

$prototypeV2=Qt::TextInteractionFlags textInteractionFlags() const

$prototypeV2=bool wordWrap() const

$prototype=virtual int heightForWidth ( int w ) const
$virtualMethod=|int|heightForWidth|int

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=void clear()

$prototype=void setMovie ( QMovie * movie )
$method=|void|setMovie|QMovie *

$prototype=void setNum ( int num )
$internalMethod=|void|setNum,setNum1|int

$prototype=void setNum ( double num )
$internalMethod=|void|setNum,setNum2|double

/*
[1]void setNum ( int num )
[2]void setNum ( double num )
*/

HB_FUNC_STATIC( QLABEL_SETNUM )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    PHB_ITEM pNum = hb_param(1, HB_IT_NUMERIC);

    if( pNum )
    {
      if( HB_IS_DOUBLE(pNum) )
      {
        QLabel_setNum2();
      }
      else if( HB_IS_INTEGER(pNum) )
      {
        QLabel_setNum1();
      }
      else
      {
        hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      }
    }
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setNum

$prototype=void setPicture ( const QPicture & picture )
$method=|void|setPicture|const QPicture &

$prototype=void setPixmap ( const QPixmap & )
$method=|void|setPixmap|const QPixmap &

$prototype=void setText ( const QString & )
$method=|void|setText|const QString &

%%
%% SIGNALS
%%

$prototype=void linkActivated( const QString & link )
$signalMethod=|void|linkActivated|const QString &

$prototype=void linkHovered( const QString & link )
$signalMethod=|void|linkHovered|const QString &

#pragma ENDDUMP
