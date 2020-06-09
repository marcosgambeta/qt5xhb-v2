%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore
$added=5,9,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=Q_DECL_CONSTEXPR QOperatingSystemVersion(OSType osType, int vmajor, int vminor = -1, int vmicro = -1)
$constructor=|new|QOperatingSystemVersion::OSType,int,int=-1,int=-1

$deleteMethod

$prototypeV2=static QOperatingSystemVersion current()

$prototypeV2=static Q_DECL_CONSTEXPR QOperatingSystemVersion::OSType currentType()

$prototypeV2=Q_DECL_CONSTEXPR int majorVersion() const

$prototypeV2=Q_DECL_CONSTEXPR int minorVersion() const

$prototypeV2=Q_DECL_CONSTEXPR int microVersion() const

$prototypeV2=Q_DECL_CONSTEXPR int segmentCount() const

$prototype=bool isAnyOfType(std::initializer_list<OSType> types) const
%% TODO: $method=|bool|isAnyOfType|std::initializer_list<OSType>

$prototypeV2=Q_DECL_CONSTEXPR QOperatingSystemVersion::OSType type() const

$prototypeV2=QString name() const

$prototype=static int compare(const QOperatingSystemVersion &v1, const QOperatingSystemVersion &v2) [private]

%% static const QOperatingSystemVersion Windows7
%% static const QOperatingSystemVersion Windows8
%% static const QOperatingSystemVersion Windows8_1
%% static const QOperatingSystemVersion Windows10

%% static const QOperatingSystemVersion OSXMavericks
%% static const QOperatingSystemVersion OSXYosemite
%% static const QOperatingSystemVersion OSXElCapitan
%% static const QOperatingSystemVersion MacOSSierra
%% static const QOperatingSystemVersion MacOSHighSierra
%% static const QOperatingSystemVersion MacOSMojave
%% static const QOperatingSystemVersion MacOSCatalina

%% static const QOperatingSystemVersion AndroidJellyBean
%% static const QOperatingSystemVersion AndroidJellyBean_MR1
%% static const QOperatingSystemVersion AndroidJellyBean_MR2
%% static const QOperatingSystemVersion AndroidKitKat
%% static const QOperatingSystemVersion AndroidLollipop
%% static const QOperatingSystemVersion AndroidLollipop_MR1
%% static const QOperatingSystemVersion AndroidMarshmallow
%% static const QOperatingSystemVersion AndroidNougat
%% static const QOperatingSystemVersion AndroidNougat_MR1
%% static const QOperatingSystemVersion AndroidOreo

$extraMethods

#pragma ENDDUMP
