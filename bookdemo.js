class Book
{
constructor(_bname,_pdate,_price)
{
    this._bname=_bname;
    this._pdate=_pdate;
    this._price=_price;
    console.log('para');
}
getdetails()
{
    return 'bokname:' +this._bname+ 'bookdate:' +this._pdate+ 'bokprice:'+this._price;

}
}
let bok1=new Book('santu','12jan',233);
console.log(bok1.getdetails());



