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

$beginClassFrom=QFileDevice

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QFile()
$internalConstructor=|new1|

$prototype=QFile(const QString &name)
$internalConstructor=|new2|const QString &

$prototype=explicit QFile(QObject *parent)
$internalConstructor=|new3|QObject *

$prototype=QFile(const QString &name, QObject *parent)
$internalConstructor=|new4|const QString &,QObject *

/*
[1]QFile()
[2]QFile(const QString &name)
[3]explicit QFile(QObject *parent)
[4]QFile(const QString &name, QObject *parent)
*/

HB_FUNC_STATIC( QFILE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QFile_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_new2();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QFile_new3();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QFile_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool copy ( const QString & newName )
$internalMethod=|bool|copy,copy1|const QString &

$prototype=static bool copy ( const QString & fileName, const QString & newName )
$internalStaticMethod=|bool|copy,copy2|const QString &,const QString &

/*
[1]bool copy ( const QString & newName )
[2]bool copy ( const QString & fileName, const QString & newName )
*/

HB_FUNC_STATIC( QFILE_COPY )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_copy1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QFile_copy2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=copy

$prototypeV2=QFileDevice::FileError error() const

$prototype=bool exists () const
$internalMethod=|bool|exists,exists1|

$prototype=static bool exists ( const QString & fileName )
$internalStaticMethod=|bool|exists,exists2|const QString &

/*
[1]bool exists () const
[2]bool exists ( const QString & fileName )
*/

HB_FUNC_STATIC( QFILE_EXISTS )
{
  if( ISNUMPAR(0) )
  {
    QFile_exists1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_exists2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=exists

$prototypeV2=QString fileName() const

$prototypeV2=bool flush()

$prototypeV2=int handle() const

$prototype=bool link ( const QString & linkName )
$internalMethod=|bool|link,link1|const QString &

$prototype=static bool link ( const QString & fileName, const QString & linkName )
$internalStaticMethod=|bool|link,link2|const QString &,const QString &

/*
[1]bool link ( const QString & linkName )
[2]bool link ( const QString & fileName, const QString & linkName )
*/

HB_FUNC_STATIC( QFILE_LINK )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_link1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QFile_link2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=link

$prototype=uchar * map ( qint64 offset, qint64 size, MemoryMapFlags flags = NoOptions )
%% TODO: implementar
%% $method=|uchar *|map|qint64,qint64,QFile::MemoryMapFlags=QFile::NoOptions

$prototype=bool open(OpenMode flags)
$internalMethod=|bool|open,open1|QFile::OpenMode

$prototype=bool open(FILE *f, OpenMode ioFlags, FileHandleFlags handleFlags=DontCloseHandle)
$internalMethod=|bool|open,open2|FILE *,QFile::OpenMode,QFile::FileHandleFlags=QFile::DontCloseHandle

$prototype=bool open(int fd, OpenMode ioFlags, FileHandleFlags handleFlags=DontCloseHandle)
$internalMethod=|bool|open,open3|int,QFile::OpenMode,QFile::FileHandleFlags=QFile::DontCloseHandle

/*
[1]bool open(OpenMode flags)
[2]bool open(FILE *f, OpenMode ioFlags, FileHandleFlags handleFlags=DontCloseHandle)
[3]bool open(int fd, OpenMode ioFlags, FileHandleFlags handleFlags=DontCloseHandle)
*/

HB_FUNC_STATIC( QFILE_OPEN )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QFile_open1();
  }
  else if( ISBETWEEN(2,3) && ISPOINTER(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QFile_open2();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QFile_open3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=open

$prototype=Permissions permissions () const
$internalMethod=|QFile::Permissions|permissions,permissions1|

$prototype=static Permissions permissions ( const QString & fileName )
$internalStaticMethod=|QFile::Permissions|permissions,permissions2|const QString &

/*
[1]Permissions permissions () const
[2]Permissions permissions ( const QString & fileName )
*/

HB_FUNC_STATIC( QFILE_PERMISSIONS )
{
  if( ISNUMPAR(0) )
  {
    QFile_permissions1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QFile_permissions2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=permissions

$prototype=bool remove ()
$internalMethod=|bool|remove,remove1|

$prototype=static bool remove ( const QString & fileName )
$internalStaticMethod=|bool|remove,remove2|const QString &

/*
[1]bool remove ()
[2]bool remove ( const QString & fileName )
*/

HB_FUNC_STATIC( QFILE_REMOVE )
{
  if( ISNUMPAR(0) )
  {
    QFile_remove1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_remove2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=remove

$prototype=bool rename ( const QString & newName )
$internalMethod=|bool|rename,rename1|const QString &

$prototype=static bool rename ( const QString & oldName, const QString & newName )
$internalStaticMethod=|bool|rename,rename2|const QString &,const QString &

/*
[1]bool rename ( const QString & newName )
[2]bool rename ( const QString & oldName, const QString & newName )
*/

HB_FUNC_STATIC( QFILE_RENAME )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_rename1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QFile_rename2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=rename

$prototype=bool resize ( qint64 sz )
$internalMethod=|bool|resize,resize1|qint64

$prototype=static bool resize ( const QString & fileName, qint64 sz )
$internalStaticMethod=|bool|resize,resize2|const QString &,qint64

/*
[1]bool resize ( qint64 sz )
[2]bool resize ( const QString & fileName, qint64 sz )
*/

HB_FUNC_STATIC( QFILE_RESIZE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QFile_resize1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QFile_resize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=resize

$prototypeV2=void setFileName( const QString & name )

$prototype=bool setPermissions ( Permissions permissions )
$internalMethod=|bool|setPermissions,setPermissions1|QFile::Permissions

$prototype=static bool setPermissions ( const QString & fileName, Permissions permissions )
$internalStaticMethod=|bool|setPermissions,setPermissions2|const QString &,QFile::Permissions

/*
[1]bool setPermissions ( Permissions permissions )
[2]bool setPermissions ( const QString & fileName, Permissions permissions )
*/

HB_FUNC_STATIC( QFILE_SETPERMISSIONS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QFile_setPermissions1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QFile_setPermissions2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setPermissions

$prototype=QString symLinkTarget () const
$internalMethod=|QString|symLinkTarget,symLinkTarget1|

$prototype=static QString symLinkTarget ( const QString & fileName )
$internalStaticMethod=|QString|symLinkTarget,symLinkTarget2|const QString &

/*
[1]QString symLinkTarget () const
[2]QString symLinkTarget ( const QString & fileName )
*/

HB_FUNC_STATIC( QFILE_SYMLINKTARGET )
{
  if( ISNUMPAR(0) )
  {
    QFile_symLinkTarget1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_symLinkTarget2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=symLinkTarget

$prototypeV2=bool unmap( uchar * address )

$prototypeV2=void unsetError()

$prototypeV2=virtual bool atEnd() const

$prototypeV2=virtual void close()

$prototypeV2=virtual bool isSequential() const

$prototypeV2=virtual qint64 pos() const

$prototypeV2=virtual bool seek( qint64 pos )

$prototypeV2=qint64 size() const

$prototype=static QString decodeName ( const QByteArray & localFileName )
$internalStaticMethod=|QString|decodeName,decodeName1|const QByteArray &

$prototype=static QString decodeName ( const char * localFileName )
$internalStaticMethod=|QString|decodeName,decodeName2|const char *

/*
[1]QString decodeName ( const QByteArray & localFileName )
[2]QString decodeName ( const char * localFileName )
*/

HB_FUNC_STATIC( QFILE_DECODENAME )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QFile_decodeName1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_decodeName2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=decodeName

$prototypeV2=static QByteArray encodeName( const QString & fileName )

$prototype=QString readLink() const
$internalMethod=|QString|readLink,readLink1|

$prototype=static QString readLink(const QString &fileName)
$internalStaticMethod=|QString|readLink,readLink2|const QString &

/*
[1]QString readLink() const
[2]static QString readLink(const QString &fileName)
*/

HB_FUNC_STATIC( QFILE_READLINK )
{
  if( ISNUMPAR(0) )
  {
    QFile_readLink1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_readLink2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=readLink

$prototype=bool moveToTrash()
$internalMethod=5,15,0|bool|moveToTrash,moveToTrash1|

$prototype=static bool moveToTrash(const QString &fileName, QString *pathInTrash = nullptr)
%% TODO: QString *pathInTrash = nullptr
$internalStaticMethod=5,15,0|bool|moveToTrash,moveToTrash2|const QString &,QString *=nullptr

/*
[1]bool moveToTrash()
[2]static bool moveToTrash(const QString &fileName, QString *pathInTrash = nullptr)
*/

HB_FUNC_STATIC( QFILE_MOVETOTRASH )
{
  if( ISNUMPAR(0) )
  {
    QFile_moveToTrash1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQCHAR(2)||ISNIL(2)) )
  {
    QFile_moveToTrash2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=moveToTrash

#pragma ENDDUMP
