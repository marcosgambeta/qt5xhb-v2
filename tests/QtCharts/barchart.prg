/*

  Qt5xHb/C++11 Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt5xhb-cpp11

*/

#include "qt5xhb.ch"
#include "QChart.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

REQUEST QAbstractAxis
REQUEST QLegend
REQUEST QBarSet

PROCEDURE Main ()

   LOCAL oApp
   LOCAL window

   oApp := QApplication():new()

   set0 := QBarSet():new("Jane")
   set1 := QBarSet():new("John")
   set2 := QBarSet():new("Axel")
   set3 := QBarSet():new("Mary")
   set4 := QBarSet():new("Samantha")

   set0:append( 1 )
   set0:append( 2 )
   set0:append( 3 )
   set0:append( 4 )
   set0:append( 5 )
   set0:append( 6 )

   set1:append( 5 )
   set1:append( 0 )
   set1:append( 0 )
   set1:append( 4 )
   set1:append( 0 )
   set1:append( 7 )

   set2:append( 3 )
   set2:append( 5 )
   set2:append( 8 )
   set2:append( 13 )
   set2:append( 8 )
   set2:append( 5 )

   set3:append( 5 )
   set3:append( 6 )
   set3:append( 7 )
   set3:append( 3 )
   set3:append( 4 )
   set3:append( 5 )

   set4:append( 9 )
   set4:append( 7 )
   set4:append( 5 )
   set4:append( 3 )
   set4:append( 1 )
   set4:append( 2 )

   series := QBarSeries():new()
   series:append(set0)
   series:append(set1)
   series:append(set2)
   series:append(set3)
   series:append(set4)

   chart := QChart():new()
   chart:addSeries(series)
   chart:setTitle("Simple barchart example")
   chart:setAnimationOptions(QChart_SeriesAnimations)

   categories := { "Jan" , "Feb" , "Mar" , "Apr" , "May" , "Jun" }
   axis := QBarCategoryAxis():new()
   axis:append(categories)
   chart:createDefaultAxes()
   chart:setAxisX(axis, series)

   chart:legend():setVisible(.t.)
   chart:legend():setAlignment(Qt_AlignBottom)

   chartView := QChartView():new(chart)
   chartView:setRenderHint(QPainter_Antialiasing)

   window := QMainWindow():new()
   window:setCentralWidget(chartView)
   window:resize(420, 300)
   window:show()

   oApp:exec()

   window:delete()

   oApp:delete()

RETURN
