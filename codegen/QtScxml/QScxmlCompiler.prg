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

$prototype=QScxmlCompiler(QXmlStreamReader *xmlReader)

$prototype=~QScxmlCompiler()
$deleteMethod

$prototype=QString fileName() const

$prototype=void setFileName(const QString &fileName)

$prototype=Loader *loader() const

$prototype=void setLoader(Loader *newLoader)

$prototype=QScxmlStateMachine *compile()

$prototype=QVector<QScxmlError> errors() const

$extraMethods

#pragma ENDDUMP

%% TODO:
%% public:
%%     class Q_SCXML_EXPORT Loader
%%     {
%%     public:
%%         Loader();
%%         virtual ~Loader();
%%         virtual QByteArray load(const QString &name,
%%                                 const QString &baseDir,
%%                                 QStringList *errors) = 0;
%%     };
