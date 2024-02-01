#include <stdint.h>
#include <stdio.h>
#include <x86intrin.h>

#define MFENCE _mm_mfence();
#define LFENCE _mm_lfence();

#define ARRAY_WIDTH UINT8_C(4)
#define ROUNDS UINT8_C(24)
#define ROUNDKEY_ARRAY_SIZE UINT8_C(ROUNDS * ARRAY_WIDTH)


/* pre generated roundkeys from the key:
* 253635900 1264216440 2274796980 3285377520
*/
#define ROUNDKEYS {0x003a0fd4, 0x02497010, 0x194f7db1,      \
0x090d0883, 0x11fdcbb1, 0x9e98e0c8, 0x18b570cf, 0x9dc53a79, \
0xf30f7bb5, 0x6d6628db, 0xb74e5dad, 0xa65e46d0, 0x74120631, \
0xdac9bd17, 0xcd1ecf34, 0x540f76f1, 0x662147db, 0xc637c47a, \
0x46518932, 0x23269260, 0xe4dd5047, 0xf694285e, 0xe1c2951d, \
0x8ca5242c, 0xbaf8e5ca, 0x3e936cd7, 0x0fc7e5b1, 0xf1c8fa8c, \
0x5522b80c, 0xee22ca78, 0x8a6fa8b3, 0x65637b74, 0x8a19279e, \
0x6fb40ffe, 0x85c5f092, 0x92cc9f25, 0x9dde584c, 0xcb00c87f, \
0x4780ad66, 0xe61b5dcb, 0x4fa10466, 0xf728e276, 0xd255411b, \
0x656839ad, 0x9250d058, 0x51bd501f, 0x1cb40dae, 0x1abf218d, \
0x21dd192d, 0x77c644e2, 0xcabfaa45, 0x681c207d, 0xde7ac372, \
0x9436afd0, 0x10331d80, 0xf326fe98, 0xfb3ac3d4, 0x93df660e, \
0x2f65d8a3, 0xdf92e761, 0x27620087, 0x265ef76e, 0x4fb29864, \
0x2656ed1a, 0x227b88ec, 0xd0b3fa6f, 0xc86a08fd, 0xa864cba9, \
0xf1002361, 0xe5e85fc3, 0x1f0b0408, 0x488e7ac4, 0xc65415d5, \
0x51e176b6, 0xeca88bf9, 0xedb89ece, 0x9b6fb99c, 0x0548254b, \
0x8de9f7c2, 0xb6b4d146, 0x7257f134, 0x06051a42, 0x36bcef01, \
0xb649d524, 0xa540fb03, 0x34b196e6, 0xf7c80dad, 0x71bc7dc4, \
0x8fbee745, 0xcf744123, 0x907c0a60, 0x8215ec35, 0x0bf6adba, \
0xdf69029d, 0x5b72305a, 0xcb47c19f }


#define rotateLeftBy9(x) _rotl(x, 9)
#define rotateRightBy5(x) _rotr(x, 5)
#define rotateRightBy3(x) _rotr(x, 3)
#define endian_conversion(x) __asm__ volatile ("bswap %0" : "+r" (x))

/**
 * 10111213 14151617 18191a1b 1c1d1e1f => 9fc84e35 28c6c618 5532c7a7 04648bfd
 * 269554195 336926231 404298267 471670303
 * Input: 4x 32bit wide unsigned int NOT HEX
 * Will print the generated ciphertext to the console where the program was called in
 * @param argc
 * @param argv
 * @return
 */
