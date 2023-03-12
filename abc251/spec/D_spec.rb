RSpec.describe 'test' do
  it 'test with "6\n"' do
    io = IO.popen("ruby abc251/D.rb", "w+")
    io.puts("6\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n1 2 3\n")
  end

  it 'test with "12\n"' do
    io = IO.popen("ruby abc251/D.rb", "w+")
    io.puts("12\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n2 5 1 2 5 1\n")
  end

end
