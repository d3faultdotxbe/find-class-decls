TEMPLATE = app
TARGET = find-class-decls
DEPENDPATH += .
INCLUDEPATH += .
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += FindClassDecls.cpp

DEFINES += NDEBUG
DEFINES += _GNU_SOURCE
DEFINES += __STDC_CONSTANT_MACROS
DEFINES += __STDC_FORMAT_MACROS
DEFINES += __STDC_LIMIT_MACROS
INCLUDEPATH += "/usr/lib/llvm-3.4/include"
LIBS += -L/usr/lib/llvm-3.4/lib -lpthread -lffi -ltinfo -ldl -lm -lclangTooling -lclangDriver -lclangFrontend -lclangParse -lclangSema -lclangEdit -lclangAnalysis -lclangLex -lclangSerialization -lclangAST -lclangBasic -lclang
