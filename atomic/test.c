#include <stdio.h>
#include <assert.h>
#include <atomic.h>
#include <pthread.h>

void *add_test_run(void *data)
{
    atomic_t *x = data;
    int i;

    for(i = 0; i < 1000; i++)
        atomic_add(x, 1);
    return NULL;
}

void add_test()
{
    pthread_t threads[10];
    int i, r;
    atomic_t x = 0;

    for(i = 0; i < 10; i++) {
        r = pthread_create(&threads[i], NULL, add_test_run, &x);
        assert(r == 0);
    }
    
    for(i = 0; i < 10; i++) {
        r = pthread_join(threads[i], NULL);
        assert(r == 0);
    }

    assert(x == 10 * 1000);
}

void xchg_test()
{
    atomic_t x = 10;

    assert(atomic_xchg(&x, 30) == 10);
    assert(x == 30);
}

int main()
{

    add_test();
    xchg_test();

    return 0;
}
