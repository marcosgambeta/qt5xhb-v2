%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScxml
$added=5,7,0

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
$constructor=|new1|

$prototype=QScxmlError(const QString &fileName, int line, int column, const QString &description)
$constructor=|new2|const QString &,int,int,const QString &

$prototype=QScxmlError(const QScxmlError &)
$constructor=|new3|const QScxmlError &

$prototype=~QScxmlError()
$deleteMethod

%%
%% Q_PROPERTY(bool valid READ isValid CONSTANT)
%%

$prototypeV2=bool isValid() const

%%
%% Q_PROPERTY(QString fileName READ fileName CONSTANT)
%%

$prototypeV2=QString fileName() const

%%
%% Q_PROPERTY(int line READ line CONSTANT)
%%

$prototypeV2=int line() const

%%
%% Q_PROPERTY(int column READ column CONSTANT)
%%

$prototypeV2=int column() const

%%
%% Q_PROPERTY(QString description READ description CONSTANT)
%%

$prototypeV2=QString description() const

%%
%%
%%

$prototypeV2=QString toString() const

$extraMethods

#pragma ENDDUMP
