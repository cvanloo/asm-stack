extern int asm_main();

/* Instructions:
 * gcc -c driver.c
 * as bf.s -o bf.o
 * gcc -o bf bf.o driver.o -no-pie
*/
int main() {
    return asm_main();
}
