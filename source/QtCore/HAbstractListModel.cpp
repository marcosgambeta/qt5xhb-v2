/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "HAbstractListModel.h"

HAbstractListModel::HAbstractListModel( QObject * parent ) : QAbstractListModel( parent )
{
  // linhas
  m_rowCountCB = nullptr;

  // células
  m_getFieldCB = nullptr;
  m_getFieldDecorationCB = nullptr;
  m_getFieldEditCB = nullptr;
  m_getFieldToolTipCB = nullptr;
  m_getFieldStatusTipCB = nullptr;
  m_getFieldWhatsThisCB = nullptr;
  m_getFieldSizeHintCB = nullptr;
  m_getFieldFontCB = nullptr;
  m_getFieldAlignCB = nullptr;
  m_getFieldBGColorCB = nullptr;
  m_getFieldFGColorCB = nullptr;

  // cabeçalho horizontal
  m_getHHCB = nullptr;
  m_getHHDecorationCB = nullptr;
  m_getHHFontCB = nullptr;
  m_getHHAlignCB = nullptr;
  m_getHHBGColorCB = nullptr;
  m_getHHFGColorCB = nullptr;

  // cabeçalho vertical
  m_getVHCB = nullptr;
  m_getVHDecorationCB = nullptr;
  m_getVHFontCB = nullptr;
  m_getVHAlignCB = nullptr;
  m_getVHBGColorCB = nullptr;
  m_getVHFGColorCB = nullptr;
}

HAbstractListModel::~HAbstractListModel()
{
  // linhas
  if( m_rowCountCB != nullptr )
  {
    hb_itemRelease( m_rowCountCB );
  }

  // células
  if( m_getFieldCB != nullptr )
  {
    hb_itemRelease( m_getFieldCB );
  }
  if( m_getFieldDecorationCB != nullptr  )
  {
    hb_itemRelease( m_getFieldDecorationCB );
  }
  if( m_getFieldEditCB != nullptr )
  {
    hb_itemRelease( m_getFieldEditCB );
  }
  if( m_getFieldToolTipCB != nullptr )
  {
    hb_itemRelease( m_getFieldToolTipCB );
  }
  if( m_getFieldStatusTipCB != nullptr )
  {
    hb_itemRelease( m_getFieldStatusTipCB );
  }
  if( m_getFieldWhatsThisCB != nullptr )
  {
    hb_itemRelease( m_getFieldWhatsThisCB );
  }
  if( m_getFieldSizeHintCB != nullptr )
  {
    hb_itemRelease( m_getFieldSizeHintCB );
  }
  if( m_getFieldFontCB != nullptr )
  {
    hb_itemRelease( m_getFieldFontCB );
  }
  if( m_getFieldAlignCB != nullptr )
  {
    hb_itemRelease( m_getFieldAlignCB );
  }
  if( m_getFieldBGColorCB != nullptr )
  {
    hb_itemRelease( m_getFieldBGColorCB );
  }
  if( m_getFieldFGColorCB != nullptr )
  {
    hb_itemRelease( m_getFieldFGColorCB );
  }

  // cabeçalho horizontal
  if( m_getHHCB != nullptr )
  {
    hb_itemRelease( m_getHHCB );
  }
  if( m_getHHDecorationCB != nullptr )
  {
    hb_itemRelease( m_getHHDecorationCB );
  }
  if( m_getHHFontCB != nullptr )
  {
    hb_itemRelease( m_getHHFontCB );
  }
  if( m_getHHAlignCB != nullptr )
  {
    hb_itemRelease( m_getHHAlignCB );
  }
  if( m_getHHBGColorCB != nullptr )
  {
    hb_itemRelease( m_getHHBGColorCB );
  }
  if( m_getHHFGColorCB != nullptr )
  {
    hb_itemRelease( m_getHHFGColorCB );
  }

  // dados do cabecalho vertical
  if( m_getVHCB != nullptr )
  {
    hb_itemRelease( m_getVHCB );
  }
  if( m_getVHDecorationCB != nullptr )
  {
    hb_itemRelease( m_getVHDecorationCB );
  }
  if( m_getVHFontCB != nullptr )
  {
    hb_itemRelease( m_getVHFontCB );
  }
  if( m_getVHAlignCB != nullptr )
  {
    hb_itemRelease( m_getVHAlignCB );
  }
  if( m_getVHBGColorCB != nullptr )
  {
    hb_itemRelease( m_getVHBGColorCB );
  }
  if( m_getVHFGColorCB != nullptr )
  {
    hb_itemRelease( m_getVHFGColorCB );
  }

}

