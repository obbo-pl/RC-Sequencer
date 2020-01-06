/*
 * Sequencer.h
 *
 * Created: 2020-01-04 20:42:43
 * Atmel Studio 6 (Version: 6.2.1563 - Service Pack 2)
 * AVR/GNU C Compiler : 4.8.1
 *  Author: Krzysztof Markiewicz
 *  www.obbo.pl
 *
 * This program is distributed under the terms of the GNU General Public License
 */ 


#ifndef SEQUENCER_H_
#define SEQUENCER_H_

#include <avr/io.h>
#include <avr/eeprom.h>
#include <avr/pgmspace.h>
#include "config.h"
#include "macro.h"


// I/O port for motor bridge
#define OUT_OUT1					(glue2(DDR, CONFIG_OUT1_PORT) |= (1 << glue3(DD, CONFIG_OUT1_PORT, CONFIG_OUT1_PIN)))
#define SET_OUT1					(glue2(PORT, CONFIG_OUT1_PORT) |= (1 << glue3(P, CONFIG_OUT1_PORT, CONFIG_OUT1_PIN)))
#define CLR_OUT1					(glue2(PORT, CONFIG_OUT1_PORT) &= ~(1 << glue3(P, CONFIG_OUT1_PORT, CONFIG_OUT1_PIN)))

#define OUT_OUT2					(glue2(DDR, CONFIG_OUT2_PORT) |= (1 << glue3(DD, CONFIG_OUT2_PORT, CONFIG_OUT2_PIN)))
#define SET_OUT2					(glue2(PORT, CONFIG_OUT2_PORT) |= (1 << glue3(P, CONFIG_OUT2_PORT, CONFIG_OUT2_PIN)))
#define CLR_OUT2					(glue2(PORT, CONFIG_OUT2_PORT) &= ~(1 << glue3(P, CONFIG_OUT2_PORT, CONFIG_OUT2_PIN)))

#define OUT_OUT3					(glue2(DDR, CONFIG_OUT3_PORT) |= (1 << glue3(DD, CONFIG_OUT3_PORT, CONFIG_OUT3_PIN)))
#define SET_OUT3					(glue2(PORT, CONFIG_OUT3_PORT) |= (1 << glue3(P, CONFIG_OUT3_PORT, CONFIG_OUT3_PIN)))
#define CLR_OUT3					(glue2(PORT, CONFIG_OUT3_PORT) &= ~(1 << glue3(P, CONFIG_OUT3_PORT, CONFIG_OUT3_PIN)))

#define OUT_OUT4					(glue2(DDR, CONFIG_OUT4_PORT) |= (1 << glue3(DD, CONFIG_OUT4_PORT, CONFIG_OUT4_PIN)))
#define SET_OUT4					(glue2(PORT, CONFIG_OUT4_PORT) |= (1 << glue3(P, CONFIG_OUT4_PORT, CONFIG_OUT4_PIN)))
#define CLR_OUT4					(glue2(PORT, CONFIG_OUT4_PORT) &= ~(1 << glue3(P, CONFIG_OUT4_PORT, CONFIG_OUT4_PIN)))


// Configuration pinhead (CFG1 - CFG3)
#define PULL_CFG1					(glue2(PORT, CONFIG_CFG1_PORT) |= (1 << glue3(P, CONFIG_CFG1_PORT, CONFIG_CFG1_PIN)))
#define READ_CFG1					((glue2(PIN, CONFIG_CFG1_PORT) >> glue3(P, CONFIG_CFG1_PORT, CONFIG_CFG1_PIN)) & 0x01)

#define PULL_CFG2					(glue2(PORT, CONFIG_CFG2_PORT) |= (1 << glue3(P, CONFIG_CFG2_PORT, CONFIG_CFG2_PIN)))
#define READ_CFG2					((glue2(PIN, CONFIG_CFG2_PORT) >> glue3(P, CONFIG_CFG2_PORT, CONFIG_CFG2_PIN)) & 0x01)

#define PULL_CFG3					(glue2(PORT, CONFIG_CFG3_PORT) |= (1 << glue3(P, CONFIG_CFG3_PORT, CONFIG_CFG3_PIN)))
#define READ_CFG3					((glue2(PIN, CONFIG_CFG3_PORT) >> glue3(P, CONFIG_CFG3_PORT, CONFIG_CFG3_PIN)) & 0x01)


// Channel signal (CH1)
#define PULL_CHANNEL1				(glue2(PORT, CONFIG_CH1_PORT) |= (1 << glue3(P, CONFIG_CH1_PORT, CONFIG_CH1_PIN)))
#define READ_CHANNEL1				((glue2(PIN, CONFIG_CH1_PORT) >> glue3(P, CONFIG_CH1_PORT, CONFIG_CH1_PIN)) & 0x01)

#define TIMER_COMMON_OVF_MS			(8)
#define RECALCULATE_INTERVAL_MS		(20)
#define SIGNAL_LOST_TIMEOUT_MS		(500)
#define CHANNEL_FILTER_LENGTH		(2)
#if (defined(__AVR_ATtiny24__) || defined(__AVR_ATtiny24A__))
	#define SEQUENCE_LENGTH			(4)
	#define EEMEM_SIZE				(128)
#elif (defined(__AVR_ATtiny44__) || defined(__AVR_ATtiny44A__))
	#define SEQUENCE_LENGTH			(5)
	#define EEMEM_SIZE				(256)
#elif (defined(__AVR_ATtiny84__) || defined(__AVR_ATtiny84A__))
	#define SEQUENCE_LENGTH			(6)
	#define EEMEM_SIZE				(512)
#endif

#define RECOVERY_DELAY_PL			(50)
#define ACCEPTED_ERRORS				(2)
#if (RECOVERY_DELAY_PL * ACCEPTED_ERRORS) >= 32767
#error "Decrease RECOVERY_DELAY_PL or ACCEPTED_ERRORS"
#endif

// Sanwa VG6DR
#define CHANNEL_PULSE_MAXIMUM		(250)
#define CHANNEL_PULSE_MINIMUM		(125)
#define CHANNEL_PULSE_NEUTRAL		((CHANNEL_PULSE_MAXIMUM + CHANNEL_PULSE_MINIMUM) / 2)
#define CHANNEL_PULSE_UP			((CHANNEL_PULSE_MAXIMUM + CHANNEL_PULSE_NEUTRAL) / 2)
#define CHANNEL_PULSE_DOWN			((CHANNEL_PULSE_MINIMUM + CHANNEL_PULSE_NEUTRAL) / 2)
#define CHANNEL_PULSE_ERROR			(5)

#define CHANNEL_PULSE_POSITIVE
#ifdef CHANNEL_PULSE_POSITIVE
#define CHANNEL_LEVEL_ACTIVE	(1)
#else
#define CHANNEL_LEVEL_ACTIVE	(0)
#endif

enum {
	OUT1_bp,
	OUT2_bp,
	OUT3_bp,
	OUT4_bp
};

enum {
	JUMPER_JP1_bp,
	JUMPER_JP2_bp,
	JUMPER_JP3_bp
};

enum {
	ERROR_TIMER_OVERLOAD_bp,
	ERROR_CHANNEL_OVERRANGE_bp,
	ERROR_CHANNEL_LOST_bp
};


#endif /* SEQUENCER_H_ */