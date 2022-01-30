#include<pic.h>
#include<htc.h>
#define _XTAL_FREQ 20e6
__CONFIG(0X3F3A);

#define RS RD2
#define EN RD3

#define ON 1
#define OFF 0

void Lcd_Command(const unsigned char cmd)
{
	PORTD = (cmd & 0XF0);
	RS = OFF;
	EN = ON;
	__delay_ms(5);
	EN = OFF;

	PORTD = ((cmd<<4) & 0xF0);
	RS = OFF;
	EN = ON;
	__delay_ms(5);
	EN = OFF;
}

void Lcd_Data(const unsigned char Data)
{
	PORTD = (Data & 0XF0);
	RS = ON;
	EN = ON;
	__delay_ms(5);
	EN = OFF;

	PORTD = ((Data<<4) & 0xF0);
	RS = ON;
	EN = ON;
	__delay_ms(5);
	EN = OFF;
}

void Lcd_String(const unsigned char *Str)
{
	while(*Str != 0)
	{
		Lcd_Data(*Str++);
	}	
}

void Lcd_Intialization()
{
	Lcd_Command(0x02);
	Lcd_Command(0x28);
	Lcd_Command(0x0c);
}

void Uart_Intialization()
{
	TRISC7 = 1;
	TRISC6 = 0;
	SPBRG = 129;  
	TXSTA = 0x24;	//0X26
	RCSTA = 0x90;

}

unsigned char RX()
{
	while(!RCIF);	
	return RCREG;
}

void main()
{
	TRISD=0X00;
	PORTD=0X00;
	
	char Ch;

	Lcd_Intialization();
	Uart_Intialization();

	Lcd_Command(0x80);
	Lcd_String("LYCA SOFT");

	while(1)
	{
		char Ch = RX();

		Lcd_Command(0xC0);
		Lcd_Data(Ch);
	}
}