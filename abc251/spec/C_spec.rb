RSpec.describe 'test' do
  it 'test with "3\naaa 10\nbbb 20\naaa 30\n"' do
    io = IO.popen("ruby abc251/C.rb", "w+")
    io.puts("3\naaa 10\nbbb 20\naaa 30\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "5\naaa 9\nbbb 10\nccc 10\nddd 10\nbbb 11\n"' do
    io = IO.popen("ruby abc251/C.rb", "w+")
    io.puts("5\naaa 9\nbbb 10\nccc 10\nddd 10\nbbb 11\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "10\nbb 3\nba 1\naa 4\nbb 1\nba 5\naa 9\naa 2\nab 6\nbb 5\nab 3\n"' do
    io = IO.popen("ruby abc251/C.rb", "w+")
    io.puts("10\nbb 3\nba 1\naa 4\nbb 1\nba 5\naa 9\naa 2\nab 6\nbb 5\nab 3\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

end
