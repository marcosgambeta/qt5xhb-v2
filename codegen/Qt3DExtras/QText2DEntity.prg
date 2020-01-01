%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$prototype=QFont font() const
$prototype=void setFont(const QFont &font)

%%
%% Q_PROPERTY(QString text READ text WRITE setText NOTIFY textChanged)
%%

$prototype=QString text() const
$prototype=void setText(const QString &text)

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototype=QColor color() const
$prototype=void setColor(const QColor &color)

%%
%% Q_PROPERTY(float width READ width WRITE setWidth NOTIFY widthChanged)
%%

$prototype=float width() const
$prototype=void setWidth(float width)

%%
%% Q_PROPERTY(float height READ height WRITE setHeight NOTIFY heightChanged)
%%

$prototype=float height() const
$prototype=void setHeight(float height)

%%
%% SIGNALS
%%

$prototype=void fontChanged(const QFont &font)
$prototype=void colorChanged(const QColor &color)
$prototype=void textChanged(const QString &text)
$prototype=void widthChanged(float width)
$prototype=void heightChanged(float height)

#pragma ENDDUMP
