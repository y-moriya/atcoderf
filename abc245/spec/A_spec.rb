RSpec.describe 'test' do
  it 'test with "7 0 6 30\n"' do
    io = IO.popen("ruby abc245/A.rb", "w+")
    io.puts("7 0 6 30\n")
    io.close_write
    expect(io.readlines.join).to eq("Aoki\n")
  end

  it 'test with "7 30 7 30\n"' do
    io = IO.popen("ruby abc245/A.rb", "w+")
    io.puts("7 30 7 30\n")
    io.close_write
    expect(io.readlines.join).to eq("Takahashi\n")
  end

  it 'test with "0 0 23 59\n"' do
    io = IO.popen("ruby abc245/A.rb", "w+")
    io.puts("0 0 23 59\n")
    io.close_write
    expect(io.readlines.join).to eq("Takahashi\n")
  end

end
