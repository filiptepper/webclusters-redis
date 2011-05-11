require "bundler/setup"
require "benchmark"

require "memcached"
require "redis/connection/hiredis"
require "redis"

ITERATIONS = 100000

$memcached = Memcached.new "localhost:11211"
$redis = Redis.new
