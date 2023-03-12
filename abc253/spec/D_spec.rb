RSpec.describe 'test' do
  it 'test with "10 3 5\n"' do
    io = IO.popen("ruby abc253/D.rb", "w+")
    io.puts("10 3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("22\n")
  end

  it 'test with "1000000000 314 159\n"' do
    io = IO.popen("ruby abc253/D.rb", "w+")
    io.puts("1000000000 314 159\n")
    io.close_write
    expect(io.readlines.join).to eq("495273003954006262\n")
  end

end
