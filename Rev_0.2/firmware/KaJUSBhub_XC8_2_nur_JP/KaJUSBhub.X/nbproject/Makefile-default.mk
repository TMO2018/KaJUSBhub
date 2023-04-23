#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/KaJUSBhub.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/KaJUSBhub.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED="../USB Stack/joystick1_hid.c" "../USB Stack/joystick2_hid.c" "../USB Stack/usb_descriptors.c" "../USB Stack/usb_device.c" "../USB Stack/keyboard1_hid.c" ../main.c ../joystick.c ../usb_callback.c ../keyboard.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1007145187/joystick1_hid.p1 ${OBJECTDIR}/_ext/1007145187/joystick2_hid.p1 ${OBJECTDIR}/_ext/1007145187/usb_descriptors.p1 ${OBJECTDIR}/_ext/1007145187/usb_device.p1 ${OBJECTDIR}/_ext/1007145187/keyboard1_hid.p1 ${OBJECTDIR}/_ext/1472/main.p1 ${OBJECTDIR}/_ext/1472/joystick.p1 ${OBJECTDIR}/_ext/1472/usb_callback.p1 ${OBJECTDIR}/_ext/1472/keyboard.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1007145187/joystick1_hid.p1.d ${OBJECTDIR}/_ext/1007145187/joystick2_hid.p1.d ${OBJECTDIR}/_ext/1007145187/usb_descriptors.p1.d ${OBJECTDIR}/_ext/1007145187/usb_device.p1.d ${OBJECTDIR}/_ext/1007145187/keyboard1_hid.p1.d ${OBJECTDIR}/_ext/1472/main.p1.d ${OBJECTDIR}/_ext/1472/joystick.p1.d ${OBJECTDIR}/_ext/1472/usb_callback.p1.d ${OBJECTDIR}/_ext/1472/keyboard.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1007145187/joystick1_hid.p1 ${OBJECTDIR}/_ext/1007145187/joystick2_hid.p1 ${OBJECTDIR}/_ext/1007145187/usb_descriptors.p1 ${OBJECTDIR}/_ext/1007145187/usb_device.p1 ${OBJECTDIR}/_ext/1007145187/keyboard1_hid.p1 ${OBJECTDIR}/_ext/1472/main.p1 ${OBJECTDIR}/_ext/1472/joystick.p1 ${OBJECTDIR}/_ext/1472/usb_callback.p1 ${OBJECTDIR}/_ext/1472/keyboard.p1

