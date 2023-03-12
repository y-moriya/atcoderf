RSpec.describe 'test' do
  it 'test with "2 3\n--o\no--\n"' do
    io = IO.popen("ruby abc253/B.rb", "w+")
    io.puts("2 3\n--o\no--\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "5 4\n-o--\n----\n----\n----\n-o--\n"' do
    io = IO.popen("ruby abc253/B.rb", "w+")
    io.puts("5 4\n-o--\n----\n----\n----\n-o--\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
