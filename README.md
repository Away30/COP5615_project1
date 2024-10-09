1. Size of the work unit is 100
 I wrote a shell script. When the size of the unit of work was 1,5,20，100, it was repeated 30 times respectively to find the final average cpu utilization and average total time, here are the results:
(Data is stored separately in 1.txt,5.txt,20.txt,100.txt)
Size of the work unit is 1
The average CPU usage in the 30 iterations is 403.1%.
The average total time usage in the 30 iterations is 0.88s

Size of the work unit is 5
The average CPU usage in the 30 iterations is 207.13%.
The average total time usage in the 30 iterations is 0.0132s

Size of the work unit is 20
The average CPU usage in the 30 iterations is 226.97%.
The average total time usage in the 30 iterations is 0.013s

Size of the work unit is 100
The average CPU usage in the 30 iterations is 237.8%.
The average total time usage in the 30 iterations is 0.0128s

 Work unit size of 100 has the lowest average total run time of 0.0128s. While CPU usage: 237.8% is slightly higher than the work unit size of 5 and 20, it does not increase significantly and is generally reasonable. The effect of parallel computation is maximized while maintaining computational efficiency.

 2.The result of running the program
 for the problem 1000000 4 is no result
 in addition,I also calculated 1000000 2 problem:3 20 119 696 4059 23660 137903 803760

 3.The running time（data in 100.txt）：
 the data in 100.txt is cycle 30 times for 1000000 4 problem, The following results are the last 5 interceptions：
  0.03s user 0.00s system 248% cpu 0.015 total
  0.02s user 0.00s system 216% cpu 0.011 total
  0.02s user 0.00s system 194% cpu 0.013 total
  0.03s user 0.00s system 249% cpu 0.015 total
  0.03s user 0.01s system 276% cpu 0.014 total
  The average CPU usage in the 30 iterations is 237.8%.(Size of the work unit is 100)
  The average total time usage in the 30 iterations is 0.0128s
4.The largest problem you managed to solve
In my opinion, the largest problem is about Create an actor Split and then assign the work. Therefore, I need to debug different work unit sizes and learn how to use parallel computing of pony. I am very happy to solve the problem.