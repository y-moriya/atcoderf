RSpec.describe 'test' do
  it 'test with "pop\n"' do
    io = IO.popen("ruby abc260/A.rb", "w+")
    io.puts("pop\n")
    io.close_write
    expect(io.readlines.join).to eq("o\n")
  end

  it 'test with "abc\n"' do
    io = IO.popen("ruby abc260/A.rb", "w+")
    io.puts("abc\n")
    io.close_write
    expect(io.readlines.join).to eq("a\n")
  end

  it 'test with "xxx\n"' do
    io = IO.popen("ruby abc260/A.rb", "w+")
    io.puts("xxx\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
