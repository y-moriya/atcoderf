RSpec.describe 'test' do
  it 'test with "4\n1 2 4 3\n"' do
    io = IO.popen("ruby abc252/G.rb", "w+")
    io.puts("4\n1 2 4 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "8\n1 2 3 5 6 7 8 4\n"' do
    io = IO.popen("ruby abc252/G.rb", "w+")
    io.puts("8\n1 2 3 5 6 7 8 4\n")
    io.close_write
    expect(io.readlines.join).to eq("202\n")
  end

end
