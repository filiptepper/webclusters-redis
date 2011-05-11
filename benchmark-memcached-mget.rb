puts "[memcached] set"
puts Benchmark.measure {
  1.upto ITERATIONS do |i|
    $memcached.set "an-average-key-#{i}", "an-average-value-#{i}"
  end
}

keys = []

1.upto ITERATIONS do |i|
  keys << "an-average-key-#{i}"
end

puts "[memcached] mget"
puts Benchmark.measure {
  $memcached.get keys
}
