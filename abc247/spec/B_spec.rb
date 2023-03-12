RSpec.describe 'test' do
  it 'test with "3\ntanaka taro\ntanaka jiro\nsuzuki hanako\n"' do
    io = IO.popen("ruby abc247/B.rb", "w+")
    io.puts("3\ntanaka taro\ntanaka jiro\nsuzuki hanako\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "3\naaa bbb\nxxx aaa\nbbb yyy\n"' do
    io = IO.popen("ruby abc247/B.rb", "w+")
    io.puts("3\naaa bbb\nxxx aaa\nbbb yyy\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "2\ntanaka taro\ntanaka taro\n"' do
    io = IO.popen("ruby abc247/B.rb", "w+")
    io.puts("2\ntanaka taro\ntanaka taro\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "3\ntakahashi chokudai\naoki kensho\nsnu ke\n"' do
    io = IO.popen("ruby abc247/B.rb", "w+")
    io.puts("3\ntakahashi chokudai\naoki kensho\nsnu ke\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
