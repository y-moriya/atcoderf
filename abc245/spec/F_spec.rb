RSpec.describe 'test' do
  it 'test with "5 5\n1 2\n2 3\n3 4\n4 2\n4 5\n"' do
    io = IO.popen("ruby abc245/F.rb", "w+")
    io.puts("5 5\n1 2\n2 3\n3 4\n4 2\n4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "3 2\n1 2\n2 1\n"' do
    io = IO.popen("ruby abc245/F.rb", "w+")
    io.puts("3 2\n1 2\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

end
