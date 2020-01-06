/*
 * types.h
 *
 * Created: 2019-11-10 23:52:36
 * Atmel Studio 6 (Version: 6.2.1563 - Service Pack 2)
 * AVR/GNU C Compiler : 4.8.1
 *  Author: Krzysztof Markiewicz
 *  www.obbo.pl
 *
 * This program is distributed under the terms of the GNU General Public License
 */ 


#ifndef TYPES_H_
#define TYPES_H_

typedef struct sequencer {
	volatile uint8_t errors;
	uint8_t channel_level_prev;
	uint16_t channel_value;
	uint16_t channel_last;
	uint16_t channel_neutral;
	uint16_t channel_maximum;
	uint16_t channel_minimum;
	uint16_t channel_up;
	uint16_t channel_down;
#if (defined(__AVR_ATtiny24__) || defined(__AVR_ATtiny24A__))
	uint8_t sequence[15];
#elif (defined(__AVR_ATtiny44__) || defined(__AVR_ATtiny44A__))
	uint8_t sequence[31];
#elif (defined(__AVR_ATtiny84__) || defined(__AVR_ATtiny84A__))
	uint8_t sequence[63];
#endif
	uint8_t sequence_length;
	uint8_t config;
	uint8_t index;
	bool ready_to_switch;
	int recovery;
} SEQUENCER_t;



#endif /* TYPES_H_ */