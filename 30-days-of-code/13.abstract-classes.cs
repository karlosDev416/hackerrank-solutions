//Write MyBook class
class MyBook:Book {
    //   Class Constructor
    //   
    //   Parameters:
    //   title - The book's title.
    //   author - The book's author.
    //   price - The book's price.
    //
    // Write your constructor here
    protected int price;
    public MyBook(String title, String author, int price) : base(title, author) {
        this.price = price;
    }
    
    //   Function Name: display
    //   Print the title, author, and price in the specified format.
    //
    // Write your method here
    public override void display() {
        Console.WriteLine("Title: {0} \nAuthor: {1} \nPrice: {2}", title, author, price);
    }
    
};
// End class

class Book{
    protected:
        string title;
        string author;
    public:
        Book(string t,string a){
            title=t;
            author=a;
        }
        virtual void display()=0;

};