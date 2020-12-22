
import 'dart:math';
import 'queue.dart';
import 'stack.dart';
import 'package:test/test.dart';


void main() {


Random random=Random();

//Tests done on queue operations 
group('Queue',(){
  MyQueue<int>myQueue=MyQueue();

  //test enqueue() operation
 test('enqueue() adds an item to end of the queue',(){
 
    int randomData=random.nextInt(100000);
    myQueue.enqueue(randomData);
    expect(myQueue.queueLength(),equals(1));

       });
   //test dequeue() operation
  test('dequeue()  removes an item from front of the queue',(){

    int randomData=random.nextInt(100000);
    myQueue.insertFrontQueue(randomData);
    expect(myQueue.dequeue(),equals(randomData));

      });

   //test isEmpty() operation
  test('isEmpty() Checks if the queue is empty',(){

    int randomData=random.nextInt(100000);
    myQueue.enqueue(randomData);
    expect(myQueue.isEmpty(),equals(false));

});
//test peek() operation
test('peek() gets the element at the front of the queue without removing it ',(){
    int randomData=random.nextInt(100000);
    myQueue.insertFrontQueue(randomData);
    expect(myQueue.peek(),equals(randomData));


});
//test queueLength() operation
test('queueLength() gets the size of the queue',(){
int randomData=random.nextInt(100000);
    for(int i=0;i<3;i++){
    myQueue.enqueue(randomData);}
    expect(myQueue.queueLength(),equals(6));

});


});
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Tests done on stack operations
group('Stack',(){
   MyStack<int>myStack=MyStack();


  
  //test push() operation
  test('push() adds an item to top of the stack',(){
    
    int randomData=random.nextInt(100000);
    myStack.push(randomData);
  expect(myStack.stackLength(),equals(1));
});

  //test pop() operation
  test('myStack.pop() removes top of the stack and returns it',(){
    int randomData=random.nextInt(100000);
    myStack.push(randomData);
  expect(myStack.pop(),equals(randomData));


  });
  //test isEmpty() operation
  test('isEmpty() Checks if the stack is empty.',(){
    int randomData=random.nextInt(100000);
    myStack.push(randomData);
    expect(myStack.isEmpty(),equals(false));

  });

//test peek() operation
  test('peek() gets the top element of the stack, without removing it',(){

    int randomData=random.nextInt(100000);
    myStack.push(randomData);
    expect(myStack.peek(),equals(randomData));

  });
//test stackLength() operation
  test('stackLength() gets the size of the stack',(){
    int randomData=random.nextInt(100000);
    for(int i=0;i<3;i++){
    myStack.push(randomData);}
    expect(myStack.stackLength(),equals(6));

  });


});

}