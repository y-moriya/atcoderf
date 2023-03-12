RSpec.describe 'test' do
  it 'test with "8\n0 3 2 6 2 1 0 0\n"' do
    io = IO.popen("ruby abc245/B.rb", "w+")
    io.puts("8\n0 3 2 6 2 1 0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "3\n2000 2000 2000\n"' do
    io = IO.popen("ruby abc245/B.rb", "w+")
    io.puts("3\n2000 2000 2000\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
