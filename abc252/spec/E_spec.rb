RSpec.describe 'test' do
  it 'test with "3 3\n1 2 1\n2 3 2\n1 3 10\n"' do
    io = IO.popen("ruby abc252/E.rb", "w+")
    io.puts("3 3\n1 2 1\n2 3 2\n1 3 10\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2\n")
  end

  it 'test with "4 6\n1 2 1\n1 3 1\n1 4 1\n2 3 1\n2 4 1\n3 4 1\n"' do
    io = IO.popen("ruby abc252/E.rb", "w+")
    io.puts("4 6\n1 2 1\n1 3 1\n1 4 1\n2 3 1\n2 4 1\n3 4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("3 1 2\n")
  end

end
