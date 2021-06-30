class Employee
{
    constructor(_firstname,_lastname,_id,_email)
    {
        this._firstname=_firstname;
        this._lastname=_lastname;
        this._id=_id;
        this._email=_email;
        console.log('parame cons');

    }
    getdetails()
    {
        return 'name :' +this._firstname+'lname:' +this._lastname+ 'eid:' +this._id+ 'emial:'+this._email;

    }
}

let emp1=new Employee('santu','kumar',200,'san@email.com');
console.log(emp1.getdetails());
let emp2=new Employee('sujji','ling',204,'suji@2email.com');
console.log(emp2.getdetails());