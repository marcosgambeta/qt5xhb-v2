/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "HAbstractTableModel.h"

/*
  método construtor
*/
HAbstractTableModel::HAbstractTableModel( QObject * parent ) : QAbstractTableModel( parent )
{
  // linhas e colunas
  m_rowCountCB = nullptr;
  m_columnCountCB = nullptr;

  // células
  m_itemDisplayCB = nullptr;
  m_itemDecorationCB = nullptr;
  m_itemEditCB = nullptr;
  m_itemToolTipCB = nullptr;
  m_itemStatusTipCB = nullptr;
  m_itemWhatsThisCB = nullptr;
  m_itemSizeHintCB = nullptr;
  m_itemFontCB = nullptr;
  m_itemTextAlignmentCB = nullptr;
  m_itemBackgroundCB = nullptr;
  m_itemForegroundCB = nullptr;
  m_itemCheckStateCB = nullptr;
  m_itemAccessibleTextCB = nullptr;
  m_itemAccessibleDescriptionCB = nullptr;

  // cabeçalho horizontal
  m_horizontalHeaderDisplayCB = nullptr;
  m_horizontalHeaderDecorationCB = nullptr;
  m_horizontalHeaderToolTipCB = nullptr;
  m_horizontalHeaderSizeHintCB = nullptr;
  m_horizontalHeaderFontCB = nullptr;
  m_horizontalHeaderTextAlignmentCB = nullptr;
  m_horizontalHeaderBackgroundCB = nullptr;
  m_horizontalHeaderForegroundCB = nullptr;

  // cabeçalho vertical
  m_verticalHeaderDisplayCB = nullptr;
  m_verticalHeaderDecorationCB = nullptr;
  m_verticalHeaderToolTipCB = nullptr;
  m_verticalHeaderSizeHintCB = nullptr;
  m_verticalHeaderFontCB = nullptr;
  m_verticalHeaderTextAlignmentCB = nullptr;
  m_verticalHeaderBackgroundCB = nullptr;
  m_verticalHeaderForegroundCB = nullptr;

  m_flagsCB = nullptr;
  m_setDataCB = nullptr;
}

/*
  método destruidor
*/
HAbstractTableModel::~HAbstractTableModel()
{
  // linhas e colunas
  if( m_rowCountCB != nullptr )
  {
    hb_itemRelease( m_rowCountCB );
    m_rowCountCB = nullptr;
  }
  if( m_columnCountCB != nullptr )
  {
    hb_itemRelease( m_columnCountCB );
    m_columnCountCB = nullptr;
  }

  // células
  if( m_itemDisplayCB != nullptr )
  {
    hb_itemRelease( m_itemDisplayCB );
    m_itemDisplayCB = nullptr;
  }
  if( m_itemDecorationCB != nullptr )
  {
    hb_itemRelease( m_itemDecorationCB );
    m_itemDecorationCB = nullptr;
  }
  if( m_itemEditCB != nullptr )
  {
    hb_itemRelease( m_itemEditCB );
    m_itemEditCB = nullptr;
  }
  if( m_itemToolTipCB != nullptr )
  {
    hb_itemRelease( m_itemToolTipCB );
    m_itemToolTipCB = nullptr;
  }
  if( m_itemStatusTipCB != nullptr )
  {
    hb_itemRelease( m_itemStatusTipCB );
    m_itemStatusTipCB = nullptr;
  }
  if( m_itemWhatsThisCB != nullptr )
  {
    hb_itemRelease( m_itemWhatsThisCB );
    m_itemWhatsThisCB = nullptr;
  }
  if( m_itemSizeHintCB != nullptr )
  {
    hb_itemRelease( m_itemSizeHintCB );
    m_itemSizeHintCB = nullptr;
  }
  if( m_itemFontCB != nullptr )
  {
    hb_itemRelease( m_itemFontCB );
    m_itemFontCB = nullptr;
  }
  if( m_itemTextAlignmentCB != nullptr )
  {
    hb_itemRelease( m_itemTextAlignmentCB );
    m_itemTextAlignmentCB = nullptr;
  }
  if( m_itemBackgroundCB != nullptr )
  {
    hb_itemRelease( m_itemBackgroundCB );
    m_itemBackgroundCB = nullptr;
  }
  if( m_itemForegroundCB != nullptr )
  {
    hb_itemRelease( m_itemForegroundCB );
    m_itemForegroundCB = nullptr;
  }
  if( m_itemCheckStateCB != nullptr )
  {
    hb_itemRelease( m_itemCheckStateCB );
    m_itemCheckStateCB = nullptr;
  }
  if( m_itemAccessibleTextCB != nullptr )
  {
    hb_itemRelease( m_itemAccessibleTextCB );
    m_itemAccessibleTextCB = nullptr;
  }
  if( m_itemAccessibleDescriptionCB != nullptr )
  {
    hb_itemRelease( m_itemAccessibleDescriptionCB );
    m_itemAccessibleDescriptionCB = nullptr;
  }

  // cabeçalho horizontal
  if( m_horizontalHeaderDisplayCB != nullptr )
  {
    hb_itemRelease( m_horizontalHeaderDisplayCB );
    m_horizontalHeaderDisplayCB = nullptr;
  }
  if( m_horizontalHeaderDecorationCB != nullptr )
  {
    hb_itemRelease( m_horizontalHeaderDecorationCB );
    m_horizontalHeaderDecorationCB = nullptr;
  }
  if( m_horizontalHeaderToolTipCB != nullptr )
  {
    hb_itemRelease( m_horizontalHeaderToolTipCB );
    m_horizontalHeaderToolTipCB = nullptr;
  }
  if( m_horizontalHeaderSizeHintCB != nullptr )
  {
    hb_itemRelease( m_horizontalHeaderSizeHintCB );
    m_horizontalHeaderSizeHintCB = nullptr;
  }
  if( m_horizontalHeaderFontCB != nullptr )
  {
    hb_itemRelease( m_horizontalHeaderFontCB );
    m_horizontalHeaderFontCB = nullptr;
  }
  if( m_horizontalHeaderTextAlignmentCB != nullptr )
  {
    hb_itemRelease( m_horizontalHeaderTextAlignmentCB );
    m_horizontalHeaderTextAlignmentCB = nullptr;
  }
  if( m_horizontalHeaderBackgroundCB != nullptr )
  {
    hb_itemRelease( m_horizontalHeaderBackgroundCB );
    m_horizontalHeaderBackgroundCB = nullptr;
  }
  if( m_horizontalHeaderForegroundCB != nullptr )
  {
    hb_itemRelease( m_horizontalHeaderForegroundCB );
    m_horizontalHeaderForegroundCB = nullptr;
  }

  // cabeçalho vertical
  if( m_verticalHeaderDisplayCB != nullptr )
  {
    hb_itemRelease( m_verticalHeaderDisplayCB );
    m_verticalHeaderDisplayCB = nullptr;
  }
  if( m_verticalHeaderDecorationCB != nullptr )
  {
    hb_itemRelease( m_verticalHeaderDecorationCB );
    m_verticalHeaderDecorationCB = nullptr;
  }
  if( m_verticalHeaderToolTipCB != nullptr )
  {
    hb_itemRelease( m_verticalHeaderToolTipCB );
    m_verticalHeaderToolTipCB = nullptr;
  }
  if( m_verticalHeaderSizeHintCB != nullptr )
  {
    hb_itemRelease( m_verticalHeaderSizeHintCB );
    m_verticalHeaderSizeHintCB = nullptr;
  }
  if( m_verticalHeaderFontCB != nullptr )
  {
    hb_itemRelease( m_verticalHeaderFontCB );
    m_verticalHeaderFontCB = nullptr;
  }
  if( m_verticalHeaderTextAlignmentCB != nullptr )
  {
    hb_itemRelease( m_verticalHeaderTextAlignmentCB );
    m_verticalHeaderTextAlignmentCB = nullptr;
  }
  if( m_verticalHeaderBackgroundCB != nullptr )
  {
    hb_itemRelease( m_verticalHeaderBackgroundCB );
    m_verticalHeaderBackgroundCB = nullptr;
  }
  if( m_verticalHeaderForegroundCB != nullptr )
  {
    hb_itemRelease( m_verticalHeaderForegroundCB );
    m_verticalHeaderForegroundCB = nullptr;
  }

  if( m_flagsCB != nullptr )
  {
    hb_itemRelease( m_flagsCB );
    m_flagsCB = nullptr;
  }
  if( m_setDataCB != nullptr )
  {
    hb_itemRelease( m_setDataCB );
    m_setDataCB = nullptr;
  }
}

