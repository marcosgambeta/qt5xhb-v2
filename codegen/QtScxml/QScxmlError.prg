%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$prototype=bool isValid() const
$method=|bool|isValid|

%%
%% Q_PROPERTY(QString fileName READ fileName CONSTANT)
%%

$prototype=QString fileName() const
$method=|QString|fileName|

%%
%% Q_PROPERTY(int line READ line CONSTANT)
%%

$prototype=int line() const
$method=|int|line|

%%
%% Q_PROPERTY(int column READ column CONSTANT)
%%

$prototype=int column() const
$method=|int|column|

%%
%% Q_PROPERTY(QString description READ description CONSTANT)
%%

$prototype=QString description() const
$method=|QString|description|

%%
%%
%%

$prototype=QString toString() const
$method=|QString|toString|

$extraMethods

#pragma ENDDUMP
