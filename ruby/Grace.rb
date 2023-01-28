def xo(file, str)
  # str を, 特定の文字を特定の文字列におきかえつつfileに出力
  str.chars.each{ |c|
  file.print case c.ord
    when 36;  10.chr
    when 64;  34.chr
    when 94;  str
    else      c
    end
  }
end
xo(File.open('Grace_kid.rb', 'w'), "def xo(file, str)$  # str を, 特定の文字を特定の文字列におきかえつつfileに出力$  str.chars.each{ |c|$  file.print case c.ord$    when 36;  10.chr$    when 64;  34.chr$    when 94;  str$    else      c$    end$  }$end$xo(File.open('Grace_kid.rb', 'w'), @^@)")