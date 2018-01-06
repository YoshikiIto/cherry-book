def to_hex(r, g, b)
    #'#' + r.to_s(16).rjust(2, '0') + g.to_s(16).rjust(2, '0') + b.to_s(16).rjust(2, '0')

    [r, g, b].reduce('#') do |hex, n|
        hex + n.to_s(16).rjust(2, '0')
    end
end

def to_ints(hexVal)
    r = hexVal[1..2]
    g = hexVal[3..4]
    b = hexVal[5..6]

    [r, g, b].map do |s|
        s.hex
    end
end

