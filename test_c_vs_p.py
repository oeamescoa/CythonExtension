# just created with setup.py and fib_c.pyx src
import fib_c
# part of standard Python library
import time


# Python Implementation
def fib(n):
   
    # Check if input is 0 then it will
    # print incorrect input
    if n < 0:
        print("Incorrect input")
 
    # Check if n is 0
    # then it will return 0
    elif n == 0:
        return 0
 
    # Check if n is 1,2
    # it will return 1
    elif n == 1 or n == 2:
        return 1
 
    else:
        return fib(n-1) + fib(n-2)


def driver():
    # Python Execution
    p_t0 = time.perf_counter()
    fib(32)
    p_t1 = time.perf_counter()
    p_time = p_t1 - p_t0
    print('Python Speed: {:.8f} seconds'.format(p_time))

    # Cython Execution
    c_t0 = time.perf_counter()
    fib_c.fib_c(32)
    c_t1 = time.perf_counter()
    c_time = c_t1 - c_t0
    print('Cython Speed: {:.8f} seconds'.format(c_time))

    print('\nThe Cython implementation of fibonacci executed approximately: \n')
    print('{:.2f}x faster than the Python version.'.format(1/(c_time/p_time)))

if __name__ == "__main__":
    driver()