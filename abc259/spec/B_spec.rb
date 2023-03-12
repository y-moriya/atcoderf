RSpec.describe 'test' do
  it 'test with "2 2 180\n"' do
    io = IO.popen("ruby abc259/B.rb", "w+")
    io.puts("2 2 180\n")
    io.close_write
    expect(io.readlines.join).to eq("-2 -2\n")
  end

  it 'test with "5 0 120\n"' do
    io = IO.popen("ruby abc259/B.rb", "w+")
    io.puts("5 0 120\n")
    io.close_write
    expect(io.readlines.join).to eq("-2.5 4.33\n")
  end

  it 'test with "0 0 11\n"' do
    io = IO.popen("ruby abc259/B.rb", "w+")
    io.puts("0 0 11\n")
    io.close_write
    expect(io.readlines.join).to eq("0 0\n")
  end
end
