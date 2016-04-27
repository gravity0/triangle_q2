def getTriangleType(x, y, z)
  if isTriangle(x, y, z) && [x, y, z].uniq.size == 1 then
    "正三角形ですね！"
  elsif isTriangle(x, y, z) && [x, y, z].uniq.size == 2 then
    "二等辺三角形ですね！"
  elsif isTriangle(x, y, z) && [x, y, z].uniq.size == 3 then
    "不等辺三角形ですね！"
  else
    "三角形じゃないです＞＜"
  end
end

def isTriangle(x, y, z)
  sortedValues = [x, y, x].sort{|x, y| x.to_i <=> y.to_i}
  sortedValues[0].to_i + sortedValues[1].to_i > sortedValues[2].to_i
end

trimed = ARGV.map{|x| x.tr(",", "")}
p getTriangleType(trimed[0], trimed[1], trimed[2])