# Source Files
SOURCEFILES=../USB Stack/joystick1_hid.c ../USB Stack/joystick2_hid.c ../USB Stack/usb_descriptors.c ../USB Stack/usb_device.c ../USB Stack/keyboard1_hid.c ../main.c ../joystick.c ../usb_callback.c ../keyboard.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/KaJUSBhub.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4550
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1007145187/joystick1_hid.p1: ../USB\ Stack/joystick1_hid.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1007145187" 
	@${RM} ${OBJECTDIR}/_ext/1007145187/joystick1_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1007145187/joystick1_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../USB Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled     -o ${OBJECTDIR}/_ext/1007145187/joystick1_hid.p1 "../USB Stack/joystick1_hid.c" 
	@-${MV} ${OBJECTDIR}/_ext/1007145187/joystick1_hid.d ${OBJECTDIR}/_ext/1007145187/joystick1_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1007145187/joystick1_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1007145187/joystick2_hid.p1: ../USB\ Stack/joystick2_hid.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1007145187" 
	@${RM} ${OBJECTDIR}/_ext/1007145187/joystick2_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1007145187/joystick2_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../USB Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled     -o ${OBJECTDIR}/_ext/1007145187/joystick2_hid.p1 "../USB Stack/joystick2_hid.c" 
	@-${MV} ${OBJECTDIR}/_ext/1007145187/joystick2_hid.d ${OBJECTDIR}/_ext/1007145187/joystick2_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1007145187/joystick2_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1007145187/usb_descriptors.p1: ../USB\ Stack/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1007145187" 
	@${RM} ${OBJECTDIR}/_ext/1007145187/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1007145187/usb_descriptors.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../USB Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled     -o ${OBJECTDIR}/_ext/1007145187/usb_descriptors.p1 "../USB Stack/usb_descriptors.c" 
	@-${MV} ${OBJECTDIR}/_ext/1007145187/usb_descriptors.d ${OBJECTDIR}/_ext/1007145187/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1007145187/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1007145187/usb_device.p1: ../USB\ Stack/usb_device.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1007145187" 
	@${RM} ${OBJECTDIR}/_ext/1007145187/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1007145187/usb_device.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../USB Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled     -o ${OBJECTDIR}/_ext/1007145187/usb_device.p1 "../USB Stack/usb_device.c" 
	@-${MV} ${OBJECTDIR}/_ext/1007145187/usb_device.d ${OBJECTDIR}/_ext/1007145187/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1007145187/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1007145187/keyboard1_hid.p1: ../USB\ Stack/keyboard1_hid.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1007145187" 
	@${RM} ${OBJECTDIR}/_ext/1007145187/keyboard1_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1007145187/keyboard1_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../USB Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled     -o ${OBJECTDIR}/_ext/1007145187/keyboard1_hid.p1 "../USB Stack/keyboard1_hid.c" 
	@-${MV} ${OBJECTDIR}/_ext/1007145187/keyboard1_hid.d ${OBJECTDIR}/_ext/1007145187/keyboard1_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1007145187/keyboard1_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/main.p1: ../main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../USB Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled     -o ${OBJECTDIR}/_ext/1472/main.p1 ../main.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/main.d ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/joystick.p1: ../joystick.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/joystick.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/joystick.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../USB Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled     -o ${OBJECTDIR}/_ext/1472/joystick.p1 ../joystick.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/joystick.d ${OBJECTDIR}/_ext/1472/joystick.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/joystick.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/usb_callback.p1: ../usb_callback.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../USB Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled     -o ${OBJECTDIR}/_ext/1472/usb_callback.p1 ../usb_callback.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/usb_callback.d ${OBJECTDIR}/_ext/1472/usb_callback.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/usb_callback.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/keyboard.p1: ../keyboard.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/keyboard.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/keyboard.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../USB Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled     -o ${OBJECTDIR}/_ext/1472/keyboard.p1 ../keyboard.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/keyboard.d ${OBJECTDIR}/_ext/1472/keyboard.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/keyboard.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1007145187/joystick1_hid.p1: ../USB\ Stack/joystick1_hid.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1007145187" 
	@${RM} ${OBJECTDIR}/_ext/1007145187/joystick1_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1007145187/joystick1_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../USB Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled     -o ${OBJECTDIR}/_ext/1007145187/joystick1_hid.p1 "../USB Stack/joystick1_hid.c" 
	@-${MV} ${OBJECTDIR}/_ext/1007145187/joystick1_hid.d ${OBJECTDIR}/_ext/1007145187/joystick1_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1007145187/joystick1_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1007145187/joystick2_hid.p1: ../USB\ Stack/joystick2_hid.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1007145187" 
	@${RM} ${OBJECTDIR}/_ext/1007145187/joystick2_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1007145187/joystick2_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../USB Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled     -o ${OBJECTDIR}/_ext/1007145187/joystick2_hid.p1 "../USB Stack/joystick2_hid.c" 
	@-${MV} ${OBJECTDIR}/_ext/1007145187/joystick2_hid.d ${OBJECTDIR}/_ext/1007145187/joystick2_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1007145187/joystick2_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1007145187/usb_descriptors.p1: ../USB\ Stack/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1007145187" 
	@${RM} ${OBJECTDIR}/_ext/1007145187/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1007145187/usb_descriptors.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../USB Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled     -o ${OBJECTDIR}/_ext/1007145187/usb_descriptors.p1 "../USB Stack/usb_descriptors.c" 
	@-${MV} ${OBJECTDIR}/_ext/1007145187/usb_descriptors.d ${OBJECTDIR}/_ext/1007145187/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1007145187/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1007145187/usb_device.p1: ../USB\ Stack/usb_device.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1007145187" 
	@${RM} ${OBJECTDIR}/_ext/1007145187/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1007145187/usb_device.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../USB Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled     -o ${OBJECTDIR}/_ext/1007145187/usb_device.p1 "../USB Stack/usb_device.c" 
	@-${MV} ${OBJECTDIR}/_ext/1007145187/usb_device.d ${OBJECTDIR}/_ext/1007145187/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1007145187/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1007145187/keyboard1_hid.p1: ../USB\ Stack/keyboard1_hid.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1007145187" 
	@${RM} ${OBJECTDIR}/_ext/1007145187/keyboard1_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1007145187/keyboard1_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../USB Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled     -o ${OBJECTDIR}/_ext/1007145187/keyboard1_hid.p1 "../USB Stack/keyboard1_hid.c" 
	@-${MV} ${OBJECTDIR}/_ext/1007145187/keyboard1_hid.d ${OBJECTDIR}/_ext/1007145187/keyboard1_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1007145187/keyboard1_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/main.p1: ../main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../USB Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled     -o ${OBJECTDIR}/_ext/1472/main.p1 ../main.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/main.d ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/joystick.p1: ../joystick.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/joystick.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/joystick.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../USB Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled     -o ${OBJECTDIR}/_ext/1472/joystick.p1 ../joystick.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/joystick.d ${OBJECTDIR}/_ext/1472/joystick.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/joystick.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/usb_callback.p1: ../usb_callback.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_callback.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../USB Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled     -o ${OBJECTDIR}/_ext/1472/usb_callback.p1 ../usb_callback.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/usb_callback.d ${OBJECTDIR}/_ext/1472/usb_callback.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/usb_callback.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/keyboard.p1: ../keyboard.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/keyboard.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/keyboard.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../USB Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled     -o ${OBJECTDIR}/_ext/1472/keyboard.p1 ../keyboard.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/keyboard.d ${OBJECTDIR}/_ext/1472/keyboard.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/keyboard.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/KaJUSBhub.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/KaJUSBhub.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../USB Stack" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled        $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/KaJUSBhub.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/KaJUSBhub.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/KaJUSBhub.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/KaJUSBhub.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../USB Stack" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/KaJUSBhub.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
