RSpec.describe 'test' do
  it 'test with "5 3\n6 8 10 7 10\n2 3 4\n"' do
    io = IO.popen("ruby abc252/B.rb", "w+")
    io.puts("5 3\n6 8 10 7 10\n2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "5 2\n100 100 100 1 1\n5 4\n"' do
    io = IO.popen("ruby abc252/B.rb", "w+")
    io.puts("5 2\n100 100 100 1 1\n5 4\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "2 1\n100 1\n2\n"' do
    io = IO.popen("ruby abc252/B.rb", "w+")
    io.puts("2 1\n100 1\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
