def xo(str)
  # str を, 特定の文字を特定の文字列におきかえつつ出力
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
# main という概念がないのでコメントはここに置いとくね？
xo("def xo(str)$  # str を, 特定の文字を特定の文字列におきかえつつ出力$  str.chars.each{ |c|$    case c.ord$    when 36$      print 10.chr$    when 64$      print 34.chr$    when 94$      print str$    else$      print c$    end$  }$end$# main という概念がないのでコメントはここに置いとくね？$xo(@^@)$")
