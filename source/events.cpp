/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "events.h"

static Events *s_events = nullptr;

/*
  constructor
*/
Events::Events( QObject *parent ) : QObject( parent )
{
}

/*
  destructor
*/
Events::~Events()
{
  const int listsize = m_list1.size();
  for( auto i = 0; i < listsize; ++i )
  {
    if( m_list1.at(i) != nullptr )
    {
      hb_itemRelease( m_list3.at(i) );
      m_list1[i] = nullptr;
      m_list2[i] = QEvent::None;
      m_list3[i] = nullptr;
    }
  }

  m_list1.clear();
  m_list2.clear();
  m_list3.clear();
}

/*
  filtro de eventos
*/
bool Events::eventFilter( QObject *obj, QEvent *event )
{
  QEvent::Type eventtype = event->type();

  auto index = -1;

  const int listsize = m_list1.size();
  for( auto i = 0; i < listsize; ++i )
  {
    if( ( m_list1.at(i) == obj ) && ( m_list2.at(i) == eventtype ) )
    {
      index = i;
      break;
    }
  }

  // se não encontrado na lista, propaga o evento
  if( index == -1 )
  {
    return false;
  }

  // executa bloco de código/função
  PHB_ITEM pObject = Events_return_qobject( (QObject *) obj, "QOBJECT" );
  PHB_ITEM pEvent = Events_return_object( (QEvent *) event, "QEVENT" );

  bool result = hb_itemGetL( hb_vmEvalBlockV( m_list3.at(index), 2, pObject, pEvent ) );

  hb_itemRelease( pObject );
  hb_itemRelease( pEvent );

  // retorna resultado
  // .t.: interrompe processamento do evento
  // .f.: continua processamento do evento
  return result;
}

/*
  Conecta um determinado evento com um objeto
  Parâmetro 1: objeto
  Parâmetro 2: id do evento
  Parâmetro 3: codeblock
  Retorna true se a conexão foi bem sucedida ou false se falhou
  Função de uso interno, não deve ser usada nas aplicações do usuário
*/

bool Events_connect_event( QObject * object, int type, PHB_ITEM codeblock )
{
  // instala eventfilter, se não houver nenhum evento
  if( s_events->m_list1.contains( object ) == false )
  {
    object->installEventFilter(s_events);
  }

  // verifica se já está na lista
  auto found = false;

  const int listsize = s_events->m_list1.size();
  for( auto i = 0; i < listsize; ++i )
  {
    if( ( s_events->m_list1.at(i) == object ) && ( s_events->m_list2.at(i) == (QEvent::Type) type ) )
    {
      found = true;
      hb_itemRelease( codeblock );
      break;
    }
  }

  bool result = false;

  // se nao encontrado na lista, adiciona
  if( !found )
  {
    // procura por posição livre
    auto index = s_events->m_list1.indexOf( nullptr );

    if( index == -1 ) // nao encontrou posicao livre
    {
      // adiciona evento na lista de eventos
      s_events->m_list1 << object;
      s_events->m_list2 << (QEvent::Type) type;
      s_events->m_list3 << codeblock;
    }
    else // encontrou posicao livre
    {
      // coloca na posição livre
      s_events->m_list1[index] = object;
      s_events->m_list2[index] = (QEvent::Type) type;
      s_events->m_list3[index] = codeblock;
    }

    result = true;
  }

  return result;
}

/*
  Desconecta um determinado evento
  Parâmetro 1: objeto
  Parâmetro 2: id do evento
  Retorna true se a desconexão foi bem sucedida ou false se falhou
  Função de uso interno, não deve ser usada nas aplicações do usuário
*/

bool Events_disconnect_event( QObject * object, int type )
{
  auto result = false;

  // remove evento da lista de eventos
  const int listsize = s_events->m_list1.size();
  for( auto i = 0; i < listsize; ++i )
  {
    if( ( s_events->m_list1.at(i) == object ) && ( s_events->m_list2.at(i) == (QEvent::Type) type ) )
    {
      hb_itemRelease( s_events->m_list3.at(i) );
      s_events->m_list1[i] = nullptr;
      s_events->m_list2[i] = QEvent::None;
      s_events->m_list3[i] = nullptr;
      result = true;
    }
  }

  // desinstala eventfilter, se não houver mais nenhum evento
  if( s_events->m_list1.contains( object ) == false )
  {
    object->removeEventFilter(s_events);
  }

  return result;
}

/*
  Libera todos os codeblocks relacionados com eventos do objeto 'obj',
  incluindo os eventos ligados aos filhos, netos, bisnetos, etc... (se children = true).
*/

