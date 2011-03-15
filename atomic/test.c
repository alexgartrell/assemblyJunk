#include <stdio.h>
#include <assert.h>
#include <atomic.h>

int main()
{
    atomic_t x = 10;
    
    assert(atomic_add(&x, 10) == 10);
    assert(x == 20);

    assert(atomic_xchg(&x, 30) == 20);
    assert(x == 30);

    return 0;
}
