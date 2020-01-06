/*
 * config.h
 *
 * Created: 30.08.2019 12:09:12
 * Atmel Studio 6 (Version: 6.2.1563 - Service Pack 2)
 * AVR/GNU C Compiler : 4.8.1
 *  Author: Krzysztof Markiewicz
 *  www.obbo.pl
 *
 * This program is distributed under the terms of the GNU General Public License
 */ 


#ifndef CONFIG_H_
#define CONFIG_H_


// OUT port
#define CONFIG_OUT1_PORT		A
#define CONFIG_OUT1_PIN			0

#define CONFIG_OUT2_PORT		A
#define CONFIG_OUT2_PIN			1

#define CONFIG_OUT3_PORT		A
#define CONFIG_OUT3_PIN			2

#define CONFIG_OUT4_PORT		A
#define CONFIG_OUT4_PIN			3


// Configuration pinhead (CFG1 - CFG3)
#define CONFIG_CFG1_PORT		A
#define	CONFIG_CFG1_PIN			4

#define CONFIG_CFG2_PORT		A
#define	CONFIG_CFG2_PIN			5

#define CONFIG_CFG3_PORT		A
#define	CONFIG_CFG3_PIN			6


// Channel signal (CH1)
#define CONFIG_CH1_PORT			B
#define CONFIG_CH1_PIN			0


#endif /* CONFIG_H_ */