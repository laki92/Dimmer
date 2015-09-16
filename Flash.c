#include <stdlib.h>
#include <string.h>

// Simplelink includes
#include "simplelink.h"

//Driverlib includes
#include "hw_types.h"
#include "hw_ints.h"
#include "rom.h"
#include "rom_map.h"
#include "interrupt.h"
#include "prcm.h"

//Common interface includes
#include "gpio_if.h"
#include "common.h"
#ifndef NOTERM
#include "uart_if.h"
#endif
#include "pinmux.h"

#define SL_MAX_FILE_SIZE        64L*1024L       /* 64KB file */
#define BUF_SIZE                2048
/* Application specific status/error codes */
typedef enum{
    // Choosing this number to avoid overlap w/ host-driver's error codes
    FILE_ALREADY_EXIST = -0x7D0,
    FILE_CLOSE_ERROR = FILE_ALREADY_EXIST - 1,
    FILE_NOT_MATCHED = FILE_CLOSE_ERROR - 1,
    FILE_OPEN_READ_FAILED = FILE_NOT_MATCHED - 1,
    FILE_OPEN_WRITE_FAILED = FILE_OPEN_READ_FAILED -1,
    FILE_READ_FAILED = FILE_OPEN_WRITE_FAILED - 1,
    FILE_WRITE_FAILED = FILE_READ_FAILED - 1,

    STATUS_CODE_MAX = -0xBB8
}e_AppStatusCodes;

SlFsFileInfo_t info;
//*****************************************************************************
//                 GLOBAL VARIABLES -- Start
//*****************************************************************************
unsigned char gaucCmpBuf[4];

/******************************************************************************/
//				Create file file name in external Flash memory
/******************************************************************************/
long CreateFileToDevice(char *Name)
{
	long lFileHandle=-1;
    long lRetVal = -1;

    //
    //  create a user file
    //

    lRetVal = sl_FsOpen((unsigned char *)Name,
    					FS_MODE_OPEN_CREATE(3584, _FS_FILE_OPEN_FLAG_COMMIT|_FS_FILE_PUBLIC_WRITE),
                        NULL,
                        &lFileHandle);
    if(lRetVal < 0)
    {
        //
        // File may already be created
        //
        lRetVal = sl_FsClose(lFileHandle, 0, 0, 0);
        ASSERT_ON_ERROR(lRetVal);
    }
    else
    {
        //
        // close the user file
        //
        lRetVal = sl_FsClose(lFileHandle, 0, 0, 0);
        if (SL_RET_CODE_OK != lRetVal)
        {
            ASSERT_ON_ERROR(FILE_CLOSE_ERROR);
        }
    }
    return SUCCESS;
}

/******************************************************************************/
//				Write data in external Flash memory with File name
/******************************************************************************/

long WriteFileToDevice(char *Name, char *Data)
{
  	long lFileHandle=-1;
    long lRetVal = -1;
	//
	//  open a user file for writing
	//
	lRetVal = sl_FsOpen((unsigned char *)Name,
						FS_MODE_OPEN_WRITE,
						NULL,
						&lFileHandle);
	if(lRetVal < 0)
	{
		lRetVal = sl_FsClose(lFileHandle, 0, 0, 0);
		ASSERT_ON_ERROR(FILE_OPEN_WRITE_FAILED);
	}


	lRetVal = sl_FsWrite(lFileHandle, 0,
				(unsigned char *)Data, strlen(Data));
	if (lRetVal < 0)
	{
		lRetVal = sl_FsClose(lFileHandle, 0, 0, 0);
			ASSERT_ON_ERROR(FILE_WRITE_FAILED);
	}


	//
	// close the user file
	//
	lRetVal = sl_FsClose(lFileHandle, 0, 0, 0);
	if (SL_RET_CODE_OK != lRetVal)
	{
		ASSERT_ON_ERROR(FILE_CLOSE_ERROR);

	}
	return SUCCESS;
}


/******************************************************************************/
//				Read from external Flash memory with file name
/******************************************************************************/

long ReadFileFromDevice(char *Name, unsigned char *data)
{
	long lFileHandle= -1;
    long lRetVal = -1;

    //
    // open a user file for reading
    //
    lRetVal = sl_FsOpen((unsigned char *)Name,
                        FS_MODE_OPEN_READ,
                        NULL,
                        &lFileHandle);
    if(lRetVal < 0)
    {
        lRetVal = sl_FsClose(lFileHandle, 0, 0, 0);
        ASSERT_ON_ERROR(FILE_OPEN_READ_FAILED);
    }

    // get lenght of requred data

    lRetVal=sl_FsGetInfo((unsigned char*)Name,
    		NULL,
			&info);
    if(lRetVal < 0)
        {
            UART_PRINT("ERROR sl_FsGetInfo");
        }

    //
    // read the data and compare with the stored buffer
    //

	lRetVal = sl_FsRead(lFileHandle, 0,
			data,
			info.FileLen);
	if ((lRetVal < 0) || (lRetVal != info.FileLen))
	{
		lRetVal = sl_FsClose(lFileHandle, 0, 0, 0);
		ASSERT_ON_ERROR(FILE_READ_FAILED);
	}

    //
    // close the user file
    //
    lRetVal = sl_FsClose(lFileHandle, 0, 0, 0);
    if (SL_RET_CODE_OK != lRetVal)
    {
        ASSERT_ON_ERROR(FILE_CLOSE_ERROR);
    }

    return SUCCESS;
}



