RSpec.describe 'test' do
  it 'test with "abc\n"' do
    io = IO.popen("ruby abc251/A.rb", "w+")
    io.puts("abc\n")
    io.close_write
    expect(io.readlines.join).to eq("abcabc\n")
  end

  it 'test with "zz\n"' do
    io = IO.popen("ruby abc251/A.rb", "w+")
    io.puts("zz\n")
    io.close_write
    expect(io.readlines.join).to eq("zzzzzz\n")
  end

end
