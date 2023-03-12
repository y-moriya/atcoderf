RSpec.describe 'test' do
  it 'test with "3 2\n1 2\n2 3\n"' do
    io = IO.popen("ruby abc244/F.rb", "w+")
    io.puts("3 2\n1 2\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("14\n")
  end

  it 'test with "5 5\n4 2\n2 3\n1 3\n2 1\n1 5\n"' do
    io = IO.popen("ruby abc244/F.rb", "w+")
    io.puts("5 5\n4 2\n2 3\n1 3\n2 1\n1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("108\n")
  end

end
