event eSpec_Signal: Repeater;

spec Acyclic observes eSpec_Signal
{
  var prevRepeater: Repeater;
  start state Init 
  {
    on eSpec_Signal do (rep: Repeater) 
    {
      if(prevRepeater == rep)
      {
        goto Cycle;
      }
      prevRepeater = rep;
    }
  }

  hot state Cycle 
  {
    on eSpec_Signal do (rep: Repeater) 
    {
      if(rep != prevRepeater)
      {
        prevRepeater = rep;
        goto Init;
      }
    }
  }
}
