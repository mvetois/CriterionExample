/*
** EPITECH PROJECT, 2020
** Untitled (Workspace)
** File description:
** test_print
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>
#include "my.h"

// This function is used to catch all printing messages
void redirect_all_stdout(void)
{
    cr_redirect_stdout();
    cr_redirect_stderr();
}

// Standard output
// Check if the print "Hello\n" with my_putchar is the same as "Hello\n"
Test(test_print, one, .init=redirect_all_stdout)
{
    my_putchar('H');
    my_putchar('e');
    my_putchar('l');
    my_putchar('l');
    my_putchar('o');
    my_putchar('\n');
    cr_assert_stdout_eq_str("Hello\n");
}

// Error output
// Check if the print "Error\n" with my_putchar is the same as "Error\n"
Test(test_print, two, .init=redirect_all_stdout)
{
    write(2, "Error output\n", 13);
    cr_assert_stderr_eq_str("Error output\n");
}