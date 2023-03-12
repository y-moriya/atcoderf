RSpec.describe 'test' do
  it 'test with "4\n"' do
    io = IO.popen("ruby abc254/D.rb", "w+")
    io.puts("4\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "254\n"' do
    io = IO.popen("ruby abc254/D.rb", "w+")
    io.puts("254\n")
    io.close_write
    expect(io.readlines.join).to eq("896\n")
  end

end
