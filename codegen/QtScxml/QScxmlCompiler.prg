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

$prototype=QScxmlCompiler(QXmlStreamReader *xmlReader)
$constructor=|new|QXmlStreamReader *

$prototype=~QScxmlCompiler()
$deleteMethod

$prototype=QString fileName() const
$method=|QString|fileName|

$prototype=void setFileName(const QString &fileName)
$method=|void|setFileName|const QString &

$prototype=Loader *loader() const

$prototype=void setLoader(Loader *newLoader)

$prototype=QScxmlStateMachine *compile()
$method=|QScxmlStateMachine *|compile|

$prototype=QVector<QScxmlError> errors() const
$method=|QVector<QScxmlError>|errors|

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
