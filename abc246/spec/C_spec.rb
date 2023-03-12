RSpec.describe 'test' do
  it 'test with "5 4 7\n8 3 10 5 13\n"' do
    io = IO.popen("ruby abc246/C.rb", "w+")
    io.puts("5 4 7\n8 3 10 5 13\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

  it 'test with "5 100 7\n8 3 10 5 13\n"' do
    io = IO.popen("ruby abc246/C.rb", "w+")
    io.puts("5 100 7\n8 3 10 5 13\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "20 815 60\n2066 3193 2325 4030 3725 1669 1969 763 1653 159 5311 5341 4671 2374 4513 285 810 742 2981 202\n"' do
    io = IO.popen("ruby abc246/C.rb", "w+")
    io.puts("20 815 60\n2066 3193 2325 4030 3725 1669 1969 763 1653 159 5311 5341 4671 2374 4513 285 810 742 2981 202\n")
    io.close_write
    expect(io.readlines.join).to eq("112\n")
  end

end
