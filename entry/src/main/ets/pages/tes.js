var Person = /** @class */ (function () {
    function Person(age) {
        this.age = age;
    }
    Person.prototype.sayHello = function () {
    };
    return Person;
}());
var p = new Person(11);
console.log(p.age.toString());
var p1 = { age: 22, sayHello: function () { } };
console.log(p1.age.toString());
Row();
