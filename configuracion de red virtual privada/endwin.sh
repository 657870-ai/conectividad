#include <curses.h>

WINDOW *initscr(void);
int endwin(void);
bool issendwin(void);
SCREEN *newterm(const char *type, FILE *outfd, FILE *infd);
SCREEN *set_term(SCREEN *new);
void delscreen(SCREEN sp);