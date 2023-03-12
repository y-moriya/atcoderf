RSpec.describe 'test' do
  it 'test with "-1 -1\n-1 2\n3 2\n"' do
    io = IO.popen("ruby abc246/A.rb", "w+")
    io.puts("-1 -1\n-1 2\n3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3 -1\n")
  end

  it 'test with "-60 -40\n-60 -80\n-20 -80\n"' do
    io = IO.popen("ruby abc246/A.rb", "w+")
    io.puts("-60 -40\n-60 -80\n-20 -80\n")
    io.close_write
    expect(io.readlines.join).to eq("-20 -40\n")
  end

end
