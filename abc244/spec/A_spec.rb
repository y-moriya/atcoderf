RSpec.describe 'test' do
  it 'test with "5\nabcde\n"' do
    io = IO.popen("ruby abc244/A.rb", "w+")
    io.puts("5\nabcde\n")
    io.close_write
    expect(io.readlines.join).to eq("e\n")
  end

  it 'test with "1\na\n"' do
    io = IO.popen("ruby abc244/A.rb", "w+")
    io.puts("1\na\n")
    io.close_write
    expect(io.readlines.join).to eq("a\n")
  end

end
