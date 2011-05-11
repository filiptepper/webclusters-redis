puts "[memcached] set"
puts Benchmark.measure {
  1.upto ITERATIONS do |i|
    $memcached.set "an-average-key-#{i}", "an-average-value-#{i}"
  end
}

puts "[memcached] get"
puts Benchmark.measure {
  1.upto ITERATIONS do |i|
    $memcached.get "an-average-key-#{i}"
  end
}
