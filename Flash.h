/*
 * Flash.h
 *
 *  Created on: Sep 6, 2015
 *      Author: Lazar
 */

#ifndef FLASH_H_
#define FLASH_H_

long CreateFileToDevice(char *Name);
long WriteFileToDevice(char *Name, long *data);
long ReadFileFromDevice(char *Name,unsigned char *data);



#endif /* FLASH_H_ */
