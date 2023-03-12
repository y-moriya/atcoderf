RSpec.describe 'test' do
  it 'test with "2 3 1\n"' do
    io = IO.popen("ruby abc253/E.rb", "w+")
    io.puts("2 3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "3 3 2\n"' do
    io = IO.popen("ruby abc253/E.rb", "w+")
    io.puts("3 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "100 1000 500\n"' do
    io = IO.popen("ruby abc253/E.rb", "w+")
    io.puts("100 1000 500\n")
    io.close_write
    expect(io.readlines.join).to eq("657064711\n")
  end

end
