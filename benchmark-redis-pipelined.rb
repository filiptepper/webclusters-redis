$redis.flushall

puts "[redis] pipeline set"
puts Benchmark.measure {
  $redis.pipelined do
    1.upto ITERATIONS do |i|
      $redis.set "an-average-key-#{i}", "an-average-value-#{i}"
    end
  end
}

puts "[redis] pipeline get"
puts Benchmark.measure {
  $redis.pipelined do
    1.upto ITERATIONS do |i|
      $redis.get "an-average-key-#{i}"
    end
  end
}
