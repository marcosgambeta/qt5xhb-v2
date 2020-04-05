/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "HAbstractListModel.h"

HAbstractListModel::HAbstractListModel(QObject * parent) : QAbstractListModel(parent)
{
  // linhas
  rowCountCB = nullptr;

  // células
  getFieldCB = nullptr;
  getFieldDecorationCB = nullptr;
  getFieldEditCB = nullptr;
  getFieldToolTipCB = nullptr;
  getFieldStatusTipCB = nullptr;
  getFieldWhatsThisCB = nullptr;
  getFieldSizeHintCB = nullptr;
  getFieldFontCB = nullptr;
  getFieldAlignCB = nullptr;
  getFieldBGColorCB = nullptr;
  getFieldFGColorCB = nullptr;

  // cabeçalho horizontal
  getHHCB = nullptr;
  getHHDecorationCB = nullptr;
  getHHFontCB = nullptr;
  getHHAlignCB = nullptr;
  getHHBGColorCB = nullptr;
  getHHFGColorCB = nullptr;

  // cabeçalho vertical
  getVHCB = nullptr;
  getVHDecorationCB = nullptr;
  getVHFontCB = nullptr;
  getVHAlignCB = nullptr;
  getVHBGColorCB = nullptr;
  getVHFGColorCB = nullptr;
}

HAbstractListModel::~HAbstractListModel()
{
  // linhas
  if( rowCountCB != nullptr )
  {
    hb_itemRelease( rowCountCB );
  }

  // células
  if( getFieldCB != nullptr )
  {
    hb_itemRelease( getFieldCB );
  }
  if( getFieldDecorationCB != nullptr  )
  {
    hb_itemRelease( getFieldDecorationCB );
  }
  if( getFieldEditCB != nullptr )
  {
    hb_itemRelease( getFieldEditCB );
  }
  if( getFieldToolTipCB != nullptr )
  {
    hb_itemRelease( getFieldToolTipCB );
  }
  if( getFieldStatusTipCB != nullptr )
  {
    hb_itemRelease( getFieldStatusTipCB );
  }
  if( getFieldWhatsThisCB != nullptr )
  {
    hb_itemRelease( getFieldWhatsThisCB );
  }
  if( getFieldSizeHintCB != nullptr )
  {
    hb_itemRelease( getFieldSizeHintCB );
  }
  if( getFieldFontCB != nullptr )
  {
    hb_itemRelease( getFieldFontCB );
  }
  if( getFieldAlignCB != nullptr )
  {
    hb_itemRelease( getFieldAlignCB );
  }
  if( getFieldBGColorCB != nullptr )
  {
    hb_itemRelease( getFieldBGColorCB );
  }
  if( getFieldFGColorCB != nullptr )
  {
    hb_itemRelease( getFieldFGColorCB );
  }

  // cabeçalho horizontal
  if( getHHCB != nullptr )
  {
    hb_itemRelease( getHHCB );
  }
  if( getHHDecorationCB != nullptr )
  {
    hb_itemRelease( getHHDecorationCB );
  }
  if( getHHFontCB != nullptr )
  {
    hb_itemRelease( getHHFontCB );
  }
  if( getHHAlignCB != nullptr )
  {
    hb_itemRelease( getHHAlignCB );
  }
  if( getHHBGColorCB != nullptr )
  {
    hb_itemRelease( getHHBGColorCB );
  }
  if( getHHFGColorCB != nullptr )
  {
    hb_itemRelease( getHHFGColorCB );
  }

  // dados do cabecalho vertical
  if( getVHCB != nullptr )
  {
    hb_itemRelease( getVHCB );
  }
  if( getVHDecorationCB != nullptr )
  {
    hb_itemRelease( getVHDecorationCB );
  }
  if( getVHFontCB != nullptr )
  {
    hb_itemRelease( getVHFontCB );
  }
  if( getVHAlignCB != nullptr )
  {
    hb_itemRelease( getVHAlignCB );
  }
  if( getVHBGColorCB != nullptr )
  {
    hb_itemRelease( getVHBGColorCB );
  }
  if( getVHFGColorCB != nullptr )
  {
    hb_itemRelease( getVHFGColorCB );
  }

}

// linhas

void HAbstractListModel::setRowCountCB( PHB_ITEM block )
{
  if( rowCountCB != nullptr )
  {
    hb_itemRelease( rowCountCB );
  }
  if( block != nullptr )
  {
    rowCountCB = hb_itemNew( block );
  }
}

// células

