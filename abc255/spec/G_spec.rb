RSpec.describe 'test' do
  it 'test with "3 4\n1 2 4\n2 1\n3 3\n3 1\n1 1\n"' do
    io = IO.popen("ruby abc255/G.rb", "w+")
    io.puts("3 4\n1 2 4\n2 1\n3 3\n3 1\n1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("Takahashi\n")
  end

  it 'test with "1 5\n5\n5 1\n5 2\n5 3\n5 4\n5 5\n"' do
    io = IO.popen("ruby abc255/G.rb", "w+")
    io.puts("1 5\n5\n5 1\n5 2\n5 3\n5 4\n5 5\n")
    io.close_write
    expect(io.readlines.join).to eq("Aoki\n")
  end

end
