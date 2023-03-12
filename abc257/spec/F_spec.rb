RSpec.describe 'test' do
  it 'test with "3 2\n0 2\n1 2\n"' do
    io = IO.popen("ruby abc257/F.rb", "w+")
    io.puts("3 2\n0 2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("-1 -1 2\n")
  end

  it 'test with "5 5\n1 2\n1 3\n3 4\n4 5\n0 2\n"' do
    io = IO.popen("ruby abc257/F.rb", "w+")
    io.puts("5 5\n1 2\n1 3\n3 4\n4 5\n0 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3 3 3 3 2\n")
  end

end
