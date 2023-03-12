RSpec.describe 'test' do
  it 'test with "5\n3 1 4 1 5\n4\n1 5 1\n2 4 3\n1 5 2\n1 3 3\n"' do
    io = IO.popen("ruby abc248/D.rb", "w+")
    io.puts("5\n3 1 4 1 5\n4\n1 5 1\n2 4 3\n1 5 2\n1 3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n0\n0\n1\n")
  end

end
