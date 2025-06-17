//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "HHeaderView.hpp"

HHeaderView::HHeaderView(Qt::Orientation orientation, QWidget *parent) : QHeaderView(orientation, parent)
{
  m_paintSectionBlock = nullptr;
}

HHeaderView::~HHeaderView()
{
  if (m_paintSectionBlock != nullptr)
  {
    hb_itemRelease(m_paintSectionBlock);
    m_paintSectionBlock = nullptr;
  }
}

void HHeaderView::paintSection(QPainter *painter, const QRect &rect, int logicalIndex) const
{
  if (m_paintSectionBlock != nullptr)
  {
    auto pPainter = Qt5xHb::returnQPainterObject((void *)painter);
    auto pRect = Qt5xHb::returnQRectObject((void *)&rect);
    auto pLogicalIndex = hb_itemPutNI(NULL, logicalIndex);

    hb_vmEvalBlockV(m_paintSectionBlock, 3, pPainter, pRect, pLogicalIndex);

    hb_itemRelease(pPainter);
    hb_itemRelease(pRect);
    hb_itemRelease(pLogicalIndex);
  }
  else
  {
    QHeaderView::paintSection(painter, rect, logicalIndex);
  }
}

void HHeaderView::setPaintSectionCB(PHB_ITEM block)
{
  if (m_paintSectionBlock != nullptr)
  {
    hb_itemRelease(m_paintSectionBlock);
  }
  if (block != nullptr)
  {
    m_paintSectionBlock = hb_itemNew(block);
  }
}
