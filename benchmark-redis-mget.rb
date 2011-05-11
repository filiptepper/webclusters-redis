$redis.flushall

puts "[redis] set"
puts Benchmark.measure {
  1.upto ITERATIONS do |i|
    $redis.set "an-average-key-#{i}", "an-average-value-#{i}"
  end
}

keys = []

1.upto ITERATIONS do |i|
  keys << "an-average-key-#{i}"
end

puts "[redis] mget"
puts Benchmark.measure {
  $redis.mget keys
}
