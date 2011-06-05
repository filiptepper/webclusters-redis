redis = Redis.new
script = <<LUA
  local value = tonumber(redis.call('get', KEYS[1]))
  if value == nil then return {err = "Value at key is not integer"} end
  if value > tonumber(ARGV[1])
  then
    value = value - 1
    redis.call('set', KEYS[1], value)
  end
  return value
LUA

redis.set :x, 4
5.times { puts(redis.eval(script, 1, :x, 0)) }