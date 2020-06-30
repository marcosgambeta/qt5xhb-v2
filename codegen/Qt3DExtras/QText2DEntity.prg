%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DExtras
$namespace=Qt3DExtras

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=Qt3DCore::QEntity

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QText2DEntity(Qt3DCore::QNode *parent = nullptr)

$prototype=~QText2DEntity()
$deleteMethod

%%
%% Q_PROPERTY(QFont font READ font WRITE setFont NOTIFY fontChanged)
%%

$prototypeV2=QFont font() const

$prototypeV2=void setFont( const QFont & font )

%%
%% Q_PROPERTY(QString text READ text WRITE setText NOTIFY textChanged)
%%

$prototypeV2=QString text() const

$prototypeV2=void setText( const QString & text )

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototypeV2=QColor color() const

$prototypeV2=void setColor( const QColor & color )

%%
%% Q_PROPERTY(float width READ width WRITE setWidth NOTIFY widthChanged)
%%

$prototypeV2=float width() const

$prototypeV2=void setWidth( float width )

%%
%% Q_PROPERTY(float height READ height WRITE setHeight NOTIFY heightChanged)
%%

$prototypeV2=float height() const

$prototypeV2=void setHeight( float height )

%%
%% SIGNALS
%%

$prototype=void fontChanged(const QFont &font)
$prototype=void colorChanged(const QColor &color)
$prototype=void textChanged(const QString &text)
$prototype=void widthChanged(float width)
$prototype=void heightChanged(float height)

#pragma ENDDUMP
