 class Person{
  age:Number

  constructor(age:Number){
    this.age=age
  }

   sayHello(){


   }
}

let p=new Person(11)
console.log(p.age.toString())

let p1:Person={age:22,sayHello():void{}}
console.log(p1.age.toString())

interface IPerson{
  (v:Number):void
}



interface RowInterface {
  (value?: {
    space?: string | number;
  }): Person;
}

declare const Row: RowInterface;

Row()


