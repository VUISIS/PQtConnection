type tConnection = (machine1: Repeater, machine2: Repeater);

event eSignalRetransmit: seq[tConnection];
event eSignalIncrement;
event eSignalConditionalIncrement;
event eSignalFalseRetransmit: seq[tConnection];
event eSignalExternalRetransmit;
event eSignalSecondaryRetransmit;
event eSignalTertiaryRetransmit;

machine Repeater
{
  var internalValue: int;
  var internalName: string;
  start state Init 
  {
    entry (input: (val: int, name: string))
    {
      internalValue = input.val;
      internalName = input.name;

      goto Connected;
    }
  }

  state Connected
  {
    on eSignalRetransmit do (tConns: seq[tConnection])
    {
      SimpleRetransmit(tConns);
    }
  }

  fun SetValue(tConns: seq[tConnection])
  {
    
  }

  fun SimpleRetransmit(tConns: seq[tConnection])
  {
    var tConn: tConnection;
  
    foreach(tConn in tConns)
    {
      if(tConn.machine1 == this)
      {
        announce eSpec_Signal, tConn.machine2;
        send tConn.machine2, eSignalRetransmit, tConns;
      }
    }
    
    goto Connected;
  }

  fun SimpleIncrement(tConns: seq[tConnection])
  {

  }

  fun ConditionalIncrement(tConns: seq[tConnection])
  {
    
  }

  fun FalseRetransmit(tConns: seq[tConnection])
  {

  }

  fun EternalRetransmit(tConns: seq[tConnection])
  {

  }

  fun SecondaryRetransmit(tConns: seq[tConnection])
  {
    
  }

  fun TertiaryRetransmit(tConns: seq[tConnection])
  {
    
  }
}