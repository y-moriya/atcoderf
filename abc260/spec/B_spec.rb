RSpec.describe 'test' do
  it 'test with "6 1 0 2\n80 60 80 60 70 70\n40 20 50 90 90 80\n"' do
    io = IO.popen("ruby abc260/B.rb", "w+")
    io.puts("6 1 0 2\n80 60 80 60 70 70\n40 20 50 90 90 80\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n4\n5\n")
  end

  it 'test with "5 2 1 2\n0 100 0 100 0\n0 0 100 100 0\n"' do
    io = IO.popen("ruby abc260/B.rb", "w+")
    io.puts("5 2 1 2\n0 100 0 100 0\n0 0 100 100 0\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n3\n4\n5\n")
  end

  it 'test with "15 4 3 2\n30 65 20 95 100 45 70 85 20 35 95 50 40 15 85\n0 25 45 35 65 70 80 90 40 55 20 20 45 75 100\n"' do
    io = IO.popen("ruby abc260/B.rb", "w+")
    io.puts("15 4 3 2\n30 65 20 95 100 45 70 85 20 35 95 50 40 15 85\n0 25 45 35 65 70 80 90 40 55 20 20 45 75 100\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n4\n5\n6\n7\n8\n11\n14\n15\n")
  end

end
