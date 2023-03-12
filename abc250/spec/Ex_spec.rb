RSpec.describe 'test' do
  it 'test with "6 6 3\n1 4 1\n4 6 4\n2 5 2\n3 5 3\n5 6 5\n1 2 15\n3\n2 3 4\n2 3 5\n1 3 12\n"' do
    io = IO.popen("ruby abc250/Ex.rb", "w+")
    io.puts("6 6 3\n1 4 1\n4 6 4\n2 5 2\n3 5 3\n5 6 5\n1 2 15\n3\n2 3 4\n2 3 5\n1 3 12\n")
    io.close_write
    expect(io.readlines.join).to eq("No\nYes\nYes\n")
  end

end
