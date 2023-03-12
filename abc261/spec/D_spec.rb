RSpec.describe 'test' do
  it 'test with "6 3\n2 7 1 8 2 8\n2 10\n3 1\n5 5\n"' do
    io = IO.popen("ruby abc261/D.rb", "w+")
    io.puts("6 3\n2 7 1 8 2 8\n2 10\n3 1\n5 5\n")
    io.close_write
    expect(io.readlines.join).to eq("48\n")
  end

  it 'test with "3 2\n1000000000 1000000000 1000000000\n1 1000000000\n3 1000000000\n"' do
    io = IO.popen("ruby abc261/D.rb", "w+")
    io.puts("3 2\n1000000000 1000000000 1000000000\n1 1000000000\n3 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("5000000000\n")
  end

end
