/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMATRIX
REQUEST QMATRIX3X3
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QRECT
REQUEST QRECTF
REQUEST QTRANSFORM
REQUEST QVECTOR3D
REQUEST QVECTOR4D
#endif

CLASS QMatrix4x4

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD column
   METHOD setColumn
   METHOD row
   METHOD setRow
   METHOD isAffine
   METHOD isIdentity
   METHOD setToIdentity
   METHOD fill
   METHOD determinant
   METHOD inverted
   METHOD transposed
   METHOD normalMatrix
   METHOD scale
   METHOD translate
   METHOD rotate
   METHOD ortho
   METHOD frustum
   METHOD perspective
   METHOD lookAt
   METHOD viewport
   METHOD flipCoordinates
   METHOD toAffine
   METHOD toTransform
   METHOD map
   METHOD mapVector
   METHOD mapRect
   METHOD optimize

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMatrix4x4
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QMatrix4x4>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtGui/QMatrix4x4>
#endif

#include <QtGui/QMatrix>
#include <QtGui/QTransform>

HB_FUNC_STATIC( QMATRIX4X4_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QMatrix4x4()
    */
    auto obj = new QMatrix4x4();
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(16) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && HB_ISNUM(6) && HB_ISNUM(7) && HB_ISNUM(8) && HB_ISNUM(9) && HB_ISNUM(10) && HB_ISNUM(11) && HB_ISNUM(12) && HB_ISNUM(13) && HB_ISNUM(14) && HB_ISNUM(15) && HB_ISNUM(16) )
  {
    /*
    QMatrix4x4( float m11, float m12, float m13, float m14, float m21, float m22, float m23, float m24, float m31, float m32, float m33, float m34, float m41, float m42, float m43, float m44 )
    */
    auto obj = new QMatrix4x4( PFLOAT(1), PFLOAT(2), PFLOAT(3), PFLOAT(4), PFLOAT(5), PFLOAT(6), PFLOAT(7), PFLOAT(8), PFLOAT(9), PFLOAT(10), PFLOAT(11), PFLOAT(12), PFLOAT(13), PFLOAT(14), PFLOAT(15), PFLOAT(16) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && ISQTRANSFORM(1) )
  {
    /*
    QMatrix4x4( const QTransform & transform )
    */
    auto obj = new QMatrix4x4( *PQTRANSFORM(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && ISQMATRIX(1) )
  {
    /*
    QMatrix4x4( const QMatrix & matrix )
    */
    auto obj = new QMatrix4x4( *PQMATRIX(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMATRIX4X4_DELETE )
{
  auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QVector4D column(int index) const
*/
HB_FUNC_STATIC( QMATRIX4X4_COLUMN )
{
#ifndef QT_NO_VECTOR4D
  auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      auto ptr = new QVector4D( obj->column( PINT(1) ) );
      Qt5xHb::createReturnClass(ptr, "QVECTOR4D", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setColumn(int index, const QVector4D& value)
*/
HB_FUNC_STATIC( QMATRIX4X4_SETCOLUMN )
{
#ifndef QT_NO_VECTOR4D
  auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQVECTOR4D(2) )
    {
#endif
      obj->setColumn( PINT(1), *PQVECTOR4D(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QVector4D row(int index) const
*/
HB_FUNC_STATIC( QMATRIX4X4_ROW )
{
#ifndef QT_NO_VECTOR4D
  auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      auto ptr = new QVector4D( obj->row( PINT(1) ) );
      Qt5xHb::createReturnClass(ptr, "QVECTOR4D", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setRow(int index, const QVector4D& value)
*/
HB_FUNC_STATIC( QMATRIX4X4_SETROW )
{
#ifndef QT_NO_VECTOR4D
  auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQVECTOR4D(2) )
    {
#endif
      obj->setRow( PINT(1), *PQVECTOR4D(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool isAffine() const
*/
HB_FUNC_STATIC( QMATRIX4X4_ISAFFINE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isAffine() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
bool isIdentity() const
*/
HB_FUNC_STATIC( QMATRIX4X4_ISIDENTITY )
{
  auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isIdentity() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setToIdentity()
*/
HB_FUNC_STATIC( QMATRIX4X4_SETTOIDENTITY )
{
  auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->setToIdentity();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void fill( float value )
*/
HB_FUNC_STATIC( QMATRIX4X4_FILL )
{
  auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->fill( PFLOAT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
double determinant() const
*/
HB_FUNC_STATIC( QMATRIX4X4_DETERMINANT )
{
  auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RDOUBLE( obj->determinant() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QMatrix4x4 inverted( bool * invertible = nullptr ) const
*/
HB_FUNC_STATIC( QMATRIX4X4_INVERTED )
{
  auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( HB_ISLOG(1) || HB_ISNIL(1) ) )
    {
#endif
      bool par1;
      auto ptr = new QMatrix4x4( obj->inverted( &par1 ) );
      Qt5xHb::createReturnClass(ptr, "QMATRIX4X4", true);
      hb_storl( par1, 1 );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QMatrix4x4 transposed() const
*/
HB_FUNC_STATIC( QMATRIX4X4_TRANSPOSED )
{
  auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QMatrix4x4( obj->transposed() );
      Qt5xHb::createReturnClass(ptr, "QMATRIX4X4", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QMatrix3x3 normalMatrix() const
*/
HB_FUNC_STATIC( QMATRIX4X4_NORMALMATRIX )
{
  auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QMatrix3x3( obj->normalMatrix() );
      Qt5xHb::createReturnClass(ptr, "QMATRIX3X3", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QMATRIX4X4_SCALE )
{
  if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
#ifndef QT_NO_VECTOR3D
    /*
    void scale( const QVector3D & vector )
    */
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->scale( *PQVECTOR3D(1) );
    }

    hb_itemReturn(hb_stackSelfItem());

#endif
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    void scale( float x, float y )
    */
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->scale( PFLOAT(1), PFLOAT(2) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) )
  {
    /*
    void scale( float x, float y, float z )
    */
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->scale( PFLOAT(1), PFLOAT(2), PFLOAT(3) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    void scale( float factor )
    */
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->scale( PFLOAT(1) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMATRIX4X4_TRANSLATE )
{
  if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
#ifndef QT_NO_VECTOR3D
    /*
    void translate( const QVector3D & vector )
    */
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->translate( *PQVECTOR3D(1) );
    }

    hb_itemReturn(hb_stackSelfItem());

#endif
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    void translate( float x, float y )
    */
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->translate( PFLOAT(1), PFLOAT(2) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) )
  {
    /*
    void translate( float x, float y, float z )
    */
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->translate( PFLOAT(1), PFLOAT(2), PFLOAT(3) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMATRIX4X4_ROTATE )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && ISQVECTOR3D(2) )
  {
#ifndef QT_NO_VECTOR3D
    /*
    void rotate( float angle, const QVector3D & vector )
    */
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->rotate( PFLOAT(1), *PQVECTOR3D(2) );
    }

    hb_itemReturn(hb_stackSelfItem());

#endif
  }
  else if( ISBETWEEN(3, 4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && ( HB_ISNUM(4) || HB_ISNIL(4) ) )
  {
    /*
    void rotate( float angle, float x, float y, float z = 0.0f )
    */
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->rotate( PFLOAT(1), PFLOAT(2), PFLOAT(3), OPFLOAT( 4, 0.0f ) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(1) && ISQQUATERNION(1) )
  {
#ifndef QT_NO_QUATERNION
    /*
    void rotate( const QQuaternion & quaternion )
    */
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->rotate( *PQQUATERNION(1) );
    }

    hb_itemReturn(hb_stackSelfItem());

#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMATRIX4X4_ORTHO )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    /*
    void ortho( const QRect & rect )
    */
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->ortho( *PQRECT(1) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    /*
    void ortho( const QRectF & rect )
    */
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->ortho( *PQRECTF(1) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(6) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && HB_ISNUM(6) )
  {
    /*
    void ortho( float left, float right, float bottom, float top, float nearPlane, float farPlane )
    */
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->ortho( PFLOAT(1), PFLOAT(2), PFLOAT(3), PFLOAT(4), PFLOAT(5), PFLOAT(6) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void frustum( float left, float right, float bottom, float top, float nearPlane, float farPlane )
*/
HB_FUNC_STATIC( QMATRIX4X4_FRUSTUM )
{
  auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(6) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && HB_ISNUM(6) )
    {
#endif
      obj->frustum( PFLOAT(1), PFLOAT(2), PFLOAT(3), PFLOAT(4), PFLOAT(5), PFLOAT(6) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void perspective( float verticalAngle, float aspectRatio, float nearPlane, float farPlane )
*/
HB_FUNC_STATIC( QMATRIX4X4_PERSPECTIVE )
{
  auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) )
    {
#endif
      obj->perspective( PFLOAT(1), PFLOAT(2), PFLOAT(3), PFLOAT(4) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void lookAt(const QVector3D& eye, const QVector3D& center, const QVector3D& up)
*/
HB_FUNC_STATIC( QMATRIX4X4_LOOKAT )
{
#ifndef QT_NO_VECTOR3D
  auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQVECTOR3D(1) && ISQVECTOR3D(2) && ISQVECTOR3D(3) )
    {
#endif
      obj->lookAt( *PQVECTOR3D(1), *PQVECTOR3D(2), *PQVECTOR3D(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

HB_FUNC_STATIC( QMATRIX4X4_VIEWPORT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    /*
    void viewport( const QRectF & rect )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->viewport( *PQRECTF(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
#endif

  }
  else if( ISBETWEEN(4, 6) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && ( HB_ISNUM(5) || HB_ISNIL(5) ) && ( HB_ISNUM(6) || HB_ISNIL(6) ) )
  {
    /*
    void viewport( float left, float bottom, float width, float height, float nearPlane = 0.0f, float farPlane = 1.0f )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->viewport( PFLOAT(1), PFLOAT(2), PFLOAT(3), PFLOAT(4), OPFLOAT( 5, 0.0f ), OPFLOAT( 6, 1.0f ) );
    }

    hb_itemReturn(hb_stackSelfItem());
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void flipCoordinates()
*/
HB_FUNC_STATIC( QMATRIX4X4_FLIPCOORDINATES )
{
  auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->flipCoordinates();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QMatrix toAffine() const
*/
HB_FUNC_STATIC( QMATRIX4X4_TOAFFINE )
{
  auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QMatrix( obj->toAffine() );
      Qt5xHb::createReturnClass(ptr, "QMATRIX", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QMATRIX4X4_TOTRANSFORM )
{
  if( ISNUMPAR(0) )
  {
    /*
    QTransform toTransform() const
    */
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QTransform( obj->toTransform() );
      Qt5xHb::createReturnClass(ptr, "QTRANSFORM", true);
    }

  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QTransform toTransform( float distanceToPlane ) const
    */
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QTransform( obj->toTransform( PFLOAT(1) ) );
      Qt5xHb::createReturnClass(ptr, "QTRANSFORM", true);
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMATRIX4X4_MAP )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    /*
    QPoint map( const QPoint & point ) const
    */
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QPoint( obj->map( *PQPOINT(1) ) );
      Qt5xHb::createReturnClass(ptr, "QPOINT", true);
    }

  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    /*
    QPointF map( const QPointF & point ) const
    */
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QPointF( obj->map( *PQPOINTF(1) ) );
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
    }

  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
#ifndef QT_NO_VECTOR3D
    /*
    QVector3D map( const QVector3D & point ) const
    */
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QVector3D( obj->map( *PQVECTOR3D(1) ) );
      Qt5xHb::createReturnClass(ptr, "QVECTOR3D", true);
    }

#endif
  }
  else if( ISNUMPAR(1) && ISQVECTOR4D(1) )
  {
#ifndef QT_NO_VECTOR4D
    /*
    QVector4D map( const QVector4D & point ) const
    */
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QVector4D( obj->map( *PQVECTOR4D(1) ) );
      Qt5xHb::createReturnClass(ptr, "QVECTOR4D", true);
    }

#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QVector3D mapVector(const QVector3D& vector) const
*/
HB_FUNC_STATIC( QMATRIX4X4_MAPVECTOR )
{
#ifndef QT_NO_VECTOR3D
  auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVECTOR3D(1) )
    {
#endif
      auto ptr = new QVector3D( obj->mapVector( *PQVECTOR3D(1) ) );
      Qt5xHb::createReturnClass(ptr, "QVECTOR3D", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC( QMATRIX4X4_MAPRECT )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    /*
    QRect mapRect( const QRect & rect ) const
    */
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QRect( obj->mapRect( *PQRECT(1) ) );
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
    }

  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    /*
    QRectF mapRect( const QRectF & rect ) const
    */
    auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QRectF( obj->mapRect( *PQRECTF(1) ) );
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void optimize()
*/
HB_FUNC_STATIC( QMATRIX4X4_OPTIMIZE )
{
  auto obj = static_cast<QMatrix4x4*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->optimize();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QMATRIX4X4_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, static_cast<void*>(hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0))));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, static_cast<void*>(hb_itemGetPtr(hb_param(1, HB_IT_POINTER))));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QMATRIX4X4_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMATRIX4X4_NEWFROM );
}

HB_FUNC_STATIC( QMATRIX4X4_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMATRIX4X4_NEWFROM );
}

HB_FUNC_STATIC( QMATRIX4X4_SELFDESTRUCTION )
{
  hb_retl(static_cast<bool>(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0))));
}

HB_FUNC_STATIC( QMATRIX4X4_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
