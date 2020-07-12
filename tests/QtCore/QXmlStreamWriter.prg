/*

  Qt5xHb/C++11 Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt5xhb-cpp11

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oFile
   LOCAL oStream

   oFile := QFile():new("QXmlStreamWriter.xml")

   if oFile:open( hb_bitor(QIODevice_WriteOnly,QIODevice_Text) )

      oStream := QXmlStreamWriter():new(oFile)
      oStream:setAutoFormatting(.T.)
      oStream:writeStartDocument()

      oStream:writeStartElement("element")
      oStream:writeAttribute("attribute", "value of the attribute")
      oStream:writeTextElement("text", "value of the text")
      oStream:writeEndElement()

      oStream:writeEndDocument()

      oFile:close()

   endif

   oFile:delete()

RETURN
