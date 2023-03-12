RSpec.describe 'test' do
  it 'test with "4\n3 1 4 1\n"' do
    io = IO.popen("ruby abc252/D.rb", "w+")
    io.puts("4\n3 1 4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "10\n99999 99998 99997 99996 99995 99994 99993 99992 99991 99990\n"' do
    io = IO.popen("ruby abc252/D.rb", "w+")
    io.puts("10\n99999 99998 99997 99996 99995 99994 99993 99992 99991 99990\n")
    io.close_write
    expect(io.readlines.join).to eq("120\n")
  end

  it 'test with "15\n3 1 4 1 5 9 2 6 5 3 5 8 9 7 9\n"' do
    io = IO.popen("ruby abc252/D.rb", "w+")
    io.puts("15\n3 1 4 1 5 9 2 6 5 3 5 8 9 7 9\n")
    io.close_write
    expect(io.readlines.join).to eq("355\n")
  end

end
