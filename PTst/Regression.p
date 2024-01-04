fun regression_test_4() 
{
    var rA: Repeater;
    var rB: Repeater;
    var conn: tConnection;
    var conns: seq[tConnection];

    rA = new Repeater((val = 0, name = "a"));
    rB = new Repeater((val = 1, name = "b"));

    conn = (machine1 = rA, machine2 = rB);
    conns += (0, conn);

    send rB, eSignalRetransmit, conns;
} 

fun regression_test_5() 
{

} 

fun regression_test_6() 
{

} 

fun regression_test_7() 
{

} 

fun regression_test_8() 
{

} 

fun regression_test_9() 
{

} 

fun regression_test_10() 
{

} 

fun regression_test_11() 
{

} 

fun expert_test_1()
{

} 

fun expert_test_2()
{

} 

fun expert_test_4()
{
  
}