$redis.flushall

1.upto ITERATIONS do |i|
  $redis.set "an-average-key-#{i}", i
  $memcached.set "an-average-key-#{i}", i
end