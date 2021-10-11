write-host -ForegroundColor DarkGreen "EHLO! Welcome to the SQL Quiz Bot!`n"

function quiz {
    # Q1
    $q1 = read-host -prompt "Q1: What does SQL stand for?`n
    A. Structured Question Language`n
    B. Structured Query Language`n
    C. Strong Question Language`n"
    if ($q1 -eq 'B') {
        # var not in use now. var created to use if I want the user to see which questions were correct/incorrect.
        $q1answ = write-host -ForegroundColor Green "Correct!`n"
        $cnt = 1
    } elseif (($q1 -eq 'A') -or ($q1 -eq 'C') ) {
        $q1answ = write-host -ForegroundColor Red "Incorrect.`n"
        $cnt = 0
    }
    # Q2
    $q2 = read-host -prompt "Which SQL statement is used to extract data from a database?`n
    A. SELECT`n
    B. EXTRACT`n
    C. GET`n
    D. OPEN`n"
    if ($q2 -eq 'A') {
        $q2answ = write-host -ForegroundColor Green "Correct!`n"
        $cnt++
    } elseif (($q2 -eq 'B') -or ($q2 -eq 'C') -or ($q2 -eq 'D')) {
        $q2answ = write-host -ForegroundColor Red "Incorrect.`n"
    }

    $elapsedTime = $(get-date) - $StartTime
    $totalTime = "{0:HH:mm:ss}" -f ([datetime]$elapsedTime.Ticks)
    $cnt = ($cnt / 2).tostring("P")
    write-host "Your score: ${cnt}`nTotal time: ${totalTime}"
}
$start = read-host -prompt "Press 1 to start the quiz"
if ($start = '1') {
    $StartTime = $(get-date)
    write-host "`n"
    quiz
}