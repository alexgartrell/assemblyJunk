#include <stdio.h>
#include <assert.h>

extern int atomic_add(int *, int);

int main()
{
    int x = 10;
    
    assert(atomic_add(&x, 10) == 10);
    assert(x == 20);
    return 0;
}
