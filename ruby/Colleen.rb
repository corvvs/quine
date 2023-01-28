def xo(str)
  str.chars.each{ |c|
    case c.ord
    when 36
      print 10.chr
    when 64
      print 34.chr
    when 94
      print str
    else
      print c
    end
  }
end
xo("def xo(str)$  str.chars.each{ |c|$    case c.ord$    when 36$      print 10.chr$    when 64$      print 34.chr$    when 94$      print str$    else$      print c$    end$  }$end$xo(@^@)$")
