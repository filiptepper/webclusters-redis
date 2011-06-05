$redis.flushall

1.upto ITERATIONS do |i|
  $redis.set "an-average-key-#{i}", "an-average-value-#{i}"
  $memcached.set "an-average-key-#{i}", "an-average-value-#{i}"
end