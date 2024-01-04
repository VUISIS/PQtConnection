fun enhancement_test_1()
{
    var rA: Repeater;
    var conn: tConnection;
    var conns: seq[tConnection];

    rA = new Repeater((val = 0, name = "a"));

    conn = (machine1 = rA, machine2 = rA);
    conns += (0, conn);

    send rA, eSignalRetransmit, conns;
} 

fun enhancement_test_2() 
{

} 

fun enhancement_test_3() 
{

} 

fun enhancement_test_4() 
{

} 

fun enhancement_test_5() 
{

} 

fun enhancement_test_6() 
{

} 

fun enhancement_test_7() 
{

} 

fun enhancement_test_8() 
{

} 

fun enhancement_test_9() 
{

} 

fun enhancement_test_10() 
{

} 

fun enhancement_test_11() 
{

} 

fun expert_test_3()
{

} 

fun expert_test_5()
{

} 