/*
** EPITECH PROJECT, 2020
** Untitled (Workspace)
** File description:
** main
*/

#include "my.h"

int main()
{
    int a = 1;
    int b = 2;
    int res = 0;

    res = my_add(a, b);
    my_putchar(res + '0');
    my_putchar('\n');
    res = my_rem(res, a);
    my_putchar(res + '0');
    my_putchar('\n');
    write(1, "standard\n", 9);
    write(2, "error\n", 6);
    return (0);
}
