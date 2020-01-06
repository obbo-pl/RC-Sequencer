/*
 * Sequencer.c
 *
 * Created: 2020-01-04 20:09:28
 * Atmel Studio 6 (Version: 6.2.1563 - Service Pack 2)
 * AVR/GNU C Compiler : 4.8.1
 *  Author: Krzysztof Markiewicz
 *  www.obbo.pl
 *
 * This program is distributed under the terms of the GNU General Public License
 */ 


#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <avr/eeprom.h>
#include <avr/pgmspace.h>
#include <stdlib.h>
#include <stdbool.h>
#include "Sequencer.h"
#include "lowpass_filter.h"
#include "bitlib.h"
#include "types.h"
#include "delays.h"

// resource:
// timer0 - common timers
// timer1 - checks the signal from the receiver

// ATtiny 24
// Program Memory Usage :	1666 bytes   81,3 % Full
// Data Memory Usage 	:  	  55 bytes   43,0 % Full
// EEPROM Memory Usage 	:	 128 bytes  100,0 % Full

uint8_t EEMEM EEMEM_sequences[EEMEM_SIZE] = {
	// sequence 0 
	0x05, 0x00, 0x01, 0x02, 0x04, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#if (defined(__AVR_ATtiny44__) || defined(__AVR_ATtiny44A__) || defined(__AVR_ATtiny84__) || defined(__AVR_ATtiny84A__))
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#endif
#if (defined(__AVR_ATtiny84__) || defined(__AVR_ATtiny84A__))
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#endif
	// sequence 1
	0x05, 0x00, 0x01, 0x03, 0x07, 0x0f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#if (defined(__AVR_ATtiny44__) || defined(__AVR_ATtiny44A__) || defined(__AVR_ATtiny84__) || defined(__AVR_ATtiny84A__))
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#endif
#if (defined(__AVR_ATtiny84__) || defined(__AVR_ATtiny84A__))
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#endif
	// sequence 2
	0x0f, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e,
#if (defined(__AVR_ATtiny44__) || defined(__AVR_ATtiny44A__) || defined(__AVR_ATtiny84__) || defined(__AVR_ATtiny84A__))
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#endif
#if (defined(__AVR_ATtiny84__) || defined(__AVR_ATtiny84A__))
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#endif
	// sequence 3
	0x0b, 0x00, 0x01, 0x03, 0x05, 0x09, 0x02, 0x06, 0x0a, 0x04, 0x0c, 0x0f, 0x00, 0x00, 0x00, 0x00,
#if (defined(__AVR_ATtiny44__) || defined(__AVR_ATtiny44A__) || defined(__AVR_ATtiny84__) || defined(__AVR_ATtiny84A__))
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#endif
#if (defined(__AVR_ATtiny84__) || defined(__AVR_ATtiny84A__))
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#endif
	// sequence 4
	0x08, 0x00, 0x01, 0x03, 0x07, 0x0f, 0x0e, 0x0c, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#if (defined(__AVR_ATtiny44__) || defined(__AVR_ATtiny44A__) || defined(__AVR_ATtiny84__) || defined(__AVR_ATtiny84A__))
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#endif
#if (defined(__AVR_ATtiny84__) || defined(__AVR_ATtiny84A__))
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#endif
	// sequence 5
	0x05, 0x00, 0x01, 0x02, 0x04, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#if (defined(__AVR_ATtiny44__) || defined(__AVR_ATtiny44A__) || defined(__AVR_ATtiny84__) || defined(__AVR_ATtiny84A__))
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#endif
#if (defined(__AVR_ATtiny84__) || defined(__AVR_ATtiny84A__))
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#endif
	// sequence 6
	0x05, 0x00, 0x01, 0x02, 0x04, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#if (defined(__AVR_ATtiny44__) || defined(__AVR_ATtiny44A__) || defined(__AVR_ATtiny84__) || defined(__AVR_ATtiny84A__))
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#endif
#if (defined(__AVR_ATtiny84__) || defined(__AVR_ATtiny84A__))
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#endif
	// sequence 7
	0x05, 0x00, 0x01, 0x02, 0x04, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#if (defined(__AVR_ATtiny44__) || defined(__AVR_ATtiny44A__) || defined(__AVR_ATtiny84__) || defined(__AVR_ATtiny84A__))
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#endif
#if (defined(__AVR_ATtiny84__) || defined(__AVR_ATtiny84A__))
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
#endif
};


