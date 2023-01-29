i = 5
i -= 1 if ENV["KID"]
exit if i < 0
def xo(file, str, i)
  # str を, 特定の文字を特定の文字列におきかえつつfileに出力
  str.chars.each{ |c|
  file.print case c.ord
    when 36;  10.chr
    when 64;  39.chr
    when 63;  "#{i}"
    when 94;  str
    else      c
    end
  }
end
FN = "Sully_#{i}.rb"
File.open(FN, "w"){|f|xo(f, 'i = ?$i -= 1 if ENV["KID"]$exit if i < 0$def xo(file, str, i)$  # str を, 特定の文字を特定の文字列におきかえつつfileに出力$  str.chars.each{ |c|$  file.print case c.ord$    when 36;  10.chr$    when 64;  39.chr$    when 63;  "#{i}"$    when 94;  str$    else      c$    end$  }$end$FN = "Sully_#{i}.rb"$File.open(FN, "w"){|f|xo(f, @^@, i)}$system "KID=1 ruby #{FN}"$', i)}
system "KID=1 ruby #{FN}"
