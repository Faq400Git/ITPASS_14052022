**free

//************************************************************
// PGM001 Esempio per GIT
//************************************************************

ctl-opt option(*srcstmt:*nodebugio) actgrp(*new);


dcl-s version char(10);
dcl-s testo   char(30);
dcl-s variabile2 char(10);

version='1.1';

testo='Versione '+Version;

dsply testo  ;





exsr fine;


//---------------------------
// fine
//---------------------------
begsr fine;
  *inlr = *on;
  return;
endsr;

