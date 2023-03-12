RSpec.describe 'test' do
  it 'test with "4\n1161\n1119\n7111\n1811\n"' do
    io = IO.popen("ruby abc258/B.rb", "w+")
    io.puts("4\n1161\n1119\n7111\n1811\n")
    io.close_write
    expect(io.readlines.join).to eq("9786\n")
  end

  it 'test with "4\n9129\n1317\n7185\n1311\n"' do
    io = IO.popen("ruby abc258/B.rb", "w+")
    io.puts("4\n9129\n1317\n7185\n1311\n")
    io.close_write
    expect(io.readlines.join).to eq("9921\n")
  end

  it 'test with "1\n1\n"' do
    io = IO.popen("ruby abc258/B.rb", "w+")
    io.puts("1\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "2\n1\n2\n1\n2\n"' do
    io = IO.popen("ruby abc258/B.rb", "w+")
    io.puts("2\n1\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("22\n")
  end

  it 'test with "10\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n"' do
    io = IO.popen("ruby abc258/B.rb", "w+")
    io.puts("10\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n")
    io.close_write
    expect(io.readlines.join).to eq("1111111111\n")
  end

end
