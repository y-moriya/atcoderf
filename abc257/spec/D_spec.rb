RSpec.describe 'test' do
  it 'test with "4\n-10 0 1\n0 0 5\n10 0 1\n11 0 1\n"' do
    io = IO.popen("ruby abc257/D.rb", "w+")
    io.puts("4\n-10 0 1\n0 0 5\n10 0 1\n11 0 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "7\n20 31 1\n13 4 3\n-10 -15 2\n34 26 5\n-2 39 4\n0 -50 1\n5 -20 2\n"' do
    io = IO.popen("ruby abc257/D.rb", "w+")
    io.puts("7\n20 31 1\n13 4 3\n-10 -15 2\n34 26 5\n-2 39 4\n0 -50 1\n5 -20 2\n")
    io.close_write
    expect(io.readlines.join).to eq("18\n")
  end

end
