%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScxml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QScxmlError()

$prototype=QScxmlError(const QString &fileName, int line, int column, const QString &description)

$prototype=QScxmlError(const QScxmlError &)

$prototype=~QScxmlError()
$deleteMethod

%%
%% Q_PROPERTY(bool valid READ isValid CONSTANT)
%%

$prototype=bool isValid() const

%%
%% Q_PROPERTY(QString fileName READ fileName CONSTANT)
%%

$prototype=QString fileName() const

%%
%% Q_PROPERTY(int line READ line CONSTANT)
%%

$prototype=int line() const

%%
%% Q_PROPERTY(int column READ column CONSTANT)
%%

$prototype=int column() const

%%
%% Q_PROPERTY(QString description READ description CONSTANT)
%%

$prototype=QString description() const

%%
%%
%%

$prototype=QString toString() const

$extraMethods

#pragma ENDDUMP
