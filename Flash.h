/*
 * Flash.h
 *
 *  Created on: Sep 6, 2015
 *      Author: Lazar
 */

#ifndef FLASH_H_
#define FLASH_H_

long CreateFileToDevice(long *lFileHandle);
long WriteFileToDevice(long *lFileHandle, long *data);
long ReadFileFromDevice(long , int size,unsigned char *data);



#endif /* FLASH_H_ */
