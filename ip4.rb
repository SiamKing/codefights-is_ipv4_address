def isIPv4Address(str)
    i = 0
    arr = str.split('.')
    return false if arr.any? {|n| n == ''} || arr.length != 4

    while i < arr.length
        return false if arr[i].to_i < 0 || arr[i].to_i > 255 || arr[i].to_i.to_s != arr[i]
        i += 1
    end
    true
end