// linhas

void HAbstractListModel::setRowCountCB( PHB_ITEM block )
{
  if( m_rowCountCB != nullptr )
  {
    hb_itemRelease( m_rowCountCB );
  }
  if( block != nullptr )
  {
    m_rowCountCB = hb_itemNew( block );
  }
}

// células

void HAbstractListModel::setDisplayRoleCB( PHB_ITEM block )
{
  if( m_getFieldCB != nullptr )
  {
    hb_itemRelease( m_getFieldCB );
  }
  if( block != nullptr )
  {
    m_getFieldCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setDecorationRoleCB( PHB_ITEM block )
{
  if( m_getFieldDecorationCB != nullptr )
  {
    hb_itemRelease( m_getFieldDecorationCB );
  }
  if( block != nullptr )
  {
    m_getFieldDecorationCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setEditRoleCB( PHB_ITEM block )
{
  if( m_getFieldEditCB != nullptr )
  {
    hb_itemRelease( m_getFieldEditCB );
  }
  if( block != nullptr )
  {
    m_getFieldEditCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setToolTipRoleCB( PHB_ITEM block )
{
  if( m_getFieldToolTipCB != nullptr )
  {
    hb_itemRelease( m_getFieldToolTipCB );
  }
  if( block != nullptr )
  {
    m_getFieldToolTipCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setStatusTipRoleCB( PHB_ITEM block )
{
  if( m_getFieldStatusTipCB != nullptr )
  {
    hb_itemRelease( m_getFieldStatusTipCB );
  }
  if( block != nullptr )
  {
    m_getFieldStatusTipCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setWhatsThisRoleCB( PHB_ITEM block )
{
  if( m_getFieldWhatsThisCB != nullptr )
  {
    hb_itemRelease( m_getFieldWhatsThisCB );
  }
  if( block != nullptr )
  {
    m_getFieldWhatsThisCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setSizeHintRoleCB( PHB_ITEM block )
{
  if( m_getFieldSizeHintCB != nullptr )
  {
    hb_itemRelease( m_getFieldSizeHintCB );
  }
  if( block != nullptr )
  {
    m_getFieldSizeHintCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setFontRoleCB( PHB_ITEM block )
{
  if( m_getFieldFontCB != nullptr )
  {
    hb_itemRelease( m_getFieldFontCB );
  }
  if( block != nullptr )
  {
    m_getFieldFontCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setTextAlignmentRoleCB( PHB_ITEM block )
{
  if( m_getFieldAlignCB != nullptr )
  {
    hb_itemRelease( m_getFieldAlignCB );
  }
  if( block != nullptr )
  {
    m_getFieldAlignCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setBackgroundRoleCB( PHB_ITEM block )
{
  if( m_getFieldBGColorCB != nullptr )
  {
    hb_itemRelease( m_getFieldBGColorCB );
  }
  if( block != nullptr )
  {
    m_getFieldBGColorCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setForegroundRoleCB( PHB_ITEM block )
{
  if( m_getFieldFGColorCB != nullptr )
  {
    hb_itemRelease( m_getFieldFGColorCB );
  }
  if( block != nullptr )
  {
    m_getFieldFGColorCB = hb_itemNew( block );
  }
}

// cabeçalho horizontal

void HAbstractListModel::setHorizontalHeaderDisplayRoleCB( PHB_ITEM block )
{
  if( m_getHHCB != nullptr )
  {
    hb_itemRelease( m_getHHCB );
  }
  if( block != nullptr )
  {
    m_getHHCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setHorizontalHeaderDecorationRoleCB( PHB_ITEM block )
{
  if( m_getHHDecorationCB != nullptr )
  {
    hb_itemRelease( m_getHHDecorationCB );
  }
  if( block != nullptr )
  {
    m_getHHDecorationCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setHorizontalHeaderFontRoleCB( PHB_ITEM block )
{
  if( m_getHHFontCB != nullptr )
  {
    hb_itemRelease( m_getHHFontCB );
  }
  if( block != nullptr )
  {
    m_getHHFontCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setHorizontalHeaderTextAlignmentRoleCB( PHB_ITEM block )
{
  if( m_getHHAlignCB != nullptr )
  {
    hb_itemRelease( m_getHHAlignCB );
  }
  if( block != nullptr )
  {
    m_getHHAlignCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setHorizontalHeaderBackgroundRoleCB( PHB_ITEM block )
{
  if( m_getHHBGColorCB != nullptr )
  {
    hb_itemRelease( m_getHHBGColorCB );
  }
  if( block != nullptr )
  {
    m_getHHBGColorCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setHorizontalHeaderForegroundRoleCB( PHB_ITEM block )
{
  if( m_getHHFGColorCB != nullptr )
  {
    hb_itemRelease( m_getHHFGColorCB );
  }
  if( block != nullptr )
  {
    m_getHHFGColorCB = hb_itemNew( block );
  }
}

// cabeçalho vertical

void HAbstractListModel::setVerticalHeaderDisplayRoleCB( PHB_ITEM block )
{
  if( m_getVHCB != nullptr )
  {
    hb_itemRelease( m_getVHCB );
  }
  if( block != nullptr )
  {
    m_getVHCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setVerticalHeaderDecorationRoleCB( PHB_ITEM block )
{
  if( m_getVHDecorationCB != nullptr )
  {
    hb_itemRelease( m_getVHDecorationCB );
  }
  if( block != nullptr )
  {
    m_getVHDecorationCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setVerticalHeaderFontRoleCB( PHB_ITEM block )
{
  if( m_getVHFontCB != nullptr )
  {
    hb_itemRelease( m_getVHFontCB );
  }
  if( block != nullptr )
  {
    m_getVHFontCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setVerticalHeaderTextAlignmentRoleCB( PHB_ITEM block )
{
  if( m_getVHAlignCB != nullptr )
  {
    hb_itemRelease( m_getVHAlignCB );
  }
  if( block != nullptr )
  {
    m_getVHAlignCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setVerticalHeaderBackgroundRoleCB( PHB_ITEM block )
{
  if( m_getVHBGColorCB != nullptr )
  {
    hb_itemRelease( m_getVHBGColorCB );
  }
  if( block != nullptr )
  {
    m_getVHBGColorCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setVerticalHeaderForegroundRoleCB( PHB_ITEM block )
{
  if( m_getVHFGColorCB != nullptr )
  {
    hb_itemRelease( m_getVHFGColorCB );
  }
  if( block != nullptr )
  {
    m_getVHFGColorCB = hb_itemNew( block );
  }
}

QVariant HAbstractListModel::data( const QModelIndex & index, int role ) const
{
  QVariant data;

  if( ( role == Qt::DisplayRole ) && ( m_getFieldCB != nullptr ) )
  {
    PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldCB, 1, pRow ) );
    if( hb_itemType( pRet ) & HB_IT_STRING )
    {
      #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
      data = QLatin1String( hb_itemGetCPtr( pRet ) );
      #else
      data = hb_itemGetCPtr( pRet );
      #endif
    }
    else if( hb_itemType( pRet ) & HB_IT_DOUBLE )
    {
      data = hb_itemGetND( pRet );
    }
    else if( hb_itemType( pRet ) & HB_IT_NUMERIC )
    {
      data = hb_itemGetNI( pRet );
    }
    else if( hb_itemType( pRet ) & HB_IT_LOGICAL )
    {
      data = hb_itemGetL( pRet );
    }
    hb_itemRelease( pRow );
    hb_itemRelease( pRet );
  }
  else if( ( role == Qt::DecorationRole ) && ( m_getFieldDecorationCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldDecorationCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
       //if( clsid == Class_Id_QIcon )
       if( hb_clsIsParent( hb_objGetClass( pRet ), "QICON" ) )
       {
         data = *( (QIcon *) ptr );
       }
       //else if( clsid == Class_Id_QPixmap )
       else if( hb_clsIsParent( hb_objGetClass( pRet ), "QPIXMAP" ) )
       {
         data = *( (QPixmap *) ptr );
       }
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QIcon( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
  }
  else if( ( role == Qt::EditRole ) && ( m_getFieldEditCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldEditCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = hb_itemGetCPtr( pRet );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
  }
  else if( ( role == Qt::ToolTipRole ) && ( m_getFieldToolTipCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldToolTipCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
       data = QLatin1String( hb_itemGetCPtr( pRet ) );
       #else
       data = hb_itemGetCPtr( pRet );
       #endif
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
  }
  else if( ( role == Qt::StatusTipRole ) && ( m_getFieldStatusTipCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldStatusTipCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
       data = QLatin1String( hb_itemGetCPtr( pRet ) );
       #else
       data = hb_itemGetCPtr( pRet );
       #endif
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
  }
  else if( ( role == Qt::WhatsThisRole ) && ( m_getFieldWhatsThisCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldWhatsThisCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
       data = QLatin1String( hb_itemGetCPtr( pRet ) );
       #else
       data = hb_itemGetCPtr( pRet );
       #endif
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
  }
  else if( ( role == Qt::SizeHintRole ) && ( m_getFieldSizeHintCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldSizeHintCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QSize *) ptr );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
  }
  else if( ( role == Qt::FontRole ) && ( m_getFieldFontCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldFontCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QFont *) ptr );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
  }
  else if( ( role == Qt::TextAlignmentRole ) && ( m_getFieldAlignCB != nullptr ) )
  {
    PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldAlignCB, 1, pRow ) );
    if( hb_itemType( pRet ) & HB_IT_NUMERIC )
    {
      data = hb_itemGetNI( pRet );
    }
    hb_itemRelease( pRow );
    hb_itemRelease( pRet );
  }
  else if( ( role == Qt::BackgroundRole ) && ( m_getFieldBGColorCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldBGColorCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
       //if( clsid == Class_Id_QColor )
       if( hb_clsIsParent( hb_objGetClass( pRet ), "QCOLOR" ) )
       {
         data = *( (QColor *) ptr );
       }
       //else if( clsid == Class_Id_QBrush )
       else if( hb_clsIsParent( hb_objGetClass( pRet ), "QBRUSH" ) )
       {
         data = *( (QBrush *) ptr );
       }
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
  }
  else if( ( role == Qt::ForegroundRole ) && ( m_getFieldFGColorCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldFGColorCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QColor *) ptr );
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
  }

  return data;
}

QVariant HAbstractListModel::headerData( int section, Qt::Orientation orientation, int role ) const
{
  QVariant data;

  if( orientation == Qt::Horizontal )
  {
    if( ( role == Qt::DisplayRole ) && ( m_getHHCB != nullptr ) )
    {
      PHB_ITEM pCol = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getHHCB, 1, pCol ) );
      if( hb_itemType( pRet ) & HB_IT_STRING )
      {
        #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
        data = QLatin1String( hb_itemGetCPtr( pRet ) );
        #else
        data = hb_itemGetCPtr( pRet );
        #endif
      }
      else if( hb_itemType( pRet ) & HB_IT_DOUBLE )
      {
        data = hb_itemGetND( pRet );
      }
      else if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      else if( hb_itemType( pRet ) & HB_IT_LOGICAL )
      {
        data = hb_itemGetL( pRet );
      }
      hb_itemRelease( pCol );
      hb_itemRelease( pRet );
    }
    else if( ( role == Qt::DecorationRole ) && ( m_getHHDecorationCB != nullptr ) )
    {
      PHB_ITEM pCol = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getHHDecorationCB, 1, pCol ) );
      if( hb_itemType( pRet ) & HB_IT_OBJECT )
      {
        void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
        //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
        //if( clsid == Class_Id_QIcon )
        if( hb_clsIsParent( hb_objGetClass( pRet ), "QICON" ) )
        {
          data = *( (QIcon *) ptr );
        }
        //else if( clsid == Class_Id_QPixmap )
        else if( hb_clsIsParent( hb_objGetClass( pRet ), "QPIXMAP" ) )
        {
          data = *( (QPixmap *) ptr );
        }
      }
      else if( hb_itemType( pRet ) & HB_IT_STRING )
      {
        data = QIcon( hb_itemGetCPtr( pRet ) );
      }
      hb_itemRelease( pCol );
      hb_itemRelease( pRet );
    }
    else if( ( role == Qt::FontRole ) && ( m_getHHFontCB != nullptr ) )
    {
     PHB_ITEM pCol = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getHHFontCB, 1, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QFont *) ptr );
     }
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
    }
    else if( ( role == Qt::TextAlignmentRole ) && ( m_getHHAlignCB  != nullptr ) )
    {
      PHB_ITEM pCol = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getHHAlignCB, 1, pCol ) );
      if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      hb_itemRelease( pCol );
      hb_itemRelease( pRet );
    }
    else if( ( role == Qt::BackgroundRole ) && ( m_getHHBGColorCB  != nullptr ) )
    {
     PHB_ITEM pCol = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getHHBGColorCB, 1, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
       //if( clsid == Class_Id_QColor )
       if( hb_clsIsParent( hb_objGetClass( pRet ), "QCOLOR" ) )
       {
         data = *( (QColor *) ptr );
       }
       //else if( clsid == Class_Id_QBrush )
       else if( hb_clsIsParent( hb_objGetClass( pRet ), "QBRUSH" ) )
       {
         data = *( (QBrush *) ptr );
       }
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
    }
    else if( ( role == Qt::ForegroundRole ) && ( m_getHHFGColorCB  != nullptr ) )
    {
     PHB_ITEM pCol = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getHHFGColorCB, 1, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QColor *) ptr );
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
    }
  }
  else if( orientation == Qt::Vertical )
  {
    if( ( role == Qt::DisplayRole ) && ( m_getVHCB != nullptr ) )
    {
      PHB_ITEM pRow = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getVHCB, 1, pRow ) );
      if( hb_itemType( pRet ) & HB_IT_STRING )
      {
        #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
        data = QLatin1String( hb_itemGetCPtr( pRet ) );
        #else
        data = hb_itemGetCPtr( pRet );
        #endif
      }
      else if( hb_itemType( pRet ) & HB_IT_DOUBLE )
      {
        data = hb_itemGetND( pRet );
      }
      else if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      else if( hb_itemType( pRet ) & HB_IT_LOGICAL )
      {
        data = hb_itemGetL( pRet );
      }
      hb_itemRelease( pRow );
      hb_itemRelease( pRet );
    }
    else if( ( role == Qt::DecorationRole ) && ( m_getVHDecorationCB != nullptr ) )
    {
      PHB_ITEM pRow = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getVHDecorationCB, 1, pRow ) );
      if( hb_itemType( pRet ) & HB_IT_OBJECT )
      {
        void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
        //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
        //if( clsid == Class_Id_QIcon )
        if( hb_clsIsParent( hb_objGetClass( pRet ), "QICON" ) )
        {
          data = *( (QIcon *) ptr );
        }
        //else if( clsid == Class_Id_QPixmap )
        else if( hb_clsIsParent( hb_objGetClass( pRet ), "QPIXMAP" ) )
        {
          data = *( (QPixmap *) ptr );
        }
      }
      else if( hb_itemType( pRet ) & HB_IT_STRING )
      {
        data = QIcon( hb_itemGetCPtr( pRet ) );
      }
      hb_itemRelease( pRow );
      hb_itemRelease( pRet );
    }
    else if( ( role == Qt::FontRole ) && ( m_getVHFontCB != nullptr ) )
    {
     PHB_ITEM pRow = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getVHFontCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QFont *) ptr );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
    }
    else if( ( role == Qt::TextAlignmentRole ) && ( m_getVHAlignCB != nullptr ) )
    {
      PHB_ITEM pRow = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getVHAlignCB, 1, pRow ) );
      if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      hb_itemRelease( pRow );
      hb_itemRelease( pRet );
    }
    else if( ( role == Qt::BackgroundRole ) && ( m_getVHBGColorCB != nullptr ) )
    {
     PHB_ITEM pRow = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getVHBGColorCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
       //if( clsid == Class_Id_QColor )
       if( hb_clsIsParent( hb_objGetClass( pRet ), "QCOLOR" ) )
       {
         data = *( (QColor *) ptr );
       }
       //else if( clsid == Class_Id_QBrush )
       else if( hb_clsIsParent( hb_objGetClass( pRet ), "QBRUSH" ) )
       {
         data = *( (QBrush *) ptr );
       }
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
    }
    else if( ( role == Qt::ForegroundRole ) && ( m_getVHFGColorCB != nullptr ) )
    {
     PHB_ITEM pRow = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getVHFGColorCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QColor *) ptr );
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
    }
  }

  return data;
}

int HAbstractListModel::rowCount( const QModelIndex & parent ) const
{
  if( parent.isValid() )
  {
    return 0;
  }
  else
  {
    if( m_rowCountCB != nullptr )
    {
      return (int) hb_itemGetNI( hb_vmEvalBlockV( m_rowCountCB, 0 ) );
    }
    else
    {
      return 0;
    }
  }
}

/*
  emite o sinal QAbstractItemModel::layoutChanged(), forçando
  o recarregamento dos dados
*/
void HAbstractListModel::reloadData()
{
  // Notas da documentação do Qt:
  // emit layoutAboutToBeChanged
  emit QAbstractItemModel::layoutAboutToBeChanged();
  // Remember the QModelIndex that will change
  // Update your internal data
  // Call changePersistentIndex()
  // emit layoutChanged
  emit QAbstractItemModel::layoutChanged();
}
