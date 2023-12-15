event eSignalRetransmit;
event eSignalIncrement;
event eSignalConditionalIncrement;
event eSignalFalseRetransmit: (num: int);
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
    }
    on eConnect goto Connected;
  }

  state Connected
  {
    on eSignalRetransmit goto SimpleRetransmit;
  }

  state SetValue
  {
    
  }

  state SimpleRetransmit
  {

  }

  state SimpleIncrement
  {

  }

  state ConditionalIncrement
  {
    
  }

  state FalseRetransmit
  {

  }

  state EternalRetransmit
  {

  }

  state SecondaryRetransmit
  {
    
  }

  state TertiaryRetransmit
  {
    
  }
}