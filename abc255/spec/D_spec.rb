RSpec.describe 'test' do
  it 'test with "5 3\n6 11 2 5 5\n5\n20\n0\n"' do
    io = IO.popen("ruby abc255/D.rb", "w+")
    io.puts("5 3\n6 11 2 5 5\n5\n20\n0\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n71\n29\n")
  end

  it 'test with "10 5\n1000000000 314159265 271828182 141421356 161803398 0 777777777 255255255 536870912 998244353\n555555555\n321654987\n1000000000\n789456123\n0\n"' do
    io = IO.popen("ruby abc255/D.rb", "w+")
    io.puts("10 5\n1000000000 314159265 271828182 141421356 161803398 0 777777777 255255255 536870912 998244353\n555555555\n321654987\n1000000000\n789456123\n0\n")
    io.close_write
    expect(io.readlines.join).to eq("3316905982\n2811735560\n5542639502\n4275864946\n4457360498\n")
  end

end