SEQUENCER_t state = {
	.errors = 0,
	.channel_maximum = CHANNEL_PULSE_MAXIMUM,
	.channel_neutral = CHANNEL_PULSE_NEUTRAL,
	.channel_minimum = CHANNEL_PULSE_MINIMUM,
	.channel_up = CHANNEL_PULSE_UP,
	.channel_down = CHANNEL_PULSE_DOWN,
	.ready_to_switch = false,
	.index = 0,
};

DELAY_t timer_signal_ms;
DELAY_t timer_recalc_ms;
LPFu16_t filter_channel;

void main_InitIO(void);
void main_LoadSequence(uint8_t config);
void main_InitTimers(void);
void main_InitPulseTimer(void);
void main_StartPulseTimer(void);
void main_StopPulseTimer(void);
uint16_t main_ReadPulseTimer(void);
bool main_IsPulseTimerOverload(void);
void main_InitCommonTimer(void);
bool main_CheckChannelInput(uint16_t *val, bool verify);
bool main_VerifyChannelValue(uint16_t *val);
void main_UpdateRecovery(int recovery_delay);
void main_SetOutput(uint8_t index);
uint8_t main_GetConfiguration(void);


int main(void)
{
	main_InitIO();
	state.config = main_GetConfiguration();
	main_LoadSequence(state.config);
	delays_Init(&timer_signal_ms, SIGNAL_LOST_TIMEOUT_MS);
	delays_Pause(&timer_signal_ms);
	delays_Init(&timer_recalc_ms, RECALCULATE_INTERVAL_MS);
	delays_Pause(&timer_recalc_ms);
	main_InitTimers();
	_delay_ms(1000);
	lpfilter_Set(&filter_channel, CHANNEL_FILTER_LENGTH);
	lpFilter_Fill(&filter_channel, state.channel_neutral);
	delays_Reset(&timer_signal_ms);
	delays_Reset(&timer_recalc_ms);
	// wait for signal
	state.recovery = 20;
	sei();
    while(1) {
		// check signal
		main_CheckChannelInput(&(state.channel_value), true);
		// fail-safe
		if (delays_Check(&timer_signal_ms) || (state.recovery > 0)) {
			setbit(state.errors, ERROR_CHANNEL_LOST_bp);
			state.channel_value = state.channel_neutral;
			state.ready_to_switch = false;
		}
		// detect switching
		if (delays_Check(&timer_recalc_ms)) {
			uint16_t channel_filtered = lpfilter_Filter(&filter_channel, state.channel_value);
			if ((channel_filtered < state.channel_up - CHANNEL_PULSE_ERROR) && (channel_filtered > state.channel_down + CHANNEL_PULSE_ERROR)) {
				state.ready_to_switch = true;
			}
			if (state.ready_to_switch) {
				if (channel_filtered > state.channel_up + CHANNEL_PULSE_ERROR) {
					state.index++;
					if (state.index >= state.sequence_length) state.index = 0;
					state.ready_to_switch = false;
				} else if (channel_filtered < state.channel_down - CHANNEL_PULSE_ERROR) {
					if (state.index == 0) state.index = state.sequence_length - 1;
					else state.index--;
					state.ready_to_switch = false;
				}
			}
			delays_Reset(&timer_recalc_ms);
		}
		// read sequence and set output
		if (state.config != main_GetConfiguration()) {
			state.config = main_GetConfiguration();
			main_LoadSequence(state.config);
		}
        main_SetOutput(state.index);
    }
}

ISR(TIM0_OVF_vect)
{
	delays_Update(&timer_signal_ms, TIMER_COMMON_OVF_MS);
	delays_Update(&timer_recalc_ms, TIMER_COMMON_OVF_MS);
}

void main_InitIO(void)
{
	PULL_CFG1;
	PULL_CFG2;
	PULL_CFG3;

	CLR_OUT1;
	OUT_OUT1;
	CLR_OUT2;
	OUT_OUT2;
	CLR_OUT3;
	OUT_OUT3;
	CLR_OUT4;
	OUT_OUT4;

	PULL_CHANNEL1;
}

void main_InitTimers(void)
{
	main_InitPulseTimer();
	main_InitCommonTimer();
}

void main_InitPulseTimer(void)
{
	// Timer1 (16-bit)
	TCCR1B &= ~((1 << CS12) | (1 << CS11) | (1 << CS10));
	TIFR1 |= (1 << TOV1);
}

