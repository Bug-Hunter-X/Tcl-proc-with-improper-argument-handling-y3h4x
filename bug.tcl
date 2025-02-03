proc wrong_proc {a b} { puts "[expr {$a + $b}]"; return } 
wrong_proc 1 2
wrong_proc a 2