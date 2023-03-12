RSpec.describe 'test' do
  it 'test with "3 2\n1 2\n2 3\n"' do
    io = IO.popen("ruby abc253/Ex.rb", "w+")
    io.puts("3 2\n1 2\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n499122177\n")
  end

  it 'test with "4 5\n1 2\n1 2\n1 4\n2 3\n2 4\n"' do
    io = IO.popen("ruby abc253/Ex.rb", "w+")
    io.puts("4 5\n1 2\n1 2\n1 4\n2 3\n2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n758665709\n918384805\n")
  end

end
