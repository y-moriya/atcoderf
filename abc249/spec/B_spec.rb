RSpec.describe 'test' do
  it 'test with "AtCoder\n"' do
    io = IO.popen("ruby abc249/B.rb", "w+")
    io.puts("AtCoder\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "Aa\n"' do
    io = IO.popen("ruby abc249/B.rb", "w+")
    io.puts("Aa\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "atcoder\n"' do
    io = IO.popen("ruby abc249/B.rb", "w+")
    io.puts("atcoder\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "Perfect\n"' do
    io = IO.popen("ruby abc249/B.rb", "w+")
    io.puts("Perfect\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
