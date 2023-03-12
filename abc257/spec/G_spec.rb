RSpec.describe 'test' do
  it 'test with "aba\nababaab\n"' do
    io = IO.popen("ruby abc257/G.rb", "w+")
    io.puts("aba\nababaab\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "atcoder\nac\n"' do
    io = IO.popen("ruby abc257/G.rb", "w+")
    io.puts("atcoder\nac\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
