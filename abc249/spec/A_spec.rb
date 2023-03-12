RSpec.describe 'test' do
  it 'test with "4 3 3 6 2 5 10\n"' do
    io = IO.popen("ruby abc249/A.rb", "w+")
    io.puts("4 3 3 6 2 5 10\n")
    io.close_write
    expect(io.readlines.join).to eq("Takahashi\n")
  end

  it 'test with "3 1 4 1 5 9 2\n"' do
    io = IO.popen("ruby abc249/A.rb", "w+")
    io.puts("3 1 4 1 5 9 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Aoki\n")
  end

  it 'test with "1 1 1 1 1 1 1\n"' do
    io = IO.popen("ruby abc249/A.rb", "w+")
    io.puts("1 1 1 1 1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("Draw\n")
  end

end
