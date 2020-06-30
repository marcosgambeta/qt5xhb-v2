%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts
$added=5,8,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

$prototype=explicit QCandlestickSet(qreal timestamp = 0.0, QObject *parent = nullptr)
$internalConstructor=|new1|qreal=0.0,QObject *=nullptr

$prototype=explicit QCandlestickSet(qreal open, qreal high, qreal low, qreal close, qreal timestamp = 0.0, QObject *parent = nullptr)
$internalConstructor=|new2|qreal,qreal,qreal,qreal,qreal=0.0,QObject *=nullptr

/*
[1]explicit QCandlestickSet(qreal timestamp = 0.0, QObject *parent = nullptr)
[2]explicit QCandlestickSet(qreal open, qreal high, qreal low, qreal close, qreal timestamp = 0.0, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QCANDLESTICKSET_NEW )
{
  if( ISBETWEEN(0,2) && (ISNUM(1)||ISNIL(1)) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QCandlestickSet_new1();
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) && (ISQOBJECT(6)||ISNIL(6)) )
  {
    QCandlestickSet_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QCandlestickSet()
$deleteMethod

%%
%% Q_PROPERTY(qreal timestamp READ timestamp WRITE setTimestamp NOTIFY timestampChanged)
%%

$prototypeV2=qreal timestamp() const

$prototypeV2=void setTimestamp( qreal timestamp )

%%
%% Q_PROPERTY(qreal open READ open WRITE setOpen NOTIFY openChanged)
%%

$prototypeV2=qreal open() const

$prototypeV2=void setOpen( qreal open )

%%
%% Q_PROPERTY(qreal high READ high WRITE setHigh NOTIFY highChanged)
%%

$prototypeV2=qreal high() const

$prototypeV2=void setHigh( qreal high )

%%
%% Q_PROPERTY(qreal low READ low WRITE setLow NOTIFY lowChanged)
%%

$prototypeV2=qreal low() const

$prototypeV2=void setLow( qreal low )

%%
%% Q_PROPERTY(qreal close READ close WRITE setClose NOTIFY closeChanged)
%%

$prototypeV2=qreal close() const

$prototypeV2=void setClose( qreal close )

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush NOTIFY brushChanged)
%%

$prototypeV2=QBrush brush() const

$prototypeV2=void setBrush( const QBrush & brush )

%%
%% Q_PROPERTY(QPen pen READ pen WRITE setPen NOTIFY penChanged)
%%

$prototypeV2=QPen pen() const

$prototypeV2=void setPen( const QPen & pen )

%%
%% SIGNALS
%%

$prototype=void brushChanged()
$signalMethod=|void|brushChanged|

$prototype=void clicked()
$signalMethod=|void|clicked|

$prototype=void closeChanged()
$signalMethod=|void|closeChanged|

$prototype=void doubleClicked()
$signalMethod=|void|doubleClicked|

$prototype=void highChanged()
$signalMethod=|void|highChanged|

$prototype=void hovered( bool status )
$signalMethod=|void|hovered|bool

$prototype=void lowChanged()
$signalMethod=|void|lowChanged|

$prototype=void openChanged()
$signalMethod=|void|openChanged|

$prototype=void penChanged()
$signalMethod=|void|penChanged|

$prototype=void pressed()
$signalMethod=|void|pressed|

$prototype=void released()
$signalMethod=|void|released|

$prototype=void timestampChanged()
$signalMethod=|void|timestampChanged|

#pragma ENDDUMP
