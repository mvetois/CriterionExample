/*
** EPITECH PROJECT, 2020
** Untitled (Workspace)
** File description:
** test_functions
*/

#include <criterion/criterion.h>
#include "my.h"

// Check if the "res" value is equal to 3
Test(test_functions, one)
{
    int a = 1;
    int b = 2;
    int res = my_add(a, b);

    cr_assert_eq(res, 3);
}

// Check if the "res" value is equal to -1
Test(test_functions, two)
{
    int a = 1;
    int b = 2;
    int res = my_rem(a, b);

    cr_assert_eq(res, -1);
}

// Check if the "res" value is equal to "a"
Test(test_functions, three)
{
    int a = 1;
    int b = 2;
    int res = my_add(a, b);

    res = my_rem(res, b);
    cr_assert_eq(res, a);
}