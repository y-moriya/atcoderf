RSpec.describe 'test' do
  it 'test with "5\nnewfile\nnewfile\nnewfolder\nnewfile\nnewfolder\n"' do
    io = IO.popen("ruby abc261/C.rb", "w+")
    io.puts("5\nnewfile\nnewfile\nnewfolder\nnewfile\nnewfolder\n")
    io.close_write
    expect(io.readlines.join).to eq("newfile\nnewfile(1)\nnewfolder\nnewfile(2)\nnewfolder(1)\n")
  end

  it 'test with "11\na\na\na\na\na\na\na\na\na\na\na\n"' do
    io = IO.popen("ruby abc261/C.rb", "w+")
    io.puts("11\na\na\na\na\na\na\na\na\na\na\na\n")
    io.close_write
    expect(io.readlines.join).to eq("a\na(1)\na(2)\na(3)\na(4)\na(5)\na(6)\na(7)\na(8)\na(9)\na(10)\n")
  end

end
