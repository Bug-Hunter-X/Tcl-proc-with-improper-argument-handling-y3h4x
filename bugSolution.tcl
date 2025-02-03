proc correct_proc {a b} {
  if {[string is double -strict $a] && [string is double -strict $b]} {
    puts "[expr {$a + $b}]"
  } else {
    puts "Error: Arguments must be numbers"
  }
  return
}
correct_proc 1 2
correct_proc a 2

proc correct_proc2 {a b} {
    catch {expr {$a + $b}} result
    if {$result eq ""} {
        puts "Error: Invalid input for addition operation"
    } else {
        puts $result
    }
}
correct_proc2 1 2
correct_proc2 a 2