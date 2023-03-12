RSpec.describe 'test' do
  it 'test with "2 3 4\n"' do
    io = IO.popen("ruby abc260/C.rb", "w+")
    io.puts("2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

  it 'test with "1 5 5\n"' do
    io = IO.popen("ruby abc260/C.rb", "w+")
    io.puts("1 5 5\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10 5 5\n"' do
    io = IO.popen("ruby abc260/C.rb", "w+")
    io.puts("10 5 5\n")
    io.close_write
    expect(io.readlines.join).to eq("3942349900\n")
  end

end
