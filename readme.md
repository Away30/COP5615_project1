
# **Project 1: Performance Evaluation of Work Unit Sizes**

## 1. Work Unit Size and Performance

I performed a series of experiments to evaluate the impact of different work unit sizes on CPU utilization and total execution time. A shell script was used to run the program with work unit sizes of 1, 5, 20, and 100, each repeated 30 times. The average CPU utilization and total time were computed for each case. The data for each work unit size is stored in separate files (`1.txt`, `5.txt`, `20.txt`, `100.txt`).

### Results:

#### Work Unit Size: 1
- **Average CPU Usage**: 403.1%
- **Average Total Time**: 0.88s

#### Work Unit Size: 5
- **Average CPU Usage**: 207.13%
- **Average Total Time**: 0.0132s

#### Work Unit Size: 20
- **Average CPU Usage**: 226.97%
- **Average Total Time**: 0.013s

#### Work Unit Size: 100
- **Average CPU Usage**: 237.8%
- **Average Total Time**: 0.0128s

### Analysis:
The work unit size of **100** yielded the lowest average total run time of **0.0128s**. Although the CPU usage at **237.8%** was slightly higher compared to unit sizes of 5 and 20, the increase was not significant and remained within reasonable bounds. The results suggest that with a work unit size of 100, parallel computation was effectively utilized while maintaining computational efficiency.

---

## 2. Program Execution Results

When the program was executed for the problem `1000000 4`, no result was produced. However, I also ran the program for the problem `1000000 2`, which resulted in the following sequence:

```
3, 20, 119, 696, 4059, 23660, 137903, 803760
```

---

## 3. Running Time (Data in `100.txt`)

For the problem `1000000 4`, the program was cycled 30 times with a work unit size of 100. The following are the last 5 results of the 30 iterations:

```
0.03s user 0.00s system 248% cpu 0.015 total
0.02s user 0.00s system 216% cpu 0.011 total
0.02s user 0.00s system 194% cpu 0.013 total
0.03s user 0.00s system 249% cpu 0.015 total
0.03s user 0.01s system 276% cpu 0.014 total
```

### Summary of Iterations:
- **Average CPU Usage**: 237.8% (Work Unit Size: 100)
- **Average Total Time**: 0.0128s

---

## 4. Largest Problem Solved

The largest problem I tackled involved creating an actor model, splitting the task, and assigning work dynamically. Through experimentation with different work unit sizes, I was able to optimize the use of parallel computing, specifically in the **Pony** programming language. Debugging and adjusting work unit sizes were crucial steps in solving this problem, and I am pleased to have successfully completed this challenge.
