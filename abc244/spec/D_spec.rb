RSpec.describe 'test' do
  it 'test with "R G B\nR G B\n"' do
    io = IO.popen("ruby abc244/D.rb", "w+")
    io.puts("R G B\nR G B\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
