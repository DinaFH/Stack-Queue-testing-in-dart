
class MyQueue<T>{

List <T> queueList= List <T>(); 

//methods represents basic operations done on queues:

//enqueue() => add (store) an item to end the queue.

void enqueue( T x){

queueList.add(x);

}
//dequeue() => remove (access) an item from front of the queue.

T dequeue(){
 
 T element= queueList.first;
if(queueList.isEmpty){
return null;
}
else{
   T element= queueList.first;
  queueList.removeAt(0);
  return element;
}


}
//isEmpty() =>Checks if the queue is empty.
bool isEmpty(){
return queueList.isEmpty;
}

//peek() => gets the element at the front of the queue without removing it   
T peek(){
if(queueList.isEmpty){
return null;}
else {
  return queueList.first;}
}

//queueLength()=> get the size of the queue
int queueLength(){
 return queueList.length;
}

/////////////////////////////////////////////////////////////////////////////

//helpful methods :

//printQueue() => print elements of the queue.
void printQueue(){

  print('Queue='+queueList.toString());
}

//insertFrontQueue()=> insert element at position zero // just to use in testing peek() & dequeue()
void insertFrontQueue(T x){

  queueList.insert(0, x);
}






}


















