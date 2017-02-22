#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/deec58d5/gtest-all.o \
	${OBJECTDIR}/_ext/deec58d5/gtest_main.o \
	${OBJECTDIR}/test1.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=../googletest/dist/Debug/GNU-Linux/libgoogletest.a -lpthread ../CopterLib/dist/Debug/GNU-Linux/libcopterlib.a

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/testapplication

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/testapplication: ../googletest/dist/Debug/GNU-Linux/libgoogletest.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/testapplication: ../CopterLib/dist/Debug/GNU-Linux/libcopterlib.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/testapplication: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/testapplication ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/_ext/deec58d5/gtest-all.o: ../googletest/googletest/src/gtest-all.cc
	${MKDIR} -p ${OBJECTDIR}/_ext/deec58d5
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../googletest/googletest -I../googletest/googletest/include -I../CopterLib -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/deec58d5/gtest-all.o ../googletest/googletest/src/gtest-all.cc

${OBJECTDIR}/_ext/deec58d5/gtest_main.o: ../googletest/googletest/src/gtest_main.cc
	${MKDIR} -p ${OBJECTDIR}/_ext/deec58d5
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../googletest/googletest -I../googletest/googletest/include -I../CopterLib -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/deec58d5/gtest_main.o ../googletest/googletest/src/gtest_main.cc

${OBJECTDIR}/test1.o: test1.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../googletest/googletest -I../googletest/googletest/include -I../CopterLib -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/test1.o test1.cpp

# Subprojects
.build-subprojects:
	cd ../googletest && ${MAKE}  -f Makefile CONF=Debug
	cd ../CopterLib && ${MAKE}  -f Makefile CONF=Debug

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:
	cd ../googletest && ${MAKE}  -f Makefile CONF=Debug clean
	cd ../CopterLib && ${MAKE}  -f Makefile CONF=Debug clean

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
