%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSerialPort
$added=5,1,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QString>

$prototype=QSerialPortInfo()
$internalConstructor=|new1|

$prototype=QSerialPortInfo(const QSerialPort &port)
$internalConstructor=|new2|const QSerialPort &

$prototype=QSerialPortInfo(const QString &name)
$internalConstructor=|new3|const QString &

$prototype=QSerialPortInfo(const QSerialPortInfo &other)
$internalConstructor=|new4|const QSerialPortInfo &

/*
[1]QSerialPortInfo()
[2]QSerialPortInfo(const QSerialPort &port)
[3]QSerialPortInfo(const QString &name)
[4]QSerialPortInfo(const QSerialPortInfo &other)
*/

HB_FUNC_STATIC( QSERIALPORTINFO_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISNUMPAR(0) )
  {
    QSerialPortInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQSERIALPORT(1) )
  {
    QSerialPortInfo_new2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSerialPortInfo_new3();
  }
  else if( ISNUMPAR(1) && ISQSERIALPORTINFO(1) )
  {
    QSerialPortInfo_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$deleteMethod

$prototype=void swap(QSerialPortInfo &other)
$method=|void|swap|QSerialPortInfo &

$prototype=QString portName() const
$method=|QString|portName|

$prototype=QString systemLocation() const
$method=|QString|systemLocation|

$prototype=QString description() const
$method=|QString|description|

$prototype=QString manufacturer() const
$method=|QString|manufacturer|

$prototype=quint16 vendorIdentifier() const
$method=|quint16|vendorIdentifier|

$prototype=quint16 productIdentifier() const
$method=|quint16|productIdentifier|

$prototype=bool hasVendorIdentifier() const
$method=|bool|hasVendorIdentifier|

$prototype=bool hasProductIdentifier() const
$method=|bool|hasProductIdentifier|

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=bool isBusy() const
$method=|bool|isBusy|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=static QList<qint32> standardBaudRates()
$staticMethod=|QList<qint32>|standardBaudRates|

$prototype=static QList<QSerialPortInfo> availablePorts()
$staticMethod=|QList<QSerialPortInfo>|availablePorts|

$extraMethods

#pragma ENDDUMP
