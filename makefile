BIN_LIB=ITPASS
LIBLIST=$(BIN_LIB) SAMPLEDB
SHELL=/QOpenSys/usr/bin/qsh

all: pgm001.rpgle

pgm001.rpgle:



%.rpgle:
    system -s "CHGATR OBJ('./qrpglesrc/$*.sqlrpgle') ATR(*CCSID) VALUE(280)"
    liblist -a $(LIBLIST);\
    system "CRTBNDRPG PGM($(BIN_LIB)/$*) SRCSTMF('./qrpglesrc/$*.sqlrpgle') DBGVIEW(*SOURCE) OPTION(*EVENTF)"