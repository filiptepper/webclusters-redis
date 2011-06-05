$redis.flushall

1.upto ITERATIONS do |i|
  $memcached.set "an-average-key-#{i}", i
  $redis.hset "an-average-key", i, i
end