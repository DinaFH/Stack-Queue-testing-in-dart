class MyStack<T>{

List <T> stackList= List <T>(); 

//methods represents basic operations done on stacks:


//push() => add (store) an item to the stack.
void push( T x){
stackList.add(x);
}

//pop() => remove (access) top of the stack and returns it

T pop(){
 
 T element= stackList.last;
if(stackList.isEmpty){
return null;
}
else{
  stackList.removeLast();
  return element;
}

}

//isEmpty() =>Checks if the stack is empty.
bool isEmpty(){
return stackList.isEmpty;
}
//peek()=>get the top data element of the stack, without removing it.

T peek(){
if(stackList.isEmpty){
return null;}
else {
  return stackList.last;}
}

//stackLength()=> get the size of the stack
int stackLength(){
 return stackList.length;
}




//printStack() => print elements of the stack
void printStack(){

  print('Stack='+stackList.toString());
}
}