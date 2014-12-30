def eachSquare(array)
for member in array
 yield member*member
end
end

a=[1,2,3,4,5,6,7]


eachSquare(a) {|member| puts member}

