%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

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

#include <QtCore/QStringList>

$prototype=QCoreApplication ( int & argc, char ** argv )
%% TODO: implementar(?) outros construtores e checagem de parametros
HB_FUNC_STATIC( QCOREAPPLICATION_NEW )
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  auto obj = new QCoreApplication( argc, argv );
  Qt5xHb::returnNewObject( obj, false );
}
$addMethod=new

$deleteMethod

$prototypeV2=virtual bool notify( QObject * receiver, QEvent * event )

$prototypeV2=void quit()

$prototypeV2=static void addLibraryPath( const QString & path )

$prototypeV2=static QString applicationDirPath()

$prototypeV2=static QString applicationFilePath()

$prototypeV2=static QString applicationName()

$prototypeV2=static qint64 applicationPid()

$prototypeV2=static QString applicationVersion()

$prototypeV2=static QStringList arguments()

$prototypeV2=static bool closingDown()

$prototypeV2=static int exec()

$prototypeV2=static void exit( int returnCode = 0 )

$prototypeV2=static void flush()

$prototypeV2=static bool hasPendingEvents()

$prototypeV2=static void installTranslator( QTranslator * translationFile )

$prototypeV2=static QCoreApplication * instance()

$prototypeV2=static QStringList libraryPaths()

$prototypeV2=static QString organizationDomain()

$prototypeV2=static QString organizationName()

$prototype=static void postEvent ( QObject * receiver, QEvent * event )
$internalStaticMethod=|void|postEvent,postEvent1|QObject *,QEvent *

$prototype=static void postEvent ( QObject * receiver, QEvent * event, int priority )
$internalStaticMethod=|void|postEvent,postEvent2|QObject *,QEvent *,int

/*
[1]void postEvent ( QObject * receiver, QEvent * event )
[2]void postEvent ( QObject * receiver, QEvent * event, int priority )
*/

HB_FUNC_STATIC( QCOREAPPLICATION_POSTEVENT )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISQEVENT(2) )
  {
    QCoreApplication_postEvent1();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISQEVENT(2) && ISNUM(3) )
  {
    QCoreApplication_postEvent2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=postEvent

$prototype=static void processEvents ( QEventLoop::ProcessEventsFlags flags = QEventLoop::AllEvents )
$internalStaticMethod=|void|processEvents,processEvents1|QEventLoop::ProcessEventsFlags=QEventLoop::AllEvents

$prototype=static void processEvents ( QEventLoop::ProcessEventsFlags flags, int maxtime )
$internalStaticMethod=|void|processEvents,processEvents2|QEventLoop::ProcessEventsFlags,int

/*
[1]void processEvents ( QEventLoop::ProcessEventsFlags flags = QEventLoop::AllEvents )
[2]void processEvents ( QEventLoop::ProcessEventsFlags flags, int maxtime )
*/

HB_FUNC_STATIC( QCOREAPPLICATION_PROCESSEVENTS )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QCoreApplication_processEvents1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QCoreApplication_processEvents2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=processEvents

$prototypeV2=static void removeLibraryPath( const QString & path )

$prototype=static void removePostedEvents ( QObject * receiver )
$internalStaticMethod=|void|removePostedEvents,removePostedEvents1|QObject *

$prototype=static void removePostedEvents ( QObject * receiver, int eventType )
$internalStaticMethod=|void|removePostedEvents,removePostedEvents2|QObject *,int

/*
[1]void removePostedEvents ( QObject * receiver )
[2]void removePostedEvents ( QObject * receiver, int eventType )
*/

HB_FUNC_STATIC( QCOREAPPLICATION_REMOVEPOSTEDEVENTS )
{
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QCoreApplication_removePostedEvents1();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    QCoreApplication_removePostedEvents2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=removePostedEvents

$prototypeV2=static void removeTranslator( QTranslator * translationFile )

$prototypeV2=static bool sendEvent( QObject * receiver, QEvent * event )

$prototype=static void sendPostedEvents ( QObject * receiver, int event_type )
$internalStaticMethod=|void|sendPostedEvents,sendPostedEvents1|QObject *,int

$prototype=static void sendPostedEvents ()
$internalStaticMethod=|void|sendPostedEvents,sendPostedEvents2|

/*
[1]void sendPostedEvents ( QObject * receiver, int event_type )
[2]void sendPostedEvents ()
*/

HB_FUNC_STATIC( QCOREAPPLICATION_SENDPOSTEDEVENTS )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    QCoreApplication_sendPostedEvents1();
  }
  else if( ISNUMPAR(0) )
  {
    QCoreApplication_sendPostedEvents2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=sendPostedEvents

$prototypeV2=static void setApplicationName( const QString & application )

$prototypeV2=static void setApplicationVersion( const QString & version )

$prototypeV2=static void setAttribute( Qt::ApplicationAttribute attribute, bool on = true )

$prototypeV2=static void setLibraryPaths( const QStringList & paths )

$prototypeV2=static void setOrganizationDomain( const QString & orgDomain )

$prototypeV2=static void setOrganizationName( const QString & orgName )

$prototypeV2=static bool startingUp()

$prototypeV2=static bool testAttribute( Qt::ApplicationAttribute attribute )

$prototypeV2=static QString translate( const char * context, const char * sourceText, const char * disambiguation = nullptr, int n = -1 )

%%
%% SIGNALS
%%

$prototype=void aboutToQuit()
$signalMethod=|void|aboutToQuit|

#pragma ENDDUMP
