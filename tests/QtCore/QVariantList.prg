/*

  Qt5xHb Project - Test Program

  Copyright (c) 2024 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-v2

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oVariant
   LOCAL aVariantList
   LOCAL n

   oVariant := QVariant():new19({"um", "dois", "tres", "quatro", "cinco"})

   aVariantList := oVariant:toList()

   ? len(aVariantList)

   FOR n := 1 TO len(aVariantList)
      ? aVariantList[n]:toString()
   NEXT n

RETURN
