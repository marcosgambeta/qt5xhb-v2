%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtOpenGL

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGLBuffer ()
$internalConstructor=|new1|

$prototype=QGLBuffer ( QGLBuffer::Type type )
$internalConstructor=|new2|QGLBuffer::Type

$prototype=QGLBuffer ( const QGLBuffer & other )
$internalConstructor=|new3|const QGLBuffer &

/*
[1]QGLBuffer ()
[2]QGLBuffer ( QGLBuffer::Type type )
[3]QGLBuffer ( const QGLBuffer & other )
*/

HB_FUNC_STATIC( QGLBUFFER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGLBuffer_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGLBuffer_new2();
  }
  else if( ISNUMPAR(1) && ISQGLBUFFER(1) )
  {
    QGLBuffer_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void allocate ( const void * data, int count )
$internalMethod=|void|allocate,allocate1|const void *,int

$prototype=void allocate ( int count )
$internalMethod=|void|allocate,allocate2|int

/*
[1]void allocate ( const void * data, int count )
[2]void allocate ( int count )
*/

HB_FUNC_STATIC( QGLBUFFER_ALLOCATE )
{
  if( ISNUMPAR(2) && ISPOINTER(1) && ISNUM(2) )
  {
    QGLBuffer_allocate1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGLBuffer_allocate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=allocate

$prototypeV2=bool bind()

$prototypeV2=GLuint bufferId() const

$prototypeV2=bool create()

$prototypeV2=void destroy()

$prototypeV2=bool isCreated() const

$prototype=void * map ( QGLBuffer::Access access )
$method=|void *|map|QGLBuffer::Access

$prototype=bool read ( int offset, void * data, int count )
$method=|bool|read|int,void *,int

$prototype=void release ()
$internalMethod=|void|release,release1|

$prototype=static void release ( QGLBuffer::Type type )
$internalStaticMethod=|void|release,release2|QGLBuffer::Type

/*
[1]void release ()
[2]void release ( QGLBuffer::Type type )
*/

HB_FUNC_STATIC( QGLBUFFER_RELEASE )
{
  if( ISNUMPAR(0) )
  {
    QGLBuffer_release1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGLBuffer_release2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=release

$prototype=void setUsagePattern ( QGLBuffer::UsagePattern value )
$method=|void|setUsagePattern|QGLBuffer::UsagePattern

$prototypeV2=int size() const

$prototypeV2=QGLBuffer::Type type() const

$prototypeV2=bool unmap()

$prototypeV2=QGLBuffer::UsagePattern usagePattern() const

$prototype=void write ( int offset, const void * data, int count )
$method=|void|write|int,const void *,int

$extraMethods

#pragma ENDDUMP
