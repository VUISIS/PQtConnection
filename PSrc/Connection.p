event eConnect;

machine Connection
{
  var objectA: Repeater;
  var objectB: Repeater;
  start state Init 
  {
    entry (input: (objA: Repeater, signal: event, objB: Repeater))
    {
        objectA = input.objA;
        objectB = input.objB;

        send objectA, eConnect;
        send objectB, eConnect;

        send objectB, input.signal; 
    }
  }
}