$redis.flushall

puts "[redis] set"
puts Benchmark.measure {
  1.upto ITERATIONS do |i|
    $redis.set "an-average-key-#{i}", "an-average-value-#{i}"
  end
}

puts "[redis] get"
puts Benchmark.measure {
  1.upto ITERATIONS do |i|
    $redis.get "an-average-key-#{i}"
  end
}
