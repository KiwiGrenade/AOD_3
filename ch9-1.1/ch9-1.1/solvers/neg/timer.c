/* timing function: difference between two calls is processor time
 * spent by your code (in seconds) 
 * hopefully portable, but surely there are systems it doesn't work on.
 */

#include <sys/time.h>
#include <sys/resource.h>
#include <unistd.h>

float timer ()
{
  struct rusage r;

  getrusage(0, &r);
  return (float)(r.ru_utime.tv_sec+r.ru_utime.tv_usec/(float)1000000);
}

/* for fortran */
float timer_()
{
  struct rusage r;

  getrusage(0, &r);
  return (float)(r.ru_utime.tv_sec+r.ru_utime.tv_usec/(float)1000000);
}