int main(__attribute__((unused)) int argc, char *argv[]) {
    uint32_t x0, x1, x2, x3, tmp;
    uint32_t roundkey_arr[ROUNDKEY_ARRAY_SIZE] = ROUNDKEYS;
    x0 = strtoul(argv[1], NULL, 10);
    x1 = strtoul(argv[2], NULL, 10);
    x2 = strtoul(argv[3], NULL, 10);
    x3 = strtoul(argv[4], NULL, 10);

    uint64_t start, end;
    uint32_t ui;
    MFENCE
    start = __rdtscp(&ui);
    LFENCE

    endian_conversion(x0);
    endian_conversion(x1);
    endian_conversion(x2);
    endian_conversion(x3);

    //round 1
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[0]) + (x1 ^ roundkey_arr[1]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[2]) + (x2 ^ roundkey_arr[1]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[3]) + (x3 ^ roundkey_arr[1]));
    x3 = tmp;

    //round 2
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[4]) + (x1 ^ roundkey_arr[5]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[6]) + (x2 ^ roundkey_arr[5]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[7]) + (x3 ^ roundkey_arr[5]));
    x3 = tmp;

    //round 3
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[8]) + (x1 ^ roundkey_arr[9]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[10]) + (x2 ^ roundkey_arr[9]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[11]) + (x3 ^ roundkey_arr[9]));
    x3 = tmp;

    //round 4
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[12]) + (x1 ^ roundkey_arr[13]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[14]) + (x2 ^ roundkey_arr[13]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[15]) + (x3 ^ roundkey_arr[13]));
    x3 = tmp;

    //round 5
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[16]) + (x1 ^ roundkey_arr[17]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[18]) + (x2 ^ roundkey_arr[17]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[19]) + (x3 ^ roundkey_arr[17]));
    x3 = tmp;

    //round 6
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[20]) + (x1 ^ roundkey_arr[21]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[22]) + (x2 ^ roundkey_arr[21]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[23]) + (x3 ^ roundkey_arr[21]));
    x3 = tmp;

    //round 7
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[24]) + (x1 ^ roundkey_arr[25]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[26]) + (x2 ^ roundkey_arr[25]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[27]) + (x3 ^ roundkey_arr[25]));
    x3 = tmp;

    //round 8
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[28]) + (x1 ^ roundkey_arr[29]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[30]) + (x2 ^ roundkey_arr[29]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[31]) + (x3 ^ roundkey_arr[29]));
    x3 = tmp;

    //round 9
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[32]) + (x1 ^ roundkey_arr[33]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[34]) + (x2 ^ roundkey_arr[33]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[35]) + (x3 ^ roundkey_arr[33]));
    x3 = tmp;

    //round 10
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[36]) + (x1 ^ roundkey_arr[37]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[38]) + (x2 ^ roundkey_arr[37]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[39]) + (x3 ^ roundkey_arr[37]));
    x3 = tmp;

    //round 11
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[40]) + (x1 ^ roundkey_arr[41]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[42]) + (x2 ^ roundkey_arr[41]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[43]) + (x3 ^ roundkey_arr[41]));
    x3 = tmp;

    //round 12
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[44]) + (x1 ^ roundkey_arr[45]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[46]) + (x2 ^ roundkey_arr[45]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[47]) + (x3 ^ roundkey_arr[45]));
    x3 = tmp;

    //round 13
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[48]) + (x1 ^ roundkey_arr[49]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[50]) + (x2 ^ roundkey_arr[49]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[51]) + (x3 ^ roundkey_arr[49]));
    x3 = tmp;

    //round 14
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[52]) + (x1 ^ roundkey_arr[53]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[54]) + (x2 ^ roundkey_arr[53]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[55]) + (x3 ^ roundkey_arr[53]));
    x3 = tmp;

    //round 14
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[56]) + (x1 ^ roundkey_arr[57]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[58]) + (x2 ^ roundkey_arr[57]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[59]) + (x3 ^ roundkey_arr[57]));
    x3 = tmp;

    //round 15
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[60]) + (x1 ^ roundkey_arr[61]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[62]) + (x2 ^ roundkey_arr[61]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[63]) + (x3 ^ roundkey_arr[61]));
    x3 = tmp;

    //round 16
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[64]) + (x1 ^ roundkey_arr[65]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[66]) + (x2 ^ roundkey_arr[65]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[67]) + (x3 ^ roundkey_arr[65]));
    x3 = tmp;

    //round 17
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[68]) + (x1 ^ roundkey_arr[69]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[70]) + (x2 ^ roundkey_arr[69]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[71]) + (x3 ^ roundkey_arr[69]));
    x3 = tmp;

    //round 18
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[72]) + (x1 ^ roundkey_arr[73]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[74]) + (x2 ^ roundkey_arr[73]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[75]) + (x3 ^ roundkey_arr[73]));
    x3 = tmp;


    //round 19
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[76]) + (x1 ^ roundkey_arr[77]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[78]) + (x2 ^ roundkey_arr[77]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[79]) + (x3 ^ roundkey_arr[77]));
    x3 = tmp;

    //round 20
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[80]) + (x1 ^ roundkey_arr[81]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[82]) + (x2 ^ roundkey_arr[81]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[83]) + (x3 ^ roundkey_arr[81]));
    x3 = tmp;

    //round 21
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[84]) + (x1 ^ roundkey_arr[85]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[86]) + (x2 ^ roundkey_arr[85]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[87]) + (x3 ^ roundkey_arr[85]));
    x3 = tmp;

    //round 22
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[88]) + (x1 ^ roundkey_arr[89]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[90]) + (x2 ^ roundkey_arr[89]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[91]) + (x3 ^ roundkey_arr[89]));
    x3 = tmp;

    //round 23
    tmp = x0;
    x0 = rotateLeftBy9((x0 ^ roundkey_arr[92]) + (x1 ^ roundkey_arr[93]));
    x1 = rotateRightBy5((x1 ^ roundkey_arr[94]) + (x2 ^ roundkey_arr[93]));
    x2 = rotateRightBy3((x2 ^ roundkey_arr[95]) + (x3 ^ roundkey_arr[93]));
    x3 = tmp;

    endian_conversion(x0);
    endian_conversion(x1);
    endian_conversion(x2);
    endian_conversion(x3);


    MFENCE
    end = __rdtscp(&ui);
    LFENCE
    printf("%lu %u %u %u %u\n", (end - start), x0, x1, x2, x3);

    //io is excluded from measuring
    /* FILE *file = fopen("cipher.texts", "a");
    if (file == NULL) {
        printf("Unable to open/create the file.\n");
        return EXIT_FAILURE;
    }
    fprintf(file, "%u\n%u\n%u\n%u\n", x0, x1, x2, x3);
    fclose(file); */
    return EXIT_SUCCESS;
}