void main_StartPulseTimer(void)
{
	TCNT1H = 0;
	TCNT1L = 0;
	TIFR1 |= (1 << TOV1);
	TCCR1B |= (1 << CS11) | (1 << CS10);
}

void main_StopPulseTimer(void)
{
	TCCR1B &= ~((1 << CS12) | (1 << CS11) | (1 << CS10));
}

uint16_t main_ReadPulseTimer(void)
{
	uint16_t result;
	unsigned char sreg;
	sreg = SREG;
	cli();
	result = TCNT1;
	SREG = sreg;
	sei();
	return result;
}

bool main_IsPulseTimerOverload(void)
{
	return (TIFR1 >> TOV1) & 0x01;
}

void main_InitCommonTimer(void)
{
	TIMSK0 |= (1 << TOIE0);
	TCCR0B = (1 << CS02);
}

bool main_CheckChannelInput(uint16_t *val, bool verify)
{
	// check the channel pulse length, it should be between 1ms and 2ms
	// timer prescaler is set to 8us per tick
	// then should count from 125 to 250 tick per pulse
	// returns "true" and updates "value" when a new pulse occurs
	bool changed = false;
	uint8_t channel_level = READ_CHANNEL1;
	if (state.channel_level_prev != channel_level) {
		if (channel_level == CHANNEL_LEVEL_ACTIVE) {
			main_StartPulseTimer();
		} else {
			main_StopPulseTimer();
			if (main_IsPulseTimerOverload()) {
				setbit(state.errors, ERROR_TIMER_OVERLOAD_bp);
				state.channel_last = 0xffff;
				main_UpdateRecovery(RECOVERY_DELAY_PL);
			} else {
				state.channel_last = main_ReadPulseTimer();
				if (main_VerifyChannelValue(&(state.channel_last)) || !verify) {
					*val = state.channel_last;
					main_UpdateRecovery(-1);
					delays_Reset(&timer_signal_ms);
					changed = true;
				} else {
					setbit(state.errors, ERROR_CHANNEL_OVERRANGE_bp);
					main_UpdateRecovery(RECOVERY_DELAY_PL);
				}
			}
		}
		state.channel_level_prev = channel_level;
	}
	return changed;
}

bool main_VerifyChannelValue(uint16_t *val)
{
	if ((*val < (state.channel_maximum + CHANNEL_PULSE_ERROR)) && (*val > (state.channel_minimum - CHANNEL_PULSE_ERROR))) return true;
	else return false;
}

void main_UpdateRecovery(int recovery)
{
	if (recovery < 0) {
		if (state.recovery > -(ACCEPTED_ERRORS * RECOVERY_DELAY_PL)) state.recovery += recovery;
	} else {
		if (state.recovery < RECOVERY_DELAY_PL) state.recovery += recovery;
	}
}

uint8_t main_GetConfiguration(void)
{
	uint8_t config = 0;
	if (!(READ_CFG1)) setbit(config, JUMPER_JP1_bp);
	if (!(READ_CFG2)) setbit(config, JUMPER_JP2_bp);
	if (!(READ_CFG3)) setbit(config, JUMPER_JP3_bp);	
	return config;
}

void main_LoadSequence(uint8_t config)
{
	uint16_t sequence_start = config;
	sequence_start = sequence_start << SEQUENCE_LENGTH; 
	state.sequence_length = eeprom_read_byte(&EEMEM_sequences[sequence_start++]);
	if (state.sequence_length > pow(2, SEQUENCE_LENGTH) - 1) state.sequence_length = pow(2, SEQUENCE_LENGTH) - 1;
	for (uint8_t i = 0; i < state.sequence_length; i++) {
		state.sequence[i] = eeprom_read_byte(&EEMEM_sequences[sequence_start++]);
	}
}

void main_SetOutput(uint8_t index)
{
	uint8_t out = state.sequence[index];
	if (testbit(out, OUT1_bp)) SET_OUT1;
	else CLR_OUT1;
	if (testbit(out, OUT2_bp)) SET_OUT2;
	else CLR_OUT2;
	if (testbit(out, OUT3_bp)) SET_OUT3;
	else CLR_OUT3;
	if (testbit(out, OUT4_bp)) SET_OUT4;
	else CLR_OUT4;
}

