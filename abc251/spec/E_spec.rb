RSpec.describe 'test' do
  it 'test with "5\n2 5 3 2 5\n"' do
    io = IO.popen("ruby abc251/E.rb", "w+")
    io.puts("5\n2 5 3 2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "20\n29 27 79 27 30 4 93 89 44 88 70 75 96 3 78 39 97 12 53 62\n"' do
    io = IO.popen("ruby abc251/E.rb", "w+")
    io.puts("20\n29 27 79 27 30 4 93 89 44 88 70 75 96 3 78 39 97 12 53 62\n")
    io.close_write
    expect(io.readlines.join).to eq("426\n")
  end

end
