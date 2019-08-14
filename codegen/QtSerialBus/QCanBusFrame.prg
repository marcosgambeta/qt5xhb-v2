%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSerialBus
$added=5,8,0

$header

%% TODO:
%%     class TimeStamp {
%%     public:
%%         Q_DECL_CONSTEXPR TimeStamp(qint64 s = 0, qint64 usec = 0) Q_DECL_NOTHROW
%%             : secs(s), usecs(usec) {}
%%
%%         Q_DECL_CONSTEXPR static TimeStamp fromMicroSeconds(qint64 usec) Q_DECL_NOTHROW
%%         { return TimeStamp(usec / 1000000, usec % 1000000); }
%%
%%         Q_DECL_CONSTEXPR qint64 seconds() const Q_DECL_NOTHROW { return secs; }
%%         Q_DECL_CONSTEXPR qint64 microSeconds() const Q_DECL_NOTHROW { return usecs; }
%%
%%     private:
%%         qint64 secs;
%%         qint64 usecs;
%%     };

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCanBusFrame(FrameType type = DataFrame) Q_DECL_NOTHROW
$internalConstructor=|new1|QCanBusFrame::FrameType=QCanBusFrame::DataFrame

$prototype=explicit QCanBusFrame(quint32 identifier, const QByteArray &data)
$internalConstructor=|new2|quint32,const QByteArray &

//[1]explicit QCanBusFrame(FrameType type = DataFrame) Q_DECL_NOTHROW
//[2]explicit QCanBusFrame(quint32 identifier, const QByteArray &data)

HB_FUNC_STATIC( QCANBUSFRAME_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QCanBusFrame_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQBYTEARRAY(2) )
  {
    QCanBusFrame_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isValid() const Q_DECL_NOTHROW
$method=|bool|isValid|

$prototype=FrameType frameType() const Q_DECL_NOTHROW
$method=|QCanBusFrame::FrameType|frameType|

$prototype=void setFrameType(FrameType newFormat) Q_DECL_NOTHROW
$method=|void|setFrameType|QCanBusFrame::FrameType

$prototype=bool hasExtendedFrameFormat() const Q_DECL_NOTHROW
$method=|bool|hasExtendedFrameFormat|

$prototype=void setExtendedFrameFormat(bool isExtended) Q_DECL_NOTHROW
$method=|void|setExtendedFrameFormat|bool

$prototype=quint32 frameId() const Q_DECL_NOTHROW
$method=|quint32|frameId|

$prototype=void setFrameId(quint32 newFrameId)
$method=|void|setFrameId|quint32

$prototype=void setPayload(const QByteArray &data)
$method=|void|setPayload|const QByteArray &

$prototype=void setTimeStamp(TimeStamp ts) Q_DECL_NOTHROW
%% TODO: implementar
%% $method=|void|setTimeStamp|TimeStamp

$prototype=QByteArray payload() const
$method=|QByteArray|payload|

$prototype=TimeStamp timeStamp() const Q_DECL_NOTHROW
%% TODO: implementar
%% $method=|TimeStamp|timeStamp|

$prototype=FrameErrors error() const Q_DECL_NOTHROW
$method=|QCanBusFrame::FrameErrors|error|

$prototype=void setError(FrameErrors e)
$method=|void|setError|QCanBusFrame::FrameErrors

$prototype=QString toString() const
$method=|QString|toString|

$prototype=bool hasFlexibleDataRateFormat() const Q_DECL_NOTHROW
$method=|bool|hasFlexibleDataRateFormat|

$prototype=void setFlexibleDataRateFormat(bool isFlexibleData) Q_DECL_NOTHROW
$method=|void|setFlexibleDataRateFormat|bool

$prototype=bool hasBitrateSwitch() const Q_DECL_NOTHROW
$method=5,9,0|bool|hasBitrateSwitch|

$prototype=void setBitrateSwitch(bool bitrateSwitch) Q_DECL_NOTHROW
$method=5,9,0|void|setBitrateSwitch|bool

$prototype=bool hasErrorStateIndicator() const Q_DECL_NOTHROW
$method=5,9,0|bool|hasErrorStateIndicator|

$prototype=void setErrorStateIndicator(bool errorStateIndicator) Q_DECL_NOTHROW
$method=5,9,0|void|setErrorStateIndicator|bool

$prototype=bool hasLocalEcho() const Q_DECL_NOTHROW
$method=5,10,0|bool|hasLocalEcho|

$prototype=void setLocalEcho(bool localEcho) Q_DECL_NOTHROW
$method=5,10,0|void|setLocalEcho|bool

$extraMethods

#pragma ENDDUMP
