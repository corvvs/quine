def xo(str)
  # str を, 特定の文字を特定の文字列におきかえつつ出力
  str.chars.each{ |c|
  print case c.ord
    when 36;  10.chr
    when 64;  34.chr
    when 94;  str
    else      c
    end
  }
end
# main という概念がないのでコメントはここに置いとくね？
xo("def xo(str)$  # str を, 特定の文字を特定の文字列におきかえつつ出力$  str.chars.each{ |c|$  print case c.ord$    when 36;  10.chr$    when 64;  34.chr$    when 94;  str$    else      c$    end$  }$end$# main という概念がないのでコメントはここに置いとくね？$xo(@^@)$")
