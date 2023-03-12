RSpec.describe 'test' do
  it 'test with "5 3 2\n"' do
    io = IO.popen("ruby abc253/A.rb", "w+")
    io.puts("5 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "2 5 3\n"' do
    io = IO.popen("ruby abc253/A.rb", "w+")
    io.puts("2 5 3\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "100 100 100\n"' do
    io = IO.popen("ruby abc253/A.rb", "w+")
    io.puts("100 100 100\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
