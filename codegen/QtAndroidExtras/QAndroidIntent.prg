%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtAndroidExtras
$added=5,10,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAndroidIntent()
$internalConstructor=|new1|

$prototype=explicit QAndroidIntent(const QAndroidJniObject &intent)
$internalConstructor=|new2|const QAndroidJniObject &

$prototype=explicit QAndroidIntent(const QString &action)
$internalConstructor=|new3|const QString &

$prototype=explicit QAndroidIntent(const QAndroidJniObject &packageContext, const char *className)
$internalConstructor=|new4|const QAndroidJniObject &,const char *

/*
[1]QAndroidIntent()
[2]explicit QAndroidIntent(const QAndroidJniObject &intent)
[3]explicit QAndroidIntent(const QString &action)
[4]explicit QAndroidIntent(const QAndroidJniObject &packageContext, const char *className)
*/

HB_FUNC_STATIC( QANDROIDINTENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAndroidIntent_new1();
  }
  else if( ISNUMPAR(1) && ISQANDROIDJNIOBJECT(1) )
  {
    QAndroidIntent_new2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QAndroidIntent_new3();
  }
  else if( ISNUMPAR(2) && ISQANDROIDJNIOBJECT(1) && ISCHAR(2) )
  {
    QAndroidIntent_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QAndroidIntent();
$deleteMethod

$prototype=void putExtra(const QString &key, const QByteArray &data)
$method=|void|putExtra|const QString &,const QByteArray &

$prototype=QByteArray extraBytes(const QString &key)
$method=|QByteArray|extraBytes|const QString &

$prototype=void putExtra(const QString &key, const QVariant &value)
$method=|void|putExtra|const QString &,const QVariant &

$prototype=QVariant extraVariant(const QString &key)
$method=|QVariant|extraVariant|const QString &

$prototype=QAndroidJniObject handle() const
$method=|QAndroidJniObject|handle|

#pragma ENDDUMP
