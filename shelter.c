#include <stdio.h>
#include <sys/wait.h>
#include <unistd.h>


int main()
{
    int p[2];
    pid_t pid;
    pipe(p);
    pid = fork();
    if (pid == -1) {
        return 1;
    } else if (pid) {
        int c;
        close(p[0]);
        write(p[1], "echo -n \"", 9);
        while ((c = getchar()) != EOF) {
            write(p[1], &c, 1);
        }
        write(p[1], "\"", 1);
        close(p[1]);
        wait(0);
    } else {
        close(p[1]);
        dup2(p[0], 0);
        close(p[0]);
        execl("/bin/sh", "/bin/sh", 0);
    }
    return 0;
}
