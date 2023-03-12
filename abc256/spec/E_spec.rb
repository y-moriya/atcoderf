RSpec.describe 'test' do
  it 'test with "3\n2 3 2\n1 10 100\n"' do
    io = IO.popen("ruby abc256/E.rb", "w+")
    io.puts("3\n2 3 2\n1 10 100\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "8\n7 3 5 5 8 4 1 2\n36 49 73 38 30 85 27 45\n"' do
    io = IO.popen("ruby abc256/E.rb", "w+")
    io.puts("8\n7 3 5 5 8 4 1 2\n36 49 73 38 30 85 27 45\n")
    io.close_write
    expect(io.readlines.join).to eq("57\n")
  end

end