void Events_disconnect_all_events( QObject * obj, bool children )
{
  if( s_events != nullptr )
  {
    if( !children )
    {
      // percorre toda a lista de eventos
      const int listsize = s_events->m_list1.size();
      for( auto i = 0; i < listsize; ++i )
      {
        // elimina eventos ligados ao objeto 'obj'
        if( s_events->m_list1.at(i) == obj )
        {
          hb_itemRelease( s_events->m_list3.at(i) );
          s_events->m_list1[i] = nullptr;
          s_events->m_list2[i] = QEvent::None;
          s_events->m_list3[i] = nullptr;
        }
      }

      // desinstala eventfilter do objeto 'obj'
      if( s_events->m_list1.contains( obj ) == false )
      {
        obj->removeEventFilter(s_events);
      }
    }
    else
    {
      // obtém a lista de filhos, netos, bisnetos, etc...
      auto objectList = obj->findChildren<QObject *>();

      // adiciona o pai na lista
      objectList << obj;

      // percorre toda a lista de objetos
      const int listsize = objectList.size();
      for( auto i = 0; i < listsize; ++i )
      {
        QObject * currentObject = objectList.at(i);

        // percorre toda a lista de eventos
        const int listsize2 = s_events->m_list1.size();
        for( auto ii = 0; ii < listsize2; ++ii )
        {
          // elimina eventos ativos ligados ao objeto 'objectList.at(i)'
          if( s_events->m_list1.at(ii) == currentObject )
          {
            hb_itemRelease( s_events->m_list3.at(ii) );
            s_events->m_list1[ii] = nullptr;
            s_events->m_list2[ii] = QEvent::None;
            s_events->m_list3[ii] = nullptr;
          }
        }

        // desinstala eventfilter do objeto 'objectList.at(i)'
        if( s_events->m_list1.contains( currentObject ) == false )
        {
          currentObject->removeEventFilter(s_events);
        }
      }
    }
  }
}

/*
  Retorna o tamanho da lista de eventos.
  Atenção: está função não faz parte da API pública, podendo
  ser removida ou sofrer modificações futuramente.
*/

HB_FUNC( QTXHB_EVENTS_SIZE )
{
  auto size = 0;

  if( s_events != nullptr )
  {
    size = s_events->m_list1.size();
  }

  hb_retni( size );
}

/*
  Retorna o número de eventos ativos na lista de eventos.
  Atenção: está função não faz parte da API pública, podendo
  ser removida ou sofrer modificações futuramente.
*/

HB_FUNC( QTXHB_EVENTS_SIZE_ACTIVE )
{
  auto count = 0;

  if( s_events != nullptr )
  {
    // percorre toda a lista de eventos
    const int listsize = s_events->m_list1.size();
    for( auto i = 0; i < listsize; ++i )
    {
      if( s_events->m_list1.at(i) != nullptr )
      {
        ++count;
      }
    }
  }

  hb_retni( count );
}

/*
  retorna um objeto Harbour da classe QEvent ou derivada
*/

PHB_ITEM Events_return_object( QEvent * ptr, const char * classname )
{

  static int eventEnumIndex = QEvent::staticMetaObject.indexOfEnumerator("Type");

  QString eventname = QEvent::staticMetaObject.enumerator(eventEnumIndex).valueToKey(ptr->type());

  PHB_DYNS pDynSym;

  QString name = "q" + eventname + "event";

  pDynSym = hb_dynsymFindName( (const char *) name.toUpper().toLatin1().data() );

  if( !pDynSym )
  {
    pDynSym = hb_dynsymFindName( classname );
  }

  PHB_ITEM pObject = hb_itemNew( NULL );

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (QEvent *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemRelease( pItem );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS );
  }

  return pObject;
}

/*
  retorna um objeto Harbour da classe QObject ou derivada
*/

PHB_ITEM Events_return_qobject( QObject * ptr, const char * classname )
{
  PHB_DYNS pDynSym = NULL;

  if( ptr )
  {
    pDynSym = hb_dynsymFindName( (const char *) ptr->metaObject()->className() );
  }

  if( !pDynSym )
  {
    pDynSym = hb_dynsymFindName( classname );
  }

  PHB_ITEM pObject = hb_itemNew( NULL );

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (void *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemRelease( pItem );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS );
  }

  return pObject;
}

#include "hbvm.h"
#include "hbinit.h"

static void qt5xhb_events_init( void * cargo )
{
  HB_SYMBOL_UNUSED( cargo );

  if( s_events == nullptr )
  {
    s_events = new Events();
  }
}

static void qt5xhb_events_exit( void * cargo )
{
  HB_SYMBOL_UNUSED( cargo );

  delete s_events;
}

HB_CALL_ON_STARTUP_BEGIN( _qt5xhb_events_init_ )
  hb_vmAtInit( qt5xhb_events_init, nullptr );
  hb_vmAtExit( qt5xhb_events_exit, nullptr );
HB_CALL_ON_STARTUP_END( _qt5xhb_events_init_ )

#if defined( HB_PRAGMA_STARTUP )
  #pragma startup _qt5xhb_events_init_
#elif defined( HB_DATASEG_STARTUP )
  #define HB_DATASEG_BODY HB_DATASEG_FUNC( _qt5xhb_events_init_ )
  #include "hbiniseg.h"
#endif
