import 'package:dump/resources/widgets/global_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FAQsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: setDumpAppBar(context, 'FAQs'),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          '''
For first-time users:

Welcome to dump! We are so excited to help you sell your books and we've made it super easy for you to do so by putting everything you need in one place. If you'd like information on how to sell your books:

Pricing:

How are my books priced?

Pricing is based on the book’s future value, its popularity, the current demand, and the number of copies of the book bookcover.com currently has in stock. So each ISBN pricing is calculated using the above factors.

How long is the price quote good for?

The pricing of the books is dynamic, it changes with time and demand. So we request you to send the parcel as soon as possible after getting the quote.

Is the condition of the book a factor for price calculations?

We do not ask about the condition of the books from sellers. Although, we assume that the books mentioned should be reselling. Conditions is not taken into consideration while calculating the price of the books.

I still have questions about my book’s price.

We request you kindly get in touch with our support team for any further assistance.

Listing my books?

What is an ISBN? An ISBN is a 10-digit or 13-digit number code that helps to identify the specific book, author(s), and edition. You can find the ISBN on the back cover of the book immediately above or near the barcode and/or on the copyright page. For Loose-leaf books only use the ISBN located on the barcode on the front or back book cover. Warning! If there is a sticker over the back cover of the book, use the printed ISBN on the copyright page.

What if there are more than one ISBN?

Make sure to select the ISBN that most accurately describes your book. For example, for a hardcover book, select the ISBN that says [hardcover] in brackets, or if it’s a paperback book, select the ISBN that says [pbk.] or [paperback]. Use the “package” ISBN if your book includes all the original, supplemental materials such as unused access codes, CDs, or DVDs. Warning! If there is a sticker over the back cover of the book, use the printed ISBN on the copyright page.

Can I look up multiple ISBNs at one time? No, You can search only 1 ISBN at a time.

No data for the entered ISBN? We have a very big books database that covers nearly all ISBNs, but in case the information is not available to us, you need to provide us with the correct ISBN. The details will include basic information like Title, author, publisher, etc.

What is the minimum number of books to sell on the Dump app? Yes, you need to sell a minimum of 7 books or total amount have to Rs 70 to arrange a pickup. All these books should comply with the bookselling condition.

The system is asking for weight, but I don't have a weighing scale at home. You do not need to worry about weighing your books if you don't have a weighing scale. You can sum up the total number of pages in all the books you are selling. The system will automatically calculate the weight of the books.
   
For example: Book 1: 400 Pages Book 2: 100 Pages Book 3: 50 Pages Book 4: 100 Pages Book 5: 150 Pages Book 6: 200 Pages Book 7: 300 Pages 
  
Total: 1300 Pages Enter 1300 pages and the system will calculate the weight of the parcel. 

Packing Your Books. How do I pack my books? Packaging your books correctly is critical to receiving the price you were offered. It is very important to package your books correctly to protect them against shipping damage. You can pack your books in a sturdy box, in courier bags with proper protection.
Note: You need to take print of the shipping label and recheck the address and PIN code.
 
What if I included books that are not on the sold list? Please contact Customer Service.
 
What if I didn't include some books on the packaging slip? Don't worry about it! Once your package(s) arrives at the bookchor facilities, they will analyze the contents and issue payment for the books they have received. There might be some deduction of shipping cost as the parcel will not qualify for a minimum number of selling books.
              
Shipping:
 
Do I have to pay for shipping? We have free home pickup for the PINCODE serviceable by Bookchor delivery team.    

For rest of India shipping is FREE with our prepaid shipping label. However, if your package does not use our label and/or use a different carrier, you are responsible for the shipping costs.
              
How long do I have to ship my books after I place my order? Your parcel should be ready by the date and time of pickup generated.
 
What if I haven't shipped my books on the day of pickup? We allow rescheduling of the parcel 24 hours before the pickup date and time. Although if parcels are not ready by that time, any extra courier cost will be adjusted to your payment.
               
What if my books are lost during transit? Please contact the shipping carrier and file a claim.
         
If I am unable to print the shipping label from my computer, what do I do? Contact customer service, we can email the shipping label to you.         
       
How do I track my package? Log into your Dump app & go to pickup to track the package.       
         
How do I track my package? Log into your Dump app & go to pickup to track the package.         
         
Payment

How do I get paid?
You will be paid in the selected payment mode either Bookchor Pay or in UPI. When will I get paid? Upon receiving the parcel we will do the quality check, once the process gets over, the payment will be released.

Other important questions

What is the maximum quantity I can sell? There is no maximum quantity limit as such. But if you wish to sell books in 100s or 1000s, you can opt for the bulk books selling option, our team will assist you with further instructions.I am a regular bulk book accepter? You can attach your Bookchor account (or the same mobile number) with dump account. Do you buy large quantities of books? Please contact customer service at cs@bookchor.com for bulk book sales.International customers: We are sorry, currently our service is only for India. Can I sell school textbooks & workbooks? No, we do not accept school textbooks and workbooks. What kind of books do you buy? We buy legally obtained books with an ISBN. I do not want to sell my books, can I donate them? Yes, you can donate your books. They will definitely help the needy. If I donate my books, how will I make sure they are utilized? Your books are sent to several NGO tie-ups to whom we provide the stuff as per their requirements. Normally NGO do not use fiction & non-fiction books, as they cater to very early readers. So we feel the donated books and the earnings after expenses deduction is utilized for NGO work.         
 
Accepted Books Category:

1. Novel, Story books, Picture books
2. Reference Books
3. College Textbooks are accepted (We are not accepting open university books, Notes, worksheets, loose bound papers etc.)
4. Coffee Table books' 

Books which will not be accepted:

1. School specific text books, Work books, Class Notes etc
2. Open university books
3. Competitive exam notes from exam preparation institutions (example: Akash, Fitjee etc)
4. Open schooling and universities (Commonwealth Of Learning (COL), State Open Universities (SOUs), Indira Gandhi National Open University (IGNOU)) etc       ''',
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}
