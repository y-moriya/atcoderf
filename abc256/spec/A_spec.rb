RSpec.describe 'test' do
  it 'test with "3\n"' do
    io = IO.popen("ruby abc256/A.rb", "w+")
    io.puts("3\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "30\n"' do
    io = IO.popen("ruby abc256/A.rb", "w+")
    io.puts("30\n")
    io.close_write
    expect(io.readlines.join).to eq("1073741824\n")
  end

end
