%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QImage>

$prototype=QOpenGLFramebufferObject(const QSize &size, GLenum target = GL_TEXTURE_2D)
$constructor=|new1|const QSize &,GLenum=GL_TEXTURE_2D

$prototype=QOpenGLFramebufferObject(int width, int height, GLenum target = GL_TEXTURE_2D)
$constructor=|new2|int,int,GLenum=GL_TEXTURE_2D

#if !defined(QT_OPENGL_ES) || defined(Q_QDOC)

$prototype=QOpenGLFramebufferObject(const QSize &size, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8)
$constructor=|new3|const QSize &,QOpenGLFramebufferObject::Attachment,GLenum=GL_TEXTURE_2D,GLenum=GL_RGBA8

$prototype=QOpenGLFramebufferObject(int width, int height, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8)
$constructor=|new4|int,int,QOpenGLFramebufferObject::Attachment,GLenum=GL_TEXTURE_2D,GLenum=GL_RGBA8

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW5 )
{
}

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW6 )
{
}

#else

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW3 )
{
}

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW4 )
{
}

$prototype=QOpenGLFramebufferObject(const QSize &size, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA)
$constructor=|new5|const QSize &,QOpenGLFramebufferObject::Attachment,GLenum=GL_TEXTURE_2D,GLenum=GL_RGBA

$prototype=QOpenGLFramebufferObject(int width, int height, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA)
$constructor=|new6|int,int,QOpenGLFramebufferObject::Attachment,GLenum=GL_TEXTURE_2D,GLenum=GL_RGBA

#endif

$prototype=QOpenGLFramebufferObject(const QSize &size, const QOpenGLFramebufferObjectFormat &format)
$constructor=|new7|const QSize &,const QOpenGLFramebufferObjectFormat &

$prototype=QOpenGLFramebufferObject(int width, int height, const QOpenGLFramebufferObjectFormat &format)
$constructor=|new8|int,int,const QOpenGLFramebufferObjectFormat &

/*
[1]QOpenGLFramebufferObject(const QSize &size, GLenum target = GL_TEXTURE_2D)
[2]QOpenGLFramebufferObject(int width, int height, GLenum target = GL_TEXTURE_2D)
[3]QOpenGLFramebufferObject(const QSize &size, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8)
[4]QOpenGLFramebufferObject(int width, int height, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8)
[5]QOpenGLFramebufferObject(const QSize &size, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA)
[6]QOpenGLFramebufferObject(int width, int height, Attachment attachment,GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA)
[7]QOpenGLFramebufferObject(const QSize &size, const QOpenGLFramebufferObjectFormat &format)
[8]QOpenGLFramebufferObject(int width, int height, const QOpenGLFramebufferObjectFormat &format)
*/

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_NEW )
{
  if( ISBETWEEN(1,2) && ISQSIZE(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW2 );
  }
#if !defined(QT_OPENGL_ES) || defined(Q_QDOC)
  else if( ISBETWEEN(2,4) && ISQSIZE(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW3 );
  }
  else if( ISBETWEEN(3,5) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW4 );
  }
#else
  else if( ISBETWEEN(2,4) && ISQSIZE(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW5 );
  }
  else if( ISBETWEEN(3,5) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW6 );
  }
#endif
  else if( ISNUMPAR(2) && ISQSIZE(1) && ISQOPENGLFRAMEBUFFEROBJECTFORMAT(2) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW7 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQOPENGLFRAMEBUFFEROBJECTFORMAT(3) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECT_NEW8 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QOpenGLFramebufferObjectFormat format() const

$prototypeV2=bool isValid() const

$prototypeV2=bool isBound() const

$prototypeV2=bool bind()

$prototypeV2=bool release()

$prototypeV2=int width() const

$prototypeV2=int height() const

$prototypeV2=GLuint texture() const

$prototypeV2=QSize size() const

$prototypeV2=QImage toImage() const

$prototypeV2=QOpenGLFramebufferObject::Attachment attachment() const

$prototypeV2=void setAttachment( QOpenGLFramebufferObject::Attachment attachment )

$prototypeV2=GLuint handle() const

$prototypeV2=static bool bindDefault()

$prototypeV2=static bool hasOpenGLFramebufferObjects()

$prototypeV2=static bool hasOpenGLFramebufferBlit()

$prototype=static void blitFramebuffer(QOpenGLFramebufferObject *target, const QRect &targetRect,QOpenGLFramebufferObject *source, const QRect &sourceRect,GLbitfield buffers = GL_COLOR_BUFFER_BIT,GLenum filter = GL_NEAREST)
$internalStaticMethod=|void|blitFramebuffer,blitFramebuffer1|QOpenGLFramebufferObject *,const QRect &,QOpenGLFramebufferObject *,const QRect &,GLbitfield=GL_COLOR_BUFFER_BIT,GLenum=GL_NEAREST

$prototype=static void blitFramebuffer(QOpenGLFramebufferObject *target,QOpenGLFramebufferObject *source,GLbitfield buffers = GL_COLOR_BUFFER_BIT,GLenum filter = GL_NEAREST)
$internalStaticMethod=|void|blitFramebuffer,blitFramebuffer2|QOpenGLFramebufferObject *,QOpenGLFramebufferObject *,GLbitfield=GL_COLOR_BUFFER_BIT,GLenum=GL_NEAREST

/*
[1]void blitFramebuffer(QOpenGLFramebufferObject *target, const QRect &targetRect,QOpenGLFramebufferObject *source, const QRect &sourceRect,GLbitfield buffers = GL_COLOR_BUFFER_BIT,GLenum filter = GL_NEAREST)
[2]void blitFramebuffer(QOpenGLFramebufferObject *target,QOpenGLFramebufferObject *source,GLbitfield buffers = GL_COLOR_BUFFER_BIT,GLenum filter = GL_NEAREST)
*/

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECT_BLITFRAMEBUFFER )
{
  if( ISBETWEEN(4,6) && ISQOPENGLFRAMEBUFFEROBJECT(1) && ISQRECT(2) && ISQOPENGLFRAMEBUFFEROBJECT(3) && ISQRECT(4) && ISOPTNUM(5) && ISOPTNUM(6) )
  {
    QOpenGLFramebufferObject_blitFramebuffer1();
  }
  else if( ISBETWEEN(2,4) && ISQOPENGLFRAMEBUFFEROBJECT(1) && ISQOPENGLFRAMEBUFFEROBJECT(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    QOpenGLFramebufferObject_blitFramebuffer2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=blitFramebuffer

$extraMethods

#pragma ENDDUMP