/*
  define o codeblock para o número de linhas
*/
void HAbstractTableModel::setRowCountCB( PHB_ITEM block )
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

/*
  define o codeblock para o número de colunas
*/
void HAbstractTableModel::setColumnCountCB( PHB_ITEM block )
{
  if( m_columnCountCB != nullptr )
  {
    hb_itemRelease( m_columnCountCB );
  }
  if( block != nullptr )
  {
    m_columnCountCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o conteúdo da célula
*/
void HAbstractTableModel::setDisplayRoleCB( PHB_ITEM block )
{
  if( m_itemDisplayCB != nullptr )
  {
    hb_itemRelease( m_itemDisplayCB );
  }
  if( block != nullptr )
  {
    m_itemDisplayCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a decoração da célula
*/
void HAbstractTableModel::setDecorationRoleCB( PHB_ITEM block )
{
  if( m_itemDecorationCB != nullptr )
  {
    hb_itemRelease( m_itemDecorationCB );
  }
  if( block != nullptr )
  {
    m_itemDecorationCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a edição da célula
*/
void HAbstractTableModel::setEditRoleCB( PHB_ITEM block )
{
  if( m_itemEditCB != nullptr )
  {
    hb_itemRelease( m_itemEditCB );
  }
  if( block != nullptr )
  {
    m_itemEditCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o tooltip da célula
*/
void HAbstractTableModel::setToolTipRoleCB( PHB_ITEM block )
{
  if( m_itemToolTipCB != nullptr )
  {
    hb_itemRelease( m_itemToolTipCB );
  }
  if( block != nullptr )
  {
    m_itemToolTipCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o statustip da célula
*/
void HAbstractTableModel::setStatusTipRoleCB( PHB_ITEM block )
{
  if( m_itemStatusTipCB != nullptr )
  {
    hb_itemRelease( m_itemStatusTipCB );
  }
  if( block != nullptr )
  {
    m_itemStatusTipCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o whatsthis da célula
*/
void HAbstractTableModel::setWhatsThisRoleCB( PHB_ITEM block )
{
  if( m_itemWhatsThisCB != nullptr )
  {
    hb_itemRelease( m_itemWhatsThisCB );
  }
  if( block != nullptr )
  {
    m_itemWhatsThisCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o sizehint da célula
*/
void HAbstractTableModel::setSizeHintRoleCB( PHB_ITEM block )
{
  if( m_itemSizeHintCB != nullptr )
  {
    hb_itemRelease( m_itemSizeHintCB );
  }
  if( block != nullptr )
  {
    m_itemSizeHintCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a fonte da célula
*/
void HAbstractTableModel::setFontRoleCB( PHB_ITEM block )
{
  if( m_itemFontCB != nullptr )
  {
    hb_itemRelease( m_itemFontCB );
  }
  if( block != nullptr )
  {
    m_itemFontCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o alinhamento do conteúdo da célula
*/
void HAbstractTableModel::setTextAlignmentRoleCB( PHB_ITEM block )
{
  if( m_itemTextAlignmentCB != nullptr )
  {
    hb_itemRelease( m_itemTextAlignmentCB );
  }
  if( block != nullptr )
  {
    m_itemTextAlignmentCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o background da célula
*/
void HAbstractTableModel::setBackgroundRoleCB( PHB_ITEM block )
{
  if( m_itemBackgroundCB != nullptr )
  {
    hb_itemRelease( m_itemBackgroundCB );
  }
  if( block != nullptr )
  {
    m_itemBackgroundCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o foreground da célula
*/
void HAbstractTableModel::setForegroundRoleCB( PHB_ITEM block )
{
  if( m_itemForegroundCB != nullptr )
  {
    hb_itemRelease( m_itemForegroundCB );
  }
  if( block != nullptr )
  {
    m_itemForegroundCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o checkstate da célula
*/
void HAbstractTableModel::setCheckStateRoleCB( PHB_ITEM block )
{
  if( m_itemCheckStateCB != nullptr )
  {
    hb_itemRelease( m_itemCheckStateCB );
  }
  if( block != nullptr )
  {
    m_itemCheckStateCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o accessibleText da célula
*/
void HAbstractTableModel::setAccessibleTextRoleCB( PHB_ITEM block )
{
  if( m_itemAccessibleTextCB != nullptr )
  {
    hb_itemRelease( m_itemAccessibleTextCB );
  }
  if( block != nullptr )
  {
    m_itemAccessibleTextCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o accessibleDescription da célula
*/
void HAbstractTableModel::setAccessibleDescriptionRoleCB( PHB_ITEM block )
{
  if( m_itemAccessibleDescriptionCB != nullptr )
  {
    hb_itemRelease( m_itemAccessibleDescriptionCB );
  }
  if( block != nullptr )
  {
    m_itemAccessibleDescriptionCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o conteúdo do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderDisplayRoleCB( PHB_ITEM block )
{
  if( m_horizontalHeaderDisplayCB != nullptr )
  {
    hb_itemRelease( m_horizontalHeaderDisplayCB );
  }
  if( block != nullptr )
  {
    m_horizontalHeaderDisplayCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a decoração do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderDecorationRoleCB( PHB_ITEM block )
{
  if( m_horizontalHeaderDecorationCB != nullptr )
  {
    hb_itemRelease( m_horizontalHeaderDecorationCB );
  }
  if( block != nullptr )
  {
    m_horizontalHeaderDecorationCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o tooltip do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderToolTipRoleCB( PHB_ITEM block )
{
  if( m_horizontalHeaderToolTipCB != nullptr )
  {
    hb_itemRelease( m_horizontalHeaderToolTipCB );
  }
  if( block != nullptr )
  {
    m_horizontalHeaderToolTipCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o sizehint do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderSizeHintRoleCB( PHB_ITEM block )
{
  if( m_horizontalHeaderSizeHintCB != nullptr )
  {
    hb_itemRelease( m_horizontalHeaderSizeHintCB );
  }
  if( block != nullptr )
  {
    m_horizontalHeaderSizeHintCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a fonte do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderFontRoleCB( PHB_ITEM block )
{
  if( m_horizontalHeaderFontCB != nullptr )
  {
    hb_itemRelease( m_horizontalHeaderFontCB );
  }
  if( block != nullptr )
  {
    m_horizontalHeaderFontCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o alinhamento do conteúdo do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderTextAlignmentRoleCB( PHB_ITEM block )
{
  if( m_horizontalHeaderTextAlignmentCB != nullptr )
  {
    hb_itemRelease( m_horizontalHeaderTextAlignmentCB );
  }
  if( block != nullptr )
  {
    m_horizontalHeaderTextAlignmentCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o background do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderBackgroundRoleCB( PHB_ITEM block )
{
  if( m_horizontalHeaderBackgroundCB != nullptr )
  {
    hb_itemRelease( m_horizontalHeaderBackgroundCB );
  }
  if( block != nullptr )
  {
    m_horizontalHeaderBackgroundCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o foreground do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderForegroundRoleCB( PHB_ITEM block )
{
  if( m_horizontalHeaderForegroundCB != nullptr )
  {
    hb_itemRelease( m_horizontalHeaderForegroundCB );
  }
  if( block != nullptr )
  {
    m_horizontalHeaderForegroundCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o conteúdo do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderDisplayRoleCB( PHB_ITEM block )
{
  if( m_verticalHeaderDisplayCB != nullptr )
  {
    hb_itemRelease( m_verticalHeaderDisplayCB );
  }
  if( block != nullptr )
  {
    m_verticalHeaderDisplayCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a decoração do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderDecorationRoleCB( PHB_ITEM block )
{
  if( m_verticalHeaderDecorationCB != nullptr )
  {
    hb_itemRelease( m_verticalHeaderDecorationCB );
  }
  if( block != nullptr )
  {
    m_verticalHeaderDecorationCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o tooltip do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderToolTipRoleCB( PHB_ITEM block )
{
  if( m_verticalHeaderToolTipCB != nullptr )
  {
    hb_itemRelease( m_verticalHeaderToolTipCB );
  }
  if( block != nullptr )
  {
    m_verticalHeaderToolTipCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o sizehint do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderSizeHintRoleCB( PHB_ITEM block )
{
  if( m_verticalHeaderSizeHintCB != nullptr )
  {
    hb_itemRelease( m_verticalHeaderSizeHintCB );
  }
  if( block != nullptr )
  {
    m_verticalHeaderSizeHintCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a fonte do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderFontRoleCB( PHB_ITEM block )
{
  if( m_verticalHeaderFontCB != nullptr )
  {
    hb_itemRelease( m_verticalHeaderFontCB );
  }
  if( block != nullptr )
  {
    m_verticalHeaderFontCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o alinhamento do conteúdo do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderTextAlignmentRoleCB( PHB_ITEM block )
{
  if( m_verticalHeaderTextAlignmentCB != nullptr )
  {
    hb_itemRelease( m_verticalHeaderTextAlignmentCB );
  }
  if( block != nullptr )
  {
    m_verticalHeaderTextAlignmentCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o background do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderBackgroundRoleCB( PHB_ITEM block )
{
  if( m_verticalHeaderBackgroundCB != nullptr )
  {
    hb_itemRelease( m_verticalHeaderBackgroundCB );
  }
  if( block != nullptr )
  {
    m_verticalHeaderBackgroundCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o foreground do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderForegroundRoleCB( PHB_ITEM block )
{
  if( m_verticalHeaderForegroundCB != nullptr )
  {
    hb_itemRelease( m_verticalHeaderForegroundCB );
  }
  if( block != nullptr )
  {
    m_verticalHeaderForegroundCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para as flags
*/
void HAbstractTableModel::setFlagsCB( PHB_ITEM block )
{
  if( m_flagsCB != nullptr )
  {
    hb_itemRelease( m_flagsCB );
  }
  if( block != nullptr )
  {
    m_flagsCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a alteração dos dados
*/
void HAbstractTableModel::setSetDataCB( PHB_ITEM block )
{
  if( m_setDataCB != nullptr )
  {
    hb_itemRelease( m_setDataCB );
  }
  if( block != nullptr )
  {
    m_setDataCB = hb_itemNew( block );
  }
}

/*
  executa os codeblocks (células), conforme a informação (role) requisitada
*/
QVariant HAbstractTableModel::data( const QModelIndex & index, int role ) const
{
  QVariant data;

  // TODO: confirmar se a verificação abaixo é realmente necessária
  if( index.isValid() == false )
  {
    return data;
  }

  switch( role )
  {
    case Qt::DisplayRole:
    {
      if( m_itemDisplayCB != nullptr )
      {
        PHB_ITEM pRow = hb_itemPutNI( nullptr, index.row() );
        PHB_ITEM pCol = hb_itemPutNI( nullptr, index.column() );
        PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_itemDisplayCB, 2, pRow, pCol ) );
        switch( hb_itemType( pRet ) )
        {
          case HB_IT_STRING:
          case HB_IT_MEMO:
          {
            #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
            data = QLatin1String( hb_itemGetCPtr( pRet ) );
            #else
            data = hb_itemGetCPtr( pRet );
            #endif
            break;
          }
          case HB_IT_DOUBLE:
          {
            data = hb_itemGetND( pRet );
            break;
          }
          case HB_IT_NUMERIC:
          {
            data = hb_itemGetNI( pRet );
            break;
          }
          case HB_IT_LOGICAL:
          {
            data = hb_itemGetL( pRet );
            break;
          }
          case HB_IT_DATE:
          {
            int y,m,d;
            hb_dateDecode( hb_itemGetDL( pRet ), &y, &m, &d );
            QDate date(y,m,d);
            data = date;
            break;
          }
          case HB_IT_OBJECT:
          {
            void * ptr = hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
            if( hb_clsIsParent( hb_objGetClass( pRet ), "QVARIANT" ) )
            {
              data = *( static_cast< QVariant * >( ptr ) );
            }
            break;
          }
        }
        hb_itemRelease( pRow );
        hb_itemRelease( pCol );
        hb_itemRelease( pRet );
      }
      break;
    }
    case Qt::DecorationRole:
    {
      if( m_itemDecorationCB != nullptr )
      {
        PHB_ITEM pRow = hb_itemPutNI( nullptr, index.row() );
        PHB_ITEM pCol = hb_itemPutNI( nullptr, index.column() );
        PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_itemDecorationCB, 2, pRow, pCol ) );
        switch( hb_itemType( pRet ) )
        {
          case HB_IT_OBJECT:
          {
            void * ptr = hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
            if( hb_clsIsParent( hb_objGetClass( pRet ), "QICON" ) )
            {
              data = *( static_cast< QIcon * >( ptr ) );
            }
            else if( hb_clsIsParent( hb_objGetClass( pRet ), "QPIXMAP" ) )
            {
              data = *( static_cast< QPixmap * >( ptr ) );
            }
            ptr = nullptr;
            break;
          }
          case HB_IT_STRING:
          {
            data = QIcon( hb_itemGetCPtr( pRet ) );
            break;
          }
        }
        hb_itemRelease( pRow );
        hb_itemRelease( pCol );
        hb_itemRelease( pRet );
      }
      break;
    }
    case Qt::EditRole:
    {
      if( m_itemEditCB != nullptr )
      {
        PHB_ITEM pRow = hb_itemPutNI( nullptr, index.row() );
        PHB_ITEM pCol = hb_itemPutNI( nullptr, index.column() );
        PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_itemEditCB, 2, pRow, pCol ) );
        if( hb_itemType( pRet ) & HB_IT_STRING )
        {
          #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
          data = QLatin1String( hb_itemGetCPtr( pRet ) );
          #else
          data = hb_itemGetCPtr( pRet );
         #endif
        }
        hb_itemRelease( pRow );
        hb_itemRelease( pCol );
        hb_itemRelease( pRet );
      }
      break;
    }
    case Qt::ToolTipRole:
    {
      if( m_itemToolTipCB != nullptr )
      {
        PHB_ITEM pRow = hb_itemPutNI( nullptr, index.row() );
        PHB_ITEM pCol = hb_itemPutNI( nullptr, index.column() );
        PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_itemToolTipCB, 2, pRow, pCol ) );
        if( hb_itemType( pRet ) & HB_IT_STRING )
        {
          #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
          data = QLatin1String( hb_itemGetCPtr( pRet ) );
          #else
          data = hb_itemGetCPtr( pRet );
          #endif
        }
        hb_itemRelease( pRow );
        hb_itemRelease( pCol );
        hb_itemRelease( pRet );
      }
      break;
    }
    case Qt::StatusTipRole:
    {
      if( m_itemStatusTipCB != nullptr )
      {
        PHB_ITEM pRow = hb_itemPutNI( nullptr, index.row() );
        PHB_ITEM pCol = hb_itemPutNI( nullptr, index.column() );
        PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_itemStatusTipCB, 2, pRow, pCol ) );
        if( hb_itemType( pRet ) & HB_IT_STRING )
        {
          #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
          data = QLatin1String( hb_itemGetCPtr( pRet ) );
          #else
          data = hb_itemGetCPtr( pRet );
         #endif
        }
        hb_itemRelease( pRow );
        hb_itemRelease( pCol );
        hb_itemRelease( pRet );
      }
      break;
    }
    case Qt::WhatsThisRole:
    {
      if( m_itemWhatsThisCB != nullptr )
      {
        PHB_ITEM pRow = hb_itemPutNI( nullptr, index.row() );
        PHB_ITEM pCol = hb_itemPutNI( nullptr, index.column() );
        PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_itemWhatsThisCB, 2, pRow, pCol ) );
        if( hb_itemType( pRet ) & HB_IT_STRING )
        {
          #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
          data = QLatin1String( hb_itemGetCPtr( pRet ) );
          #else
          data = hb_itemGetCPtr( pRet );
          #endif
        }
        hb_itemRelease( pRow );
        hb_itemRelease( pCol );
        hb_itemRelease( pRet );
      }
      break;
    }
    case Qt::SizeHintRole:
    {
      if( m_itemSizeHintCB != nullptr )
      {
        PHB_ITEM pRow = hb_itemPutNI( nullptr, index.row() );
        PHB_ITEM pCol = hb_itemPutNI( nullptr, index.column() );
        PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_itemSizeHintCB, 2, pRow, pCol ) );
        if( hb_itemType( pRet ) & HB_IT_OBJECT )
        {
          void * ptr = hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
          data = *( static_cast< QSize * >( ptr ) );
          ptr = nullptr;
        }
        hb_itemRelease( pRow );
        hb_itemRelease( pCol );
        hb_itemRelease( pRet );
      }
      break;
    }
    case Qt::FontRole:
    {
      if( m_itemFontCB != nullptr )
      {
        PHB_ITEM pRow = hb_itemPutNI( nullptr, index.row() );
        PHB_ITEM pCol = hb_itemPutNI( nullptr, index.column() );
        PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_itemFontCB, 2, pRow, pCol ) );
        if( hb_itemType( pRet ) & HB_IT_OBJECT )
        {
          void * ptr = hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
          data = *( static_cast< QFont * >( ptr ) );
          ptr = nullptr;
        }
        hb_itemRelease( pRow );
        hb_itemRelease( pCol );
        hb_itemRelease( pRet );
      }
      break;
    }
    case Qt::TextAlignmentRole:
    {
      if( m_itemTextAlignmentCB != nullptr )
      {
       PHB_ITEM pRow = hb_itemPutNI( nullptr, index.row() );
       PHB_ITEM pCol = hb_itemPutNI( nullptr, index.column() );
       PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_itemTextAlignmentCB, 2, pRow, pCol ) );
       if( hb_itemType( pRet ) & HB_IT_NUMERIC )
       {
         data = hb_itemGetNI( pRet );
       }
       hb_itemRelease( pRow );
       hb_itemRelease( pCol );
       hb_itemRelease( pRet );
      }
      break;
    }
    case Qt::BackgroundRole:
    {
      if( m_itemBackgroundCB != nullptr )
      {
        PHB_ITEM pRow = hb_itemPutNI( nullptr, index.row() );
        PHB_ITEM pCol = hb_itemPutNI( nullptr, index.column() );
        PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_itemBackgroundCB, 2, pRow, pCol ) );
        switch( hb_itemType( pRet ) )
        {
          case HB_IT_OBJECT:
          {
            void * ptr = hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
            if( hb_clsIsParent( hb_objGetClass( pRet ), "QCOLOR" ) )
            {
              data = *( static_cast< QColor * >( ptr ) );
            }
            else if( hb_clsIsParent( hb_objGetClass( pRet ), "QBRUSH" ) )
            {
              data = *( static_cast< QBrush * >( ptr ) );
            }
            ptr = nullptr;
            break;
          }
          case HB_IT_STRING:
          {
            data = QColor( hb_itemGetCPtr( pRet ) );
            break;
          }
        }
        hb_itemRelease( pRow );
        hb_itemRelease( pCol );
        hb_itemRelease( pRet );
      }
      break;
    }
    case Qt::ForegroundRole:
    {
      if( m_itemForegroundCB  != nullptr )
      {
        PHB_ITEM pRow = hb_itemPutNI( nullptr, index.row() );
        PHB_ITEM pCol = hb_itemPutNI( nullptr, index.column() );
        PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_itemForegroundCB, 2, pRow, pCol ) );
        switch( hb_itemType( pRet ) )
        {
          case HB_IT_OBJECT:
          {
            void * ptr = hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
            data = *( static_cast< QColor * >( ptr ) );
            ptr = nullptr;
            break;
          }
          case HB_IT_STRING:
          {
            data = QColor( hb_itemGetCPtr( pRet ) );
            break;
          }
        }
        hb_itemRelease( pRow );
        hb_itemRelease( pCol );
        hb_itemRelease( pRet );
      }
      break;
    }
    case Qt::CheckStateRole:
    {
      if( m_itemCheckStateCB != nullptr )
      {
       PHB_ITEM pRow = hb_itemPutNI( nullptr, index.row() );
       PHB_ITEM pCol = hb_itemPutNI( nullptr, index.column() );
       PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_itemCheckStateCB, 2, pRow, pCol ) );
       if( hb_itemType( pRet ) & HB_IT_NUMERIC )
       {
         data = hb_itemGetNI( pRet );
       }
       hb_itemRelease( pRow );
       hb_itemRelease( pCol );
       hb_itemRelease( pRet );
      }
      break;
    }
    case Qt::AccessibleTextRole:
    {
      if( m_itemAccessibleTextCB != nullptr )
      {
        PHB_ITEM pRow = hb_itemPutNI( nullptr, index.row() );
        PHB_ITEM pCol = hb_itemPutNI( nullptr, index.column() );
        PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_itemAccessibleTextCB, 2, pRow, pCol ) );
        if( hb_itemType( pRet ) & HB_IT_STRING )
        {
          #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
          data = QLatin1String( hb_itemGetCPtr( pRet ) );
          #else
          data = hb_itemGetCPtr( pRet );
          #endif
        }
        hb_itemRelease( pRow );
        hb_itemRelease( pCol );
        hb_itemRelease( pRet );
      }
      break;
    }
    case Qt::AccessibleDescriptionRole:
    {
      if( m_itemAccessibleDescriptionCB != nullptr )
      {
        PHB_ITEM pRow = hb_itemPutNI( nullptr, index.row() );
        PHB_ITEM pCol = hb_itemPutNI( nullptr, index.column() );
        PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_itemAccessibleDescriptionCB, 2, pRow, pCol ) );
        if( hb_itemType( pRet ) & HB_IT_STRING )
        {
          #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
          data = QLatin1String( hb_itemGetCPtr( pRet ) );
          #else
          data = hb_itemGetCPtr( pRet );
          #endif
        }
        hb_itemRelease( pRow );
        hb_itemRelease( pCol );
        hb_itemRelease( pRet );
      }
      break;
    }
  }

  return data;
}

/*
  executa os codeblocks (cabeçalhos), conforme a informação (role) requisitada
*/
QVariant HAbstractTableModel::headerData( int section, Qt::Orientation orientation, int role ) const
{
  QVariant data;

  switch( orientation )
  {
    case Qt::Horizontal:
    {
      switch( role )
      {
        case Qt::DisplayRole:
        {
          if( m_horizontalHeaderDisplayCB != nullptr )
          {
            PHB_ITEM pCol = hb_itemPutNI( nullptr, section );
            PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_horizontalHeaderDisplayCB, 1, pCol ) );
            switch( hb_itemType( pRet ) )
            {
              case HB_IT_STRING:
              case HB_IT_MEMO:
              {
                #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
                data = QLatin1String( hb_itemGetCPtr( pRet ) );
                #else
                data = hb_itemGetCPtr( pRet );
                #endif
                break;
              }
              case HB_IT_DOUBLE:
              {
                data = hb_itemGetND( pRet );
                break;
              }
              case HB_IT_NUMERIC:
              {
                data = hb_itemGetNI( pRet );
                break;
              }
              case HB_IT_LOGICAL:
              {
                data = hb_itemGetL( pRet );
                break;
              }
            }
            hb_itemRelease( pCol );
            hb_itemRelease( pRet );
          }
          break;
        }
        case Qt::DecorationRole:
        {
          if( m_horizontalHeaderDecorationCB != nullptr )
          {
            PHB_ITEM pCol = hb_itemPutNI( nullptr, section );
            PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_horizontalHeaderDecorationCB, 1, pCol ) );
            switch( hb_itemType( pRet ) )
            {
              case HB_IT_OBJECT:
              {
                void * ptr = hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
                if( hb_clsIsParent( hb_objGetClass( pRet ), "QICON" ) )
                {
                  data = *( static_cast< QIcon * >( ptr ) );
                }
                else if( hb_clsIsParent( hb_objGetClass( pRet ), "QPIXMAP" ) )
                {
                  data = *( static_cast< QPixmap * >( ptr ) );
                }
                ptr = nullptr;
                break;
              }
              case HB_IT_STRING:
              {
                data = QIcon( hb_itemGetCPtr( pRet ) );
                break;
              }
            }
            hb_itemRelease( pCol );
            hb_itemRelease( pRet );
          }
          break;
        }
        case Qt::ToolTipRole:
        {
          if( m_horizontalHeaderToolTipCB != nullptr )
          {
            PHB_ITEM pCol = hb_itemPutNI( nullptr, section );
            PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_horizontalHeaderToolTipCB, 1, pCol ) );
            if( hb_itemType( pRet ) & HB_IT_STRING )
            {
              #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
              data = QLatin1String( hb_itemGetCPtr( pRet ) );
              #else
              data = hb_itemGetCPtr( pRet );
              #endif
            }
            hb_itemRelease( pCol );
            hb_itemRelease( pRet );
          }
          break;
        }
        case Qt::SizeHintRole:
        {
          if( m_horizontalHeaderSizeHintCB != nullptr )
          {
            PHB_ITEM pRow = hb_itemPutNI( nullptr, section );
            PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_horizontalHeaderSizeHintCB, 1, pRow ) );
            if( hb_itemType( pRet ) & HB_IT_OBJECT )
            {
              void * ptr = hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
              data = *( static_cast< QSize * >( ptr ) );
              ptr = nullptr;
            }
            hb_itemRelease( pRow );
            hb_itemRelease( pRet );
          }
          break;
        }
        case Qt::FontRole:
        {
          if( m_horizontalHeaderFontCB != nullptr )
          {
            PHB_ITEM pCol = hb_itemPutNI( nullptr, section );
            PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_horizontalHeaderFontCB, 1, pCol ) );
            if( hb_itemType( pRet ) & HB_IT_OBJECT )
            {
              void * ptr = hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
              data = *( static_cast< QFont * >( ptr ) );
              ptr = nullptr;
            }
            hb_itemRelease( pCol );
            hb_itemRelease( pRet );
          }
          break;
        }
        case Qt::TextAlignmentRole:
        {
          if( m_horizontalHeaderTextAlignmentCB != nullptr )
          {
            PHB_ITEM pCol = hb_itemPutNI( nullptr, section );
            PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_horizontalHeaderTextAlignmentCB, 1, pCol ) );
            if( hb_itemType( pRet ) & HB_IT_NUMERIC )
            {
              data = hb_itemGetNI( pRet );
            }
            hb_itemRelease( pCol );
            hb_itemRelease( pRet );
          }
          break;
        }
        case Qt::BackgroundRole:
        {
          if( m_horizontalHeaderBackgroundCB != nullptr )
          {
            PHB_ITEM pCol = hb_itemPutNI( nullptr, section );
            PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_horizontalHeaderBackgroundCB, 1, pCol ) );
            switch( hb_itemType( pRet ) )
            {
              case HB_IT_OBJECT:
              {
                void * ptr = hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
                if( hb_clsIsParent( hb_objGetClass( pRet ), "QCOLOR" ) )
                {
                  data = *( static_cast< QColor * >( ptr ) );
                }
                else if( hb_clsIsParent( hb_objGetClass( pRet ), "QBRUSH" ) )
                {
                  data = *( static_cast< QBrush * >( ptr ) );
                }
                ptr = nullptr;
                break;
              }
              case HB_IT_STRING:
              {
                data = QColor( hb_itemGetCPtr( pRet ) );
                break;
              }
            }
            hb_itemRelease( pCol );
            hb_itemRelease( pRet );
          }
          break;
        }
        case Qt::ForegroundRole:
        {
          if( m_horizontalHeaderForegroundCB != nullptr )
          {
            PHB_ITEM pCol = hb_itemPutNI( nullptr, section );
            PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_horizontalHeaderForegroundCB, 1, pCol ) );
            switch( hb_itemType( pRet ) )
            {
              case HB_IT_OBJECT:
              {
                void * ptr = hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
                data = *( static_cast< QColor * >( ptr ) );
                ptr = nullptr;
                break;
              }
              case HB_IT_STRING:
              {
                data = QColor( hb_itemGetCPtr( pRet ) );
                break;
              }
            }
            hb_itemRelease( pCol );
            hb_itemRelease( pRet );
          }
          break;
        }
      }
      break;
    }
    case Qt::Vertical:
    {
      switch( role )
      {
        case Qt::DisplayRole:
        {
          if( m_verticalHeaderDisplayCB != nullptr )
          {
            PHB_ITEM pRow = hb_itemPutNI( nullptr, section );
            PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_verticalHeaderDisplayCB, 1, pRow ) );
            switch( hb_itemType( pRet ) )
            {
              case HB_IT_STRING:
              case HB_IT_MEMO:
              {
                #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
                data = QLatin1String( hb_itemGetCPtr( pRet ) );
                #else
                data = hb_itemGetCPtr( pRet );
                #endif
                break;
              }
              case HB_IT_DOUBLE:
              {
                data = hb_itemGetND( pRet );
                break;
              }
              case HB_IT_NUMERIC:
              {
                data = hb_itemGetNI( pRet );
                break;
              }
              case HB_IT_LOGICAL:
              {
                data = hb_itemGetL( pRet );
                break;
              }
            }
            hb_itemRelease( pRow );
            hb_itemRelease( pRet );
          }
          break;
        }
        case Qt::DecorationRole:
        {
          if( m_verticalHeaderDecorationCB != nullptr )
          {
            PHB_ITEM pRow = hb_itemPutNI( nullptr, section );
            PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_verticalHeaderDecorationCB, 1, pRow ) );
            switch( hb_itemType( pRet ) )
            {
              case HB_IT_OBJECT:
              {
                void * ptr = hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
                if( hb_clsIsParent( hb_objGetClass( pRet ), "QICON" ) )
                {
                  data = *( static_cast< QIcon * >( ptr ) );
                }
                else if( hb_clsIsParent( hb_objGetClass( pRet ), "QPIXMAP" ) )
                {
                  data = *( static_cast< QPixmap * >( ptr ) );
                }
                ptr = nullptr;
                break;
              }
              case HB_IT_STRING:
              {
                data = QIcon( hb_itemGetCPtr( pRet ) );
                break;
              }
            }
            hb_itemRelease( pRow );
            hb_itemRelease( pRet );
          }
          break;
        }
        case Qt::ToolTipRole:
        {
          if( m_verticalHeaderToolTipCB != nullptr )
          {
            PHB_ITEM pCol = hb_itemPutNI( nullptr, section );
            PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_verticalHeaderToolTipCB, 1, pCol ) );
            if( hb_itemType( pRet ) & HB_IT_STRING )
            {
              #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
              data = QLatin1String( hb_itemGetCPtr( pRet ) );
              #else
              data = hb_itemGetCPtr( pRet );
              #endif
            }
            hb_itemRelease( pCol );
            hb_itemRelease( pRet );
          }
          break;
        }
        case Qt::SizeHintRole:
        {
          if( m_verticalHeaderSizeHintCB != nullptr )
          {
            PHB_ITEM pRow = hb_itemPutNI( nullptr, section );
            PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_verticalHeaderSizeHintCB, 1, pRow ) );
            if( hb_itemType( pRet ) & HB_IT_OBJECT )
            {
              void * ptr = hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
              data = *( static_cast< QSize * >( ptr ) );
              ptr = nullptr;
            }
            hb_itemRelease( pRow );
            hb_itemRelease( pRet );
          }
          break;
        }
        case Qt::FontRole:
        {
          if( m_verticalHeaderFontCB != nullptr )
          {
            PHB_ITEM pRow = hb_itemPutNI( nullptr, section );
            PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_verticalHeaderFontCB, 1, pRow ) );
            if( hb_itemType( pRet ) & HB_IT_OBJECT )
            {
              void * ptr = hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
              data = *( static_cast< QFont * >( ptr ) );
              ptr = nullptr;
            }
            hb_itemRelease( pRow );
            hb_itemRelease( pRet );
          }
          break;
        }
        case Qt::TextAlignmentRole:
        {
          if( m_verticalHeaderTextAlignmentCB != nullptr )
          {
            PHB_ITEM pRow = hb_itemPutNI( nullptr, section );
            PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_verticalHeaderTextAlignmentCB, 1, pRow ) );
            if( hb_itemType( pRet ) & HB_IT_NUMERIC )
            {
              data = hb_itemGetNI( pRet );
            }
            hb_itemRelease( pRow );
            hb_itemRelease( pRet );
          }
          break;
        }
        case Qt::BackgroundRole:
        {
          if( m_verticalHeaderBackgroundCB != nullptr )
          {
            PHB_ITEM pRow = hb_itemPutNI( nullptr, section );
            PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_verticalHeaderBackgroundCB, 1, pRow ) );
            switch( hb_itemType( pRet ) )
            {
              case HB_IT_OBJECT:
              {
                void * ptr = hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
                if( hb_clsIsParent( hb_objGetClass( pRet ), "QCOLOR" ) )
                {
                  data = *( static_cast< QColor * >( ptr ) );
                }
                else if( hb_clsIsParent( hb_objGetClass( pRet ), "QBRUSH" ) )
                {
                  data = *( static_cast< QBrush * >( ptr ) );
                }
                ptr = nullptr;
                break;
              }
              case HB_IT_STRING:
              {
                data = QColor( hb_itemGetCPtr( pRet ) );
                break;
              }
            }
            hb_itemRelease( pRow );
            hb_itemRelease( pRet );
          }
          break;
        }
        case Qt::ForegroundRole:
        {
          if( m_verticalHeaderForegroundCB != nullptr )
          {
            PHB_ITEM pRow = hb_itemPutNI( nullptr, section );
            PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_verticalHeaderForegroundCB, 1, pRow ) );
            switch( hb_itemType( pRet ) )
            {
              case HB_IT_OBJECT:
              {
                void * ptr = hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
                data = *( static_cast< QColor * >( ptr ) );
                break;
              }
              case HB_IT_STRING:
              {
                data = QColor( hb_itemGetCPtr( pRet ) );
                break;
              }
            }
            hb_itemRelease( pRow );
            hb_itemRelease( pRet );
          }
          break;
        }
        break;
      }
    }
  }

  return data;
}

/*
  executa o codeblock que retorna o número de linhas
*/
int HAbstractTableModel::rowCount( const QModelIndex & parent ) const
{
  if( parent.isValid() )
  {
    return 0;
  }

  if( m_rowCountCB != nullptr )
  {
    return hb_itemGetNI( hb_vmEvalBlockV( m_rowCountCB, 0 ) );
  }

  return 0;
}

/*
  executa o codeblock que retorna o número de colunas
*/
int HAbstractTableModel::columnCount( const QModelIndex & parent ) const
{
  if( parent.isValid() )
  {
    return 0;
  }

  if( m_columnCountCB != nullptr )
  {
    return hb_itemGetNI( hb_vmEvalBlockV( m_columnCountCB, 0 ) );
  }

  return 0;
}

Qt::ItemFlags HAbstractTableModel::flags( const QModelIndex &index ) const
{
  Qt::ItemFlags flags = Qt::ItemIsSelectable | Qt::ItemIsEnabled;

  if( m_flagsCB != nullptr )
  {
    PHB_ITEM pRow = hb_itemPutNI( nullptr, index.row() );
    PHB_ITEM pCol = hb_itemPutNI( nullptr, index.column() );

    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_flagsCB, 2, pRow, pCol ) );

    if( hb_itemType( pRet ) & HB_IT_NUMERIC )
    {
      flags = static_cast< Qt::ItemFlags >( hb_itemGetNI( pRet ) );
    }

    hb_itemRelease( pRow );
    hb_itemRelease( pCol );
    hb_itemRelease( pRet );
  }

  return flags;
}

bool HAbstractTableModel::setData( const QModelIndex &index, const QVariant &value, int role )
{
  bool success = false;

  if( m_setDataCB != nullptr )
  {
    PHB_ITEM pRow = hb_itemPutNI( nullptr, index.row() );
    PHB_ITEM pCol = hb_itemPutNI( nullptr, index.column() );
    PHB_ITEM pValue = Qt5xHb::returnQVariantObject( ( void * ) &value ); // TODO: C++ cast
    PHB_ITEM pRole = hb_itemPutNI( nullptr, role );

    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_setDataCB, 4, pRow, pCol, pValue, pRole ) );

    if( hb_itemType( pRet ) & HB_IT_LOGICAL )
    {
      success = hb_itemGetL( pRet );
    }

    hb_itemRelease( pRow );
    hb_itemRelease( pCol );
    hb_itemRelease( pValue );
    hb_itemRelease( pRole );
    hb_itemRelease( pRet );
  }

  return success;
}

/*
  emite o sinal QAbstractItemModel::layoutChanged(), forçando
  o recarregamento dos dados
*/
void HAbstractTableModel::reloadData()
{
  // Notas da documentação do Qt:
  emit QAbstractItemModel::layoutAboutToBeChanged();
  // Remember the QModelIndex that will change
  // Update your internal data
  // Call changePersistentIndex()
  emit QAbstractItemModel::layoutChanged();
}

/*
  cria um objeto da classe QModelIndex
*/
// QModelIndex HAbstractTableModel::createIndex ( int row, int column )
// {
//   return QAbstractItemModel::createIndex( row, column, 0 );
// }
