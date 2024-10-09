use "collections"
use "math"

actor Main
  new create(env: Env) =>
    try
      // 从命令行参数获取 n 和 k 的值
      let args = env.args
      let n = args(1)?.u64()?
      let k = args(2)?.u64()?
      let split = Split(n, k, env)
    else
      // 处理错误情况
      env.out.print("Invalid arguments provided")
    end

actor Split
  let _env: Env
  var _remaining: U64
  var _results: Array[U64] = Array[U64]

  new create(n: U64, k: U64, env: Env) =>
    _env = env
    _remaining = n // 任务数等于n

    // 分配任务
    for i in Range[U64](1, n + 1, 1) do
      let calculate = Calculate(this, i, k)
    end

  // 收集结果
  be result(start: U64) =>
    if start != 0 then
      _results.push(start)
    end
    _remaining = _remaining - 1

    // 当所有任务完成时，打印结果
    if _remaining == 0 then
      if _results.size() == 0 then
        _env.out.print("no result")
      else
        // 打印所有收集到的结果
        for r in _results.values() do
          _env.out.print(r.string())
        end
      end
    end

actor Calculate
  let _split: Split
  let _start: U64
  let _k: U64

  new create(split: Split, start: U64, k: U64) =>
    _split = split
    _start = start
    _k = k
    _calculate()

  // 计算从 _start 开始的 k 个连续整数的平方和
  be _calculate() =>
    if _square_sum(_start, _k) then
      _split.result(_start)  // 如果平方和是完美平方，返回起始值
    else
      _split.result(0)  // 否则返回无效
    end  

  fun _square_sum(start: U64, k: U64): Bool =>
    // 计算从 start 开始的 k 个连续整数的平方和
    var sum: U64 = 0
    for i in Range[U64](start, start + k) do
      sum = sum + (i * i)
    end

    // 计算平方根并判断是否为完全平方
    let root: F64 = sum.f64().sqrt()
    if (root.floor() * root.floor()).u64() == sum then
      return true
    else
      return false
    end