void HAbstractListModel::setDisplayRoleCB( PHB_ITEM block )
{
  if( getFieldCB != nullptr )
  {
    hb_itemRelease( getFieldCB );
  }
  if( block != nullptr )
  {
    getFieldCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setDecorationRoleCB( PHB_ITEM block )
{
  if( getFieldDecorationCB != nullptr )
  {
    hb_itemRelease( getFieldDecorationCB );
  }
  if( block != nullptr )
  {
    getFieldDecorationCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setEditRoleCB( PHB_ITEM block )
{
  if( getFieldEditCB != nullptr )
  {
    hb_itemRelease( getFieldEditCB );
  }
  if( block != nullptr )
  {
    getFieldEditCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setToolTipRoleCB( PHB_ITEM block )
{
  if( getFieldToolTipCB != nullptr )
  {
    hb_itemRelease( getFieldToolTipCB );
  }
  if( block != nullptr )
  {
    getFieldToolTipCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setStatusTipRoleCB( PHB_ITEM block )
{
  if( getFieldStatusTipCB != nullptr )
  {
    hb_itemRelease( getFieldStatusTipCB );
  }
  if( block != nullptr )
  {
    getFieldStatusTipCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setWhatsThisRoleCB( PHB_ITEM block )
{
  if( getFieldWhatsThisCB != nullptr )
  {
    hb_itemRelease( getFieldWhatsThisCB );
  }
  if( block != nullptr )
  {
    getFieldWhatsThisCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setSizeHintRoleCB( PHB_ITEM block )
{
  if( getFieldSizeHintCB != nullptr )
  {
    hb_itemRelease( getFieldSizeHintCB );
  }
  if( block != nullptr )
  {
    getFieldSizeHintCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setFontRoleCB( PHB_ITEM block )
{
  if( getFieldFontCB != nullptr )
  {
    hb_itemRelease( getFieldFontCB );
  }
  if( block != nullptr )
  {
    getFieldFontCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setTextAlignmentRoleCB( PHB_ITEM block )
{
  if( getFieldAlignCB != nullptr )
  {
    hb_itemRelease( getFieldAlignCB );
  }
  if( block != nullptr )
  {
    getFieldAlignCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setBackgroundRoleCB( PHB_ITEM block )
{
  if( getFieldBGColorCB != nullptr )
  {
    hb_itemRelease( getFieldBGColorCB );
  }
  if( block != nullptr )
  {
    getFieldBGColorCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setForegroundRoleCB( PHB_ITEM block )
{
  if( getFieldFGColorCB != nullptr )
  {
    hb_itemRelease( getFieldFGColorCB );
  }
  if( block != nullptr )
  {
    getFieldFGColorCB = hb_itemNew( block );
  }
}

// cabeçalho horizontal

void HAbstractListModel::setHorizontalHeaderDisplayRoleCB( PHB_ITEM block )
{
  if( getHHCB != nullptr )
  {
    hb_itemRelease( getHHCB );
  }
  if( block != nullptr )
  {
    getHHCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setHorizontalHeaderDecorationRoleCB( PHB_ITEM block )
{
  if( getHHDecorationCB != nullptr )
  {
    hb_itemRelease( getHHDecorationCB );
  }
  if( block != nullptr )
  {
    getHHDecorationCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setHorizontalHeaderFontRoleCB( PHB_ITEM block )
{
  if( getHHFontCB != nullptr )
  {
    hb_itemRelease( getHHFontCB );
  }
  if( block != nullptr )
  {
    getHHFontCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setHorizontalHeaderTextAlignmentRoleCB( PHB_ITEM block )
{
  if( getHHAlignCB != nullptr )
  {
    hb_itemRelease( getHHAlignCB );
  }
  if( block != nullptr )
  {
    getHHAlignCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setHorizontalHeaderBackgroundRoleCB( PHB_ITEM block )
{
  if( getHHBGColorCB != nullptr )
  {
    hb_itemRelease( getHHBGColorCB );
  }
  if( block != nullptr )
  {
    getHHBGColorCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setHorizontalHeaderForegroundRoleCB( PHB_ITEM block )
{
  if( getHHFGColorCB != nullptr )
  {
    hb_itemRelease( getHHFGColorCB );
  }
  if( block != nullptr )
  {
    getHHFGColorCB = hb_itemNew( block );
  }
}

// cabeçalho vertical

void HAbstractListModel::setVerticalHeaderDisplayRoleCB( PHB_ITEM block )
{
  if( getVHCB != nullptr )
  {
    hb_itemRelease( getVHCB );
  }
  if( block != nullptr )
  {
    getVHCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setVerticalHeaderDecorationRoleCB( PHB_ITEM block )
{
  if( getVHDecorationCB != nullptr )
  {
    hb_itemRelease( getVHDecorationCB );
  }
  if( block != nullptr )
  {
    getVHDecorationCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setVerticalHeaderFontRoleCB( PHB_ITEM block )
{
  if( getVHFontCB != nullptr )
  {
    hb_itemRelease( getVHFontCB );
  }
  if( block != nullptr )
  {
    getVHFontCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setVerticalHeaderTextAlignmentRoleCB( PHB_ITEM block )
{
  if( getVHAlignCB != nullptr )
  {
    hb_itemRelease( getVHAlignCB );
  }
  if( block != nullptr )
  {
    getVHAlignCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setVerticalHeaderBackgroundRoleCB( PHB_ITEM block )
{
  if( getVHBGColorCB != nullptr )
  {
    hb_itemRelease( getVHBGColorCB );
  }
  if( block != nullptr )
  {
    getVHBGColorCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setVerticalHeaderForegroundRoleCB( PHB_ITEM block )
{
  if( getVHFGColorCB != nullptr )
  {
    hb_itemRelease( getVHFGColorCB );
  }
  if( block != nullptr )
  {
    getVHFGColorCB = hb_itemNew( block );
  }
}

QVariant HAbstractListModel::data( const QModelIndex & index, int role ) const
{
  QVariant data;

  if( ( role == Qt::DisplayRole ) && ( getFieldCB != nullptr ) )
  {
    PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldCB, 1, pRow ) );
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
  else if( ( role == Qt::DecorationRole ) && ( getFieldDecorationCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldDecorationCB, 1, pRow ) );
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
  else if( ( role == Qt::EditRole ) && ( getFieldEditCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldEditCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = hb_itemGetCPtr( pRet );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
  }
  else if( ( role == Qt::ToolTipRole ) && ( getFieldToolTipCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldToolTipCB, 1, pRow ) );
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
  else if( ( role == Qt::StatusTipRole ) && ( getFieldStatusTipCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldStatusTipCB, 1, pRow ) );
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
  else if( ( role == Qt::WhatsThisRole ) && ( getFieldWhatsThisCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldWhatsThisCB, 1, pRow ) );
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
  else if( ( role == Qt::SizeHintRole ) && ( getFieldSizeHintCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldSizeHintCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QSize *) ptr );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
  }
  else if( ( role == Qt::FontRole ) && ( getFieldFontCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldFontCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QFont *) ptr );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
  }
  else if( ( role == Qt::TextAlignmentRole ) && ( getFieldAlignCB != nullptr ) )
  {
    PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldAlignCB, 1, pRow ) );
    if( hb_itemType( pRet ) & HB_IT_NUMERIC )
    {
      data = hb_itemGetNI( pRet );
    }
    hb_itemRelease( pRow );
    hb_itemRelease( pRet );
  }
  else if( ( role == Qt::BackgroundRole ) && ( getFieldBGColorCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldBGColorCB, 1, pRow ) );
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
  else if( ( role == Qt::ForegroundRole ) && ( getFieldFGColorCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldFGColorCB, 1, pRow ) );
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
    if( ( role == Qt::DisplayRole ) && ( getHHCB != nullptr ) )
    {
      PHB_ITEM pCol = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHCB, 1, pCol ) );
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
    else if( ( role == Qt::DecorationRole ) && ( getHHDecorationCB != nullptr ) )
    {
      PHB_ITEM pCol = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHDecorationCB, 1, pCol ) );
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
    else if( ( role == Qt::FontRole ) && ( getHHFontCB != nullptr ) )
    {
     PHB_ITEM pCol = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHFontCB, 1, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QFont *) ptr );
     }
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
    }
    else if( ( role == Qt::TextAlignmentRole ) && ( getHHAlignCB  != nullptr ) )
    {
      PHB_ITEM pCol = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHAlignCB, 1, pCol ) );
      if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      hb_itemRelease( pCol );
      hb_itemRelease( pRet );
    }
    else if( ( role == Qt::BackgroundRole ) && ( getHHBGColorCB  != nullptr ) )
    {
     PHB_ITEM pCol = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHBGColorCB, 1, pCol ) );
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
    else if( ( role == Qt::ForegroundRole ) && ( getHHFGColorCB  != nullptr ) )
    {
     PHB_ITEM pCol = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHFGColorCB, 1, pCol ) );
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
    if( ( role == Qt::DisplayRole ) && ( getVHCB != nullptr ) )
    {
      PHB_ITEM pRow = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHCB, 1, pRow ) );
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
    else if( ( role == Qt::DecorationRole ) && ( getVHDecorationCB != nullptr ) )
    {
      PHB_ITEM pRow = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHDecorationCB, 1, pRow ) );
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
    else if( ( role == Qt::FontRole ) && ( getVHFontCB != nullptr ) )
    {
     PHB_ITEM pRow = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHFontCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QFont *) ptr );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
    }
    else if( ( role == Qt::TextAlignmentRole ) && ( getVHAlignCB != nullptr ) )
    {
      PHB_ITEM pRow = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHAlignCB, 1, pRow ) );
      if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      hb_itemRelease( pRow );
      hb_itemRelease( pRet );
    }
    else if( ( role == Qt::BackgroundRole ) && ( getVHBGColorCB != nullptr ) )
    {
     PHB_ITEM pRow = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHBGColorCB, 1, pRow ) );
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
    else if( ( role == Qt::ForegroundRole ) && ( getVHFGColorCB != nullptr ) )
    {
     PHB_ITEM pRow = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHFGColorCB, 1, pRow ) );
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
    if( rowCountCB != nullptr )
    {
      return (int) hb_itemGetNI( hb_vmEvalBlockV( rowCountCB, 0 ) );
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
  // Remember the QModelIndex that will change
  // Update your internal data
  // Call changePersistentIndex()
  // emit layoutChanged
  emit QAbstractItemModel::layoutChanged();
}
