require File.expand_path(File.dirname(__FILE__) + '/../triangle')
describe "三角形テスト" do
  it "2, 3, 4の場合、不等辺三角形" do
    expect(getTriangleType(2, 3, 4)).to eq "不等辺三角形ですね！"
  end
  it "2, 2, 1の場合、二等辺三角形" do
    expect(getTriangleType(2, 2, 1)).to eq "二等辺三角形ですね！"
  end
  it "1, 1, 1の場合、正三角形" do
    expect(getTriangleType(1, 1, 1)).to eq "正三角形ですね！"
  end
  it "1, 2, 3の場合、三角形ではない" do
    expect(getTriangleType(1, 2, 3)).to eq "三角形じゃないです＞＜"
  end
  it "0, 2, 3の場合、三角形ではない" do
    expect(getTriangleType(0, 2, 3)).to eq "三角形じゃないです＞＜"
  end
  it "0, 3, 3の場合、三角形ではない" do
    expect(getTriangleType(0, 2, 3)).to eq "三角形じゃないです＞＜"
  end
  it "0, 0, 3の場合、三角形ではない" do
    expect(getTriangleType(0, 0, 3)).to eq "三角形じゃないです＞＜"
  end
  it "0, 0, 0の場合、三角形ではない" do
    expect(getTriangleType(0, 0, 0)).to eq "三角形じゃないです＞＜"
  end
end
