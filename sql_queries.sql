CREATE TABLE exam(
	exercise TEXT NOT NULL,
	answer1 TEXT NOT NULL,
	answer2 TEXT NOT NULL,
	answer3 TEXT NOT NULL,
	answer4 TEXT NOT NULL,
	answer5 TEXT NOT NULL,
	answer6 TEXT NOT NULL,
	answer7 TEXT NOT NULL,
	answer8 TEXT NOT NULL,
	answer9 TEXT NOT NULL,
	answer10 TEXT NOT NULL
);

insert into exam (exercise,answer1,answer2,answer3,answer4,answer5,answer6,answer7,answer8,answer9,answer10) values ('Συμπληρώστε τα κενά σύμφωνα με τα σχόλια του κώδικα.
<br>
<figure>
  <figcaption>Τελική άσκηση</figcaption>
  <pre>
    <code>
		public class MyClass {
			//δημιούργησε μια μέθοδο που να επιστρέφει αληθής ή ψευδής τιμές με μια μεταβλητή τύπου int
			static <input type="text" name="answer1"> checkAge(<input type="text" name="answer2"> age){
				//αν η μεταβλητή age είναι μεγαλύτερη ή ίση από 18
				<input type="text" name="answer3"> (<input type="text" name="answer4"> <input type="text" name="answer5"> 18){
					//θα εκτυπώνεται η ηλικία
					<input type="text" name="answer6">(age);
					//θα επιστρέφεται η τιμή αληθής
					<input type="text" name="answer7"> true;
				}
				else
					return false;
			}
			
			public static void main(<input type="text" name="answer8">) {
				int myAge = 22;
				/* καλέστε την μέθοδο checkAge και περάστε την μεταβλητή myAge 
				και εκχωρήστε το αποτέλεσμα σε μια άλλη μεταβλητή */
				<input type="text" name="answer9"> aboveLimit = checkAge(<input type="text" name="answer10">);
			}
		}
	</code>
  </pre>
</figure>
<br>','boolean','int','if','age','>=','System.out.println','return','String[] args','boolean','myAge');

insert into exam (exercise,answer1,answer2,answer3,answer4,answer5,answer6,answer7,answer8,answer9,answer10) values ('Συμπληρώστε τα κενά σύμφωνα με τα σχόλια του κώδικα.
<br>
<figure>
  <figcaption>Τελική άσκηση</figcaption>
  <pre>
    <code>
		public class MyClass {			
			public static void main(String[] args) {
				//δημιουργήστε έναν δισδιάστατο πίνακα με τον σωστό τύπο σύμφωνα με τις εκχωρημένες τιμές του 
				<input type="text" name="answer11"> myNumbers = {{1,2},{3,4}};
				/* δημιουργήστε έναν βρόγχο for με σωστές δηλώσεις, 
				όπου να εκτελείται για το μήκος του πίνακα και να έχει βήμα 1 */
				for (int i = 0; i < myNumbers.<input type="text" name="answer12">; i<input type="text" name="answer13">){
					/*δημιουργήστε έναν εμφωλευμένο βρόγχο for  που να τρέχει
					για το μήκος του κάθε υποπίνακα */
					<input type="text" name="answer14">(int j = 0; myNumbers<input type="text" name="answer15">.length; j++){
						//θα εκτυπώνει την τιμή του πίνακα στο συγκεκριμένο σημείο
						System.out.println(myNumbers[<input type="text" name="answer16">][<input type="text" name="answer17">])
					}
				}
				
				int[] nums = {1,2,3,4,5};
				//δημιουργήστε έναν βρόγχο for... each που να εκτυπώνει όλα τα στοιχεία του πίνακα nums
				for (<input type="text" name="answer18"> n <input type="text" name="answer18"> nums){
					<input type="text" name="answer20">(n);
				}
			}
		}
	</code>
  </pre>
</figure>
<br>','int[][]','length','++','for','[i]','i','j','int',':','System.out.println');

create table statistics (
	u_email TEXT NOT NULL PRIMARY KEY,
	score1 TEXT NOT NULL,
	score2 TEXT NOT NULL,
	scoref TEXT NOT NULL,
	FOREIGN KEY(u_email) references users(u_email)
);
create table users(
u_name TEXT NOT NULL,
u_email TEXT NOT NULL PRIMARY KEY,
u_pass TEXT NOT NULL,
chapter TEXT NOT NULL,
page TEXT NOT NULL,
test TEXT NOT NULL,
cur_chapter TEXT NOT NULL,
cur_page TEXT NOT NULL
);

create table mooc_info (
id INTEGER NOT NULL PRIMARY KEY,
name TEXT NOT NULL,
n_chapters TEXT NOT NULL
);

insert into mooc_info values(1,'Java Tutorial','19');

CREATE TABLE weekly(
	u_email TEXT NOT NULL,
	weekofyear int NOT NULL,
	counter int NOT NULL
);

insert into weekly (u_email,weekofyear,counter) values ('pete@mail.com',25,'1');

CREATE TABLE monthly(
	u_email TEXT NOT NULL,
	counter1 int NOT NULL,
	counter2 int NOT NULL,
	counter3 int NOT NULL,
	counter4 int NOT NULL,
	counter5 int NOT NULL,
	counter6 int NOT NULL,
	counter7 int NOT NULL,
	counter8 int NOT NULL,
	counter9 int NOT NULL,
	counter10 int NOT NULL,
	counter11 int NOT NULL,
	counter12 int NOT NULL
);

insert into monthly (u_email,counter1,counter2,counter3,counter4,counter5,counter6,counter7,counter8,counter9,counter10,counter11,counter12) values ('pete@mail.com','0','0','0','0','0','1','0','0','0','0','0','0');


CREATE TABLE chapter8(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL,
	page2 TEXT NOT NULL,
	page3 TEXT NOT NULL
);

insert into chapter8 (pages,page1,page2,page3) values('3','<h3><b>Κεφάλαιο 8 - Operators</b></h3>
<h4><i>Java Operators</i></h4>
Οι operators χρησιμοποιούνται για την εκτέλεση εργασιών σε μεταβλητές και τιμές.
<br>
Η τιμή ονομάζεται operand, ενώ η λειτουργία (που πρέπει να πραγματοποιηθεί μεταξύ των δύο τελεστών) ορίζεται από έναν operator:
<br>
Στο παρακάτω παράδειγμα, οι αριθμοί 100 και 50 είναι operands και το σύμβολο + είναι operator:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		int x = 100 + 50;
	</code>
  </pre>
</figure><br>

Παρόλο που ο operator ‘+’ χρησιμοποιείται συχνά για να προσθέσει δύο τιμές, όπως στο παραπάνω παράδειγμα, μπορεί επίσης να χρησιμοποιηθεί για να προσθέσει μαζί μια μεταβλητή και μία τιμή ή μια μεταβλητή και μια άλλη μεταβλητή:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		int sum1 = 100 + 50;        // 150 (100 + 50)
		int sum2 = sum1 + 250;      // 400 (150 + 250)
		int sum3 = sum2 + sum2;     // 800 (400 + 400)
	</code>
  </pre>
</figure><br>

Η Java διαιρεί τους operators στις ακόλουθες ομάδες:<ul>
<li>Αριθμητικοί operators</li>
<li>Εκχωρητικοί operators</li>
<li>Συγκριτικοί operators</li>
<li>Λογικοί operators</li>
<li>Bitwise operators</li>
</ul><br>
<small>σελίδα 1</small>','<h3><b>Κεφάλαιο 8 - Operators</b></h3>
<h4><i>Αριθμητικοί operators</i></h4>
Οι αριθμητικοί operators χρησιμοποιούνται για την εκτέλεση κοινών μαθηματικών πράξεων.
<table>
  <tr>
    <th>Σύμβολο χειριστή</th>
    <th>Περιγραφή</th>
    <th>Παράδειγμα</th>
  </tr>
  <tr>
    <td>+</td>
    <td>Πρόσθεση</td>
    <td>Προσθέτει δύο τιμές x + y</td>
  </tr>
  <tr>
    <td>-</td>
    <td>Αφαίρεση</td>
    <td>Αφαιρεί μία τιμή από άλλη x - y</td>
  </tr>
  <tr>
    <td>*</td>
    <td>Πολλαπλασιασμός</td>
    <td>πολλαπλασιάζει δύο τιμές x * y</td>
  </tr>
  <tr>
    <td>/</td>
    <td>Διαίρεση</td>
    <td>Διαιρεί μία τιμή από άλλη x / y</td>
  </tr>
  <tr>
    <td>%</td>
    <td>Modulus</td>
    <td>Επιστρέφει το υπόλοιπο διαίρεσης x% y</td>
  </tr>
  <tr>
    <td>++</td>
    <td>Increment</td>
    <td>Αυξάνει την τιμή μιας μεταβλητής κατά 1 ++ x</td>
  </tr>
  <tr>
    <td>--</td>
    <td>Decrement</td>
    <td>Μειώνει την τιμή μιας μεταβλητής κατά 1 – x</td>
  </tr>
</table>
<h5><i>Java Assignment Operators</i></h5>
Οι τελεστές εκχώρησης χρησιμοποιούνται για την εκχώρηση τιμών σε μεταβλητές.
Στο παρακάτω παράδειγμα, χρησιμοποιούμε τον τελεστή εκχώρησης (=) για να εκχωρήσουμε την τιμή 10 σε μια μεταβλητή που ονομάζεται x:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		int x = 10;
	</code>
  </pre>
</figure><br>
Ο χειριστής εκχώρησης πρόσθεσης (+ =) προσθέτει μια τιμή σε μια μεταβλητή:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		int x = 10;
		x += 5;
	</code>
  </pre>
</figure><br>
Λίστα όλων των χειριστών εκχώρησης:
<table>
  <tr>
    <th>Operator</th>
    <th>Παράδειγμα</th>
    <th>Όμοιο με</th>
  </tr>
  <tr>
    <td>=</td>
    <td>x = 5</td>
    <td>x = 5</td>
  </tr>
  <tr>
    <td>+=</td>
    <td>x += 3</td>
    <td>x = x + 3</td>
  </tr>
  <tr>
    <td>-=</td>
    <td>x -= 3</td>
    <td>x = x - 3</td>
  </tr>
  <tr>
    <td>*=</td>
    <td>x *= 3</td>
    <td>x = x * 3</td>
  </tr>
  <tr>
    <td>/=</td>
    <td>x /= 3</td>
    <td>x = x / 3</td>
  </tr>
  <tr>
    <td>%=</td>
    <td>x %= 3</td>
    <td>x = x % 3</td>
  </tr>
  <tr>
    <td>&=</td>
    <td>x &= 3</td>
    <td>x = x & 3</td>
  </tr>
    <tr>
    <td>|=</td>
    <td>x |= 3</td>
    <td>x = x | 3</td>
  </tr>
    <tr>
    <td>^=</td>
    <td>x ^= 3</td>
    <td>x = x ^ 3</td>
  </tr>
    <tr>
    <td>>>=</td>
    <td>x >>= 3</td>
    <td>x = x >> 3</td>
  </tr>
    <tr>
    <td><<=	x</td>
    <td><<= 3</td>
    <td>x = x << 3</td>
  </tr>
 </table> 
<small>σελίδα 2</small>','<h3><b>Κεφάλαιο 8 - Operators</b></h3>
<h4><i>Java Operators σύγκρισης</i></h4>
Οι συγκριτικοί χειριστές χρησιμοποιούνται για να συγκρίνουν δύο τιμές:
<table>
  <tr>
    <th>Operator</th>
    <th>Όνομα</th>
    <th>Παράδειγμα</th>
  </tr>
  <tr>
    <td>==</td>
    <td>Ίσο με το</td>
    <td>x == y</td>
  </tr>
  <tr>
    <td>! =</td>
    <td>Δεν είναι ίσο</td>
    <td>x ! = Y</td>
  </tr>
  <tr>
    <td>></td>
    <td>Μεγαλύτερο από</td>
    <td>x > y</td>
  </tr>
  <tr>
    <td><</td>
    <td>Μικρότερο από</td>
    <td> x < y</td>
  </tr>
  <tr>
    <td>> =</td>
    <td>Μεγαλύτερο από ή ίσο με το</td>
    <td>x> = y</td>
  </tr>
  <tr>
    <td>< =</td>
    <td>Μικρότερο από ή ίσο με το</td>
    <td>x <= y</td>
  </tr>
</table>
<h5><i>Λογικοί Java Operators</i></h5>
Οι λογικοί τελεστές χρησιμοποιούνται για τον προσδιορισμό της λογικής μεταξύ μεταβλητών ή τιμών:
<table>
  <tr>
    <th>Operator</th>
    <th>Όνομα</th>
    <th>Περιγραφή</th>
	<th>Παράδειγμα</th>
  </tr>
  <tr>
    <td>&&</td>
    <td>Logical και</td>
    <td>Επιστρέφει true αν και οι δύο δηλώσεις είναι αληθείς</td>
	<td>x <5 && x <10</td>
  </tr>
    <tr>
    <td>||</td>
    <td>Logical ή</td>
    <td>Επιστρέφει true αν μία από τις δηλώσεις είναι αληθής</td>
	<td>x <5 || x <4</td>
  </tr>
    <tr>
    <td>!</td>
    <td>Logical δεν</td>
    <td>Αντίστροφο από το αποτέλεσμα, επιστρέφει ψευδές αν το αποτέλεσμα είναι αληθές!</td>
	<td>!(X <5 && x <10)</td>
  </tr>
</table>
<small>σελίδα 3</small>');

CREATE TABLE chapter1(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL
);

insert into chapter1 (pages,page1) values('1','<h3><b>Κεφάλαιο 1 -Εισαγωγή στην Γλώσσα Προγραμματισμού JAVA</b></h3>
<h4><i>Τι είναι η Java;</i></h4>
Η Java είναι μια δημοφιλής γλώσσα προγραμματισμού, που δημιουργήθηκε το 1995. Η Java είναι μια γενικού σκοπού γλώσσα προγραμματισμού που είναι βασισμένη σε κλάσεις, αντικειμενοστραφής και έχει σχεδιαστεί έτσι ώστε να έχει όσο το δυνατόν λιγότερες εξαρτήσεις κατά την εκτέλεση. Δηλαδή οι προγραμματιστές μπορούν να τρέξουν κώδικα Java σε όλες τις πλατφόρμες που την υποστηρίζουν χωρίς να χρειάζεται να ξανά-συνταχθεί.<br>Χρησιμοποιείται για:<ul>
<li>Κινητές εφαρμογές (ειδικά εφαρμογές Android)</li>
<li>Εφαρμογές επιφάνειας εργασίας</li>
<li>Εφαρμογές Web</li>
<li>Διακομιστές Web και διακομιστές εφαρμογών</li>
<li>Παιχνίδια</li><li>Σύνδεση βάσης δεδομένων</li>
<li>Και πολλά ακόμη!</li>
</ul>Γιατί να χρησιμοποιήσετε τη Java;<ul>
<li>Η Java λειτουργεί σε διαφορετικές πλατφόρμες (Windows, Mac, Linux, Raspberry Pi κ.λπ.)</li>
<li>Είναι μια από τις πιο δημοφιλείς γλώσσες προγραμματισμού στον κόσμο</li>
<li>Είναι εύκολο να την μάθει κάποιος και να την χρησιμοποιήσει</li>
<li>Είναι ανοιχτού κώδικα και δωρεάν</li><li>Είναι ασφαλής, γρήγορη και ισχυρή</li>
<li>Έχει τεράστια υποστήριξη από την κοινότητα (δεκάδες εκατομμύρια προγραμματιστών)</li></ul>
<br><small>σελίδα 1</small>');

CREATE TABLE chapter2(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL,
	page2 TEXT NOT NULL
);

insert into chapter2 (pages,page1,page2) values('2','<h3><b>Κεφάλαιο 2 - Γρήγορη εκκίνηση με την Java</b></h3>
<h4><i>Εισαγωγή στην Java</i></h4>
Σε περίπτωση που δεν είστε σίγουροι αν έχετε στο μηχάνημά σας Java, τρέξτε στην Γραμμή εντολών την εξής εντολή “java -version” για να δείτε ποια έκδοση της Java έχετε (Η εντολή λειτουργεί και σε Windows και Linux). Διαφορετικά κατεβάστε την από την σελίδα https://www.java.com .
Μετά από αυτό σας προτείνουμε να κατεβάσετε μια εφαρμογή integrated development environment (IDE) για την Java, όπου μπορείτε εύκολα να γράψετε και να εκτελέσετε κώδικα Java. Από τα πιο διάσημα εργαλεία προγραμματισμού τέτοιου τύπου είναι το Eclipse, IntelliJ IDEA, NetBeans, Codenvy και Visual Studio Code.
<br>
<small>σελίδα 1</small>','<h3><b>Κεφάλαιο 2 - Γρήγορη εκκίνηση με την Java</b></h3>
<h4><i>Εισαγωγή στον προγραμματισμό με Java</i></h4>
Στην Java, κάθε εφαρμογή αρχίζει με ένα όνομα κλάσης και αυτή η κλάση πρέπει να ταιριάζει με το όνομα αρχείου.
<br>
Ας δημιουργήσουμε το πρώτο αρχείο Java που ονομάζεται MyClass.java. Το αρχείο πρέπει να περιέχει ένα μήνυμα "Hello World", το οποίο είναι γραμμένο με τον ακόλουθο κώδικα:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		public class MyClass {
		  public static void main(String[] args) {
			System.out.println("Hello World");
		  }
		}
	</code>
  </pre>
</figure>
<br>
Μην ανησυχείτε αν δεν καταλαβαίνετε τον παραπάνω κώδικα - θα τον αναλύσουμε λεπτομερώς σε επόμενα κεφάλαια.
<br>
<small>σελίδα 2</small>');

CREATE TABLE chapter3(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL,
	page2 TEXT NOT NULL
);

insert into chapter3 (pages,page1,page2) values('2','<h3><b>Κεφάλαιο 3 – Σύνταξη στην Java</b></h3>
<h4><i>Σύνταξη</i></h4>
Στο προηγούμενο κεφάλαιο δημιουργήσαμε ένα αρχείο Java που ονομάζεται MyClass.java και χρησιμοποιήσαμε τον ακόλουθο κώδικα για να εκτυπώσετε την οθόνη "Hello World" στην οθόνη:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		public class MyClass {
		  public static void main(String[] args) {
			System.out.println("Hello World");
		  }
		}
</code>
  </pre>
</figure>
<br>
<h4><i>Επεξήγηση του παραδείγματος</i></h4>
Κάθε γραμμή κώδικα που τρέχει σε Java πρέπει να είναι μέσα σε μια τάξη. Στο παράδειγμά μας, ονομάσαμε την κλάση MyClass. Μια κλάση πρέπει πάντα να ξεκινά με ένα πρώτο κεφαλαίο γράμμα.
<br>
Σημείωση: Η Java κάνει διάκριση πεζών-κεφαλαίων: "MyClass" και "myclass" έχουν διαφορετική σημασία.
<br>
Το όνομα του αρχείου java πρέπει να ταιριάζει με το όνομα της κλάσης. Κατά την αποθήκευση του αρχείου, αποθηκεύστε το χρησιμοποιώντας το όνομα της κλάσης και προσθέστε το ".java" στο τέλος του ονόματος αρχείου. Για να εκτελέσετε το παραπάνω παράδειγμα στον υπολογιστή σας, βεβαιωθείτε ότι η Java έχει εγκατασταθεί σωστά: Μεταβείτε στο κεφάλαιο Γρήγορη Εκκίνηση για τον τρόπο εγκατάστασης της Java. Η έξοδος πρέπει να είναι: Hello World
<br>
<small>σελίδα 1</small>','<h3><b>Κεφάλαιο 3 – Σύνταξη στην Java</b></h3>
<h4><i>Η κύρια μέθοδος</i></h4>
Απαιτείται η κύρια μέθοδος main() και θα την δείτε σε κάθε πρόγραμμα Java:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		public static void main(String[] args)
	</code>
  </pre>
</figure>
<br>
Θα εκτελεστεί οποιοσδήποτε κώδικας μέσα στη μέθοδο main (). Δεν χρειάζεται να καταλάβετε τις λέξεις-κλειδιά πριν και μετά την κύρια ακόμη. 
<br>
Προς το παρόν, να θυμάστε ότι κάθε πρόγραμμα Java έχει ένα όνομα κλάσης το οποίο πρέπει να ταιριάζει με το όνομα αρχείου και ότι κάθε πρόγραμμα πρέπει να περιέχει τη μέθοδο main ().
<br>
<h4><i>Εντολή System.out.println ()</i></h4>
Μέσα στη μέθοδο main (), μπορούμε να χρησιμοποιήσουμε τη μέθοδο println () για να εκτυπώσουμε μια γραμμή κειμένου στην οθόνη:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		public static void main(String[] args) {
		  System.out.println("Hello World");
		}
	</code>
  </pre>
</figure>
<br>
<small>σελίδα 2</small>');

CREATE TABLE chapter4(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL,
	page2 TEXT NOT NULL
);

insert into chapter4 (pages,page1,page2) values('2','<h3><b>Κεφάλαιο 4 - Σχολιασμός στην Java</b></h3>
<h4><i>Σχολιασμός στην Java</i></h4>
Τα σχόλια μπορούν να χρησιμοποιηθούν για να εξηγήσουν τον κώδικα Java και να το κάνουν πιο ευανάγνωστο. Μπορούν επίσης να χρησιμοποιηθούν για την αποτροπή εκτέλεσης κατά τον έλεγχο εναλλακτικού κώδικα.
<br>
Τα σχόλια μιας γραμμής ξεκινούν με δύο εμπρόσθια πτερύγια (//).
<br>
Κάθε κείμενο μεταξύ // και το τέλος της γραμμής αγνοείται από την Java (δεν θα εκτελεστεί).
<br>
Αυτό το παράδειγμα χρησιμοποιεί ένα σχόλιο μιας γραμμής πριν από μια γραμμή κώδικα:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		// This is a comment
		System.out.println("Hello World");
	</code>
  </pre>
</figure>
<br>
Αυτό το παράδειγμα χρησιμοποιεί ένα σχόλιο μιας γραμμής στο τέλος μιας γραμμής κώδικα:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		System.out.println("Hello World"); // This is a comment
	</code>
  </pre>
</figure>
<br>
<small>σελίδα 1</small>','<h3><b>Κεφάλαιο 4 - Σχολιασμός στην Java</b></h3>
<h4><i>Σχολιασμός πολλών γραμμών στην Java</i></h4>
Τα σχόλια πολλών γραμμών αρχίζουν με /* και τελειώνουν με */.
<br>
Οποιοδήποτε κείμενο μεταξύ /* και */ θα αγνοηθεί από την Java
<br>
Αυτό το παράδειγμα χρησιμοποιεί ένα σχόλιο πολλών γραμμών (ένα μπλοκ σχολίων) για να εξηγήσει τον κώδικα:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		/* The code below will print the words Hello World
		to the screen, and it is amazing */
		System.out.println("Hello World");
	</code>
  </pre>
</figure>
<br>
<small>σελίδα 2</small>');

CREATE TABLE chapter5(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL,
	page2 TEXT NOT NULL,
	page3 TEXT NOT NULL,
	page4 TEXT NOT NULL
);

insert into chapter5 (pages,page1,page2,page3,page4) values('4','<h3><b>Κεφάλαιο 5 - Μεταβλητές Java</b></h3>
<h4><i>Οι μεταβλητές είναι δοχεία για την αποθήκευση δεδομένων</i></h4>
Στην Java, υπάρχουν διάφοροι τύποι μεταβλητών, για παράδειγμα:<br><ul>
<li>String - αποθηκεύει κείμενο, όπως "Hello". Οι τιμές των συμβολοσειρών περιβάλλονται από διπλά εισαγωγικά</li>
<li>int - αποθηκεύει ακέραιους (ολόκληρους αριθμούς), χωρίς δεκαδικά ψηφία, όπως 123 ή -123</li>
<li>float - αποθηκεύει αριθμούς κινητού σημείου, με δεκαδικά ψηφία, όπως 19.99 ή -19.99</li>
<li>char - αποθηκεύει μεμονωμένους χαρακτήρες, όπως ΄a΄ ή ΄B΄. Οι τιμές Char περιβάλλονται από μοναδικά εισαγωγικά</li>
<li>boolean - αποθηκεύει τιμές με δύο καταστάσεις: true ή false</li>
<br>
<small>σελίδα 1</small>','<h3><b>Κεφάλαιο 5 - Μεταβλητές Java</b></h3>
<h4><i>Δηλώσεις (Δημιουργία) μεταβλητών</i></h4>
Για να δημιουργήσετε μια μεταβλητή, πρέπει να καθορίσετε τον τύπο και να τον εκχωρήσετε μια τιμή:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		type variable = value;
	</code>
  </pre>
</figure>
<br>
Όπου ο τύπος είναι ένας από τους τύπους της Java (όπως int ή String), και μεταβλητή είναι το όνομα της μεταβλητής (όπως x ή όνομα). Το ίση σημάδι χρησιμοποιείται για την εκχώρηση τιμών στη μεταβλητή.
Για να δημιουργήσετε μια μεταβλητή που θα πρέπει να αποθηκεύει κείμενο, ανατρέξτε στο ακόλουθο παράδειγμα:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		String name = "John";
		System.out.println(name);
	</code>
  </pre>
</figure>
<br>
Για να δημιουργήσετε μια μεταβλητή που θα πρέπει να αποθηκεύει έναν αριθμό, εξετάστε το ακόλουθο παράδειγμα:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		int myNum = 15;
		System.out.println(myNum);
	</code>
  </pre>
</figure>
<br>
Μπορείτε επίσης να δηλώσετε μια μεταβλητή χωρίς να εκχωρήσετε την τιμή και να εκχωρήσετε την τιμή αργότερα :
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		int myNum;
		myNum = 15;
		System.out.println(myNum);
	</code>
  </pre>
</figure>
<br>
Μια επίδειξη για τον τρόπο δήλωσης μεταβλητών άλλων τύπων:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		int myNum = 5;
		float myFloatNum = 5.99f;
		char myLetter = ΄D΄;
		boolean myBool = true;
		String myText = "Hello";
	</code>
  </pre>
</figure>
<br>
<small>σελίδα 2</small>','<h3><b>Κεφάλαιο 5 - Μεταβλητές Java</b></h3>
<h4><i>Προβολή μεταβλητών</i></h4>
Η μέθοδος println () χρησιμοποιείται συχνά για την εμφάνιση μεταβλητών.
<br>
Για να συνδυάσετε κείμενο και μεταβλητή, χρησιμοποιήστε το χαρακτήρα +:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		String name = "John";
		System.out.println("Hello " + name);
	</code>
  </pre>
</figure>
<br>
Μπορείτε επίσης να χρησιμοποιήσετε το χαρακτήρα + για να προσθέσετε μια μεταβλητή σε μια άλλη μεταβλητή:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		String firstName = "John ";
		String lastName = "Doe";
		String fullName = firstName + lastName;
		System.out.println(fullName);
	</code>
  </pre>
</figure>
<br>
Για αριθμητικές τιμές, ο χαρακτήρας + λειτουργεί ως μαθηματικός χειριστής (παρατηρήστε ότι εδώ χρησιμοποιούμε μεταβλητές int (integer)):
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		int x = 5;
		int y = 6;
		System.out.println(x + y); // Print the value of x + y
		</code>
  </pre>
</figure>
<br>
Από το παραπάνω παράδειγμα, μπορείτε να περιμένετε:<br><ul>
<li>x αποθηκεύει την τιμή 5</li>
<li>y αποθηκεύει την τιμή 6</li>
<li>Στη συνέχεια, χρησιμοποιούμε τη μέθοδο println () για να εμφανιστεί η τιμή x + y, η οποία είναι 11</li></ul>
<br>
<h4><i>Δηλώστε πολλές μεταβλητές</i></h4>
<br>
Για να δηλώσετε περισσότερες από μία μεταβλητές του ίδιου τύπου, χρησιμοποιήστε μια λίστα χωρισμένη με κόμματα:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		int x = 5, y = 6, z = 50;
		System.out.println(x + y + z);
	</code>
  </pre>
</figure>
<br>
<small>σελίδα 3</small>','<h3><b>Κεφάλαιο 5 - Μεταβλητές Java</b></h3>
<h4><i>Αναγνωριστές Java</i></h4>
Όλες οι μεταβλητές Java πρέπει να αναγνωρίζονται με μοναδικά ονόματα.
Αυτά τα μοναδικά ονόματα ονομάζονται αναγνωριστικά.
<br>
Τα αναγνωριστικά μπορούν να είναι σύντομα ονόματα (όπως το x και y) ή περισσότερα περιγραφικά ονόματα (ηλικία, άθροισμα, σύνολοVolume).
<br>
Οι γενικοί κανόνες για την κατασκευή ονομάτων για μεταβλητές (μοναδικά αναγνωριστικά) είναι:<ul>
<li>Τα ονόματα μπορούν να περιέχουν γράμματα, ψηφία, υπογράμμιση και δολάριο</li>
<li>Τα ονόματα θα πρέπει να αρχίζουν με ένα γράμμα</li>
<li>Τα ονόματα μπορούν επίσης να αρχίσουν με $ και _ (αλλά δεν θα τα χρησιμοποιήσουμε σε αυτό το σεμινάριο)</li>
<li>Τα ονόματα είναι ευαίσθητα σε πεζά ("myVar" και "myvar" είναι διαφορετικές μεταβλητές)</li>
<li>Τα ονόματα πρέπει να ξεκινούν με πεζά γράμματα και δεν μπορούν να περιέχουν κενό διάστημα</li>
<li>Οι δεσμευμένες λέξεις (όπως λέξεις-κλειδιά Java, όπως int ή String) δεν μπορούν να χρησιμοποιηθούν ως ονόματα</li>
</ul><br>
<small>σελίδα 4</small>');

CREATE TABLE chapter6(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL,
	page2 TEXT NOT NULL,
	page3 TEXT NOT NULL,
	page4 TEXT NOT NULL,
	page5 TEXT NOT NULL
);

insert into chapter6 (pages,page1,page2,page3,page4,page5) values('5','<h3><b>Κεφάλαιο 6 - Τύποι δεδομένων Java</b></h3>
<h4><i>Τύποι δεδομένων</i></h4>
Όπως εξηγείται στο προηγούμενο κεφάλαιο, μια μεταβλητή Java πρέπει να είναι ένας συγκεκριμένος τύπος δεδομένων:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		int myNum = 5;               // Integer (whole number)
		float myFloatNum = 5.99f;    // Floating point number
		char myLetter = ΄D΄;         // Character
		boolean myBool = true;       // Boolean
		String myText = "Hello";     // String
	</code>
  </pre>
</figure>
<br>
Οι τύποι δεδομένων χωρίζονται σε δύο ομάδες:<ul><br>
<li>Πρωταρχικοί τύποι δεδομένων - περιλαμβάνουν byte, short, int, long, float, double, boolean και char</li>
<li>Μη πρωταρχικοί τύποι δεδομένων - όπως String, Arrays and Classes (θα μάθετε περισσότερα για αυτά σε ένα επόμενο κεφάλαιο)</li>
</ul><br>
<small>σελίδα 1</small>','<h3><b>Κεφάλαιο 6 - Τύποι δεδομένων Java</b></h3>
<h4><i>Πρωταρχικοί τύποι δεδομένων</i></h4>
Ένας πρωταρχικός τύπος δεδομένων καθορίζει το μέγεθος και τον τύπο των μεταβλητών τιμών και δεν έχει άλλες μεθόδους.
<br>
Υπάρχουν οκτώ πρωταρχικοί τύποι δεδομένων στη Java:
<table>
  <tr>
    <th>Τύπος δεδομένων</th>
    <th>Μέγεθος</th>
    <th>Περιγραφή</th>
  </tr>
  <tr>
    <td>byte 1 </td>
    <td>byte</td>
    <td>Αποθηκεύει ολόκληρους αριθμούς από -128 έως 127</td>
  </tr>
  <tr>
    <td>short</td>
    <td>2 bytes</td>
    <td>Αποθηκεύει ολόκληρους αριθμούς από -32.768 έως 32.767</td>
  </tr>
  <tr>
    <td>int</td>
    <td>4 byte</td>
    <td>Αποθηκεύει ολόκληρους αριθμούς από -2,147,483,648 έως 2,147,483,647</td>
  </tr>
  <tr>
    <td>long</td>
    <td>8 bytes</td>
    <td>Αποθηκεύει ολόκληρους αριθμούς από -9,223,372,036,854,775,808 έως 9,223,372,036,854,775,807</td>
  </tr>
  <tr>
    <td>float</td>
    <td>4 bytes</td>
    <td>Αποθηκεύει κλασικούς αριθμούς από 3.4e-038 έως 3.4e + 038. Επαρκής για αποθήκευση 6 έως 7 δεκαδικών ψηφίων</td>
  </tr>
  <tr>
    <td>double</td>
    <td>8 bytes</td>
    <td>Αποθηκεύει κλασικούς αριθμούς από 1.7e-308 έως 1.7e + 038. Αρκεί για την αποθήκευση 15 δεκαδικών ψηφίων</td>
  </tr>
  <tr>
    <td>boolean</td>
    <td>1 bit</td>
    <td>Αποθηκεύει αληθείς ή ψευδείς τιμές</td>
  </tr>
  <tr>
    <td>char</td>
    <td>2 bytes</td>
    <td>Αποθηκεύει ένα μοναδικό χαρακτήρα / γράμμα ή τιμές ASCII</td>
  </tr>
</table>
<br>  
<h4><i>Αριθμοί</i></h4>
Οι πρωταρχικοί τύποι αριθμών χωρίζονται σε δύο ομάδες:<ul>
<li>Οι τύποι ακεραίων αποθηκεύουν ολόκληρους αριθμούς, θετικούς ή αρνητικούς (όπως 123 ή -456), χωρίς δεκαδικά ψηφία. Οι έγκυροι τύποι είναι byte, short, int και long. Ο τύπος που πρέπει να χρησιμοποιήσετε εξαρτάται από την αριθμητική τιμή.</li>
<li>Οι τύποι κινητής υποδιαστολής αντιπροσωπεύουν αριθμούς με κλασματικό τμήμα, που περιέχουν ένα ή περισσότερα δεκαδικά ψηφία. Υπάρχουν δύο τύποι: float και double.</li>
<ul><br>
<small>σελίδα 2</small>','<h3><b>Κεφάλαιο 6 - Τύποι δεδομένων Java</b></h3>
<h4><i>Ακέραιοι τύποι</i></h4>
<h5><i>Byte</i></h5>
Ο τύπος δεδομένων byte μπορεί να αποθηκεύσει ολόκληρους αριθμούς από -128 έως 127. Αυτό μπορεί να χρησιμοποιηθεί αντί για int ή άλλους τύπους ακέραιων αριθμών για εξοικονόμηση μνήμης όταν είστε βέβαιοι ότι η τιμή θα είναι εντός -128 και 127:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		byte myNum = 100;
		System.out.println(myNum);
	</code>
  </pre>
</figure>
<br>
<h5><i>Short</i></h5>
Ο short τύπος δεδομένων μπορεί να αποθηκεύσει ολόκληρους αριθμούς από -32768 έως 32767:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		short myNum = 5000;
		System.out.println(myNum);
	</code>
  </pre>
</figure>
<br>
<h5><i>Int</i></h5>
Ο τύπος δεδομένων int μπορεί να αποθηκεύσει ολόκληρους αριθμούς από -2147483648 έως 2147483647. Γενικά, και στο tutorial μας, ο τύπος δεδομένων int είναι ο προτιμώμενος τύπος δεδομένων όταν δημιουργούμε μεταβλητές με αριθμητική τιμή.
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		int myNum = 100000;
		System.out.println(myNum);
	</code>
  </pre>
</figure>
<br>
<h5><i>Long</i></h5>
Ο long τύπος δεδομένων μπορεί να αποθηκεύσει ολόκληρους αριθμούς από -9223372036854775808 έως 9223372036854775807. Αυτό χρησιμοποιείται όταν το int δεν είναι αρκετά μεγάλο για να αποθηκεύσει την τιμή. Σημειώστε ότι πρέπει να τερματίσετε την τιμή με ένα "L":
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		long myNum = 15000000000L;
		System.out.println(myNum);
	</code>
  </pre>
</figure>
<br><small>σελίδα 3</small>','<h3><b>Κεφάλαιο 6 - Τύποι δεδομένων Java</b></h3>
<h4><i>Τύποι κινητής υποδιαστολής </i></h4>
Θα πρέπει να χρησιμοποιείτε τύπο κινητής υποδιαστολής κάθε φορά που χρειάζεστε έναν αριθμό με δεκαδικό αριθμό, όπως το 9.99 ή το 3.14515.
<h5><i>Float</i></h5>
Ο τύπος δεδομένων float μπορεί να αποθηκεύσει κλασματικούς αριθμούς από 3.4e-038 σε 3.4e + 038. Σημειώστε ότι πρέπει να τερματίσετε την τιμή με ένα "f":
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
	float myNum = 5.75f;
System.out.println(myNum);
	</code>
  </pre>
</figure><br>
<h5><i>Double</i></h5>

Ο double τύπος δεδομένων μπορεί να αποθηκεύσει κλασικούς αριθμούς από 1.7e-308 έως 1.7e + 038. Σημειώστε ότι πρέπει να τερματίσετε την τιμή με "d":
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
double myNum = 19.99d;
System.out.println(myNum);
	</code>
  </pre>
</figure><br>
<h5><i>Επιστημονικοί αριθμοί</i></h5>
Ένας αριθμός κινητής υποδιαστολής μπορεί επίσης να είναι ένας επιστημονικός αριθμός με ένα "e" για να δηλώσει τη δύναμη του 10:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
	float f1 = 35e3f;
double d1 = 12E4d;
System.out.println(f1);
System.out.println(d1);
	</code>
  </pre>
</figure><br>
<small>σελίδα 4</small>','<h3><b>Κεφάλαιο 6 - Τύποι δεδομένων Java</b></h3>
<h4><i>Τύποι κινητής υποδιαστολής </i></h4>
<h5><i>Boolean</i></h5>
Ένας τύπος δεδομένων boolean δηλώνεται με τη λέξη-κλειδί boolean και μπορεί να λάβει μόνο τις αξίες true ή false:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		boolean isJavaFun = true;
		boolean isFishTasty = false;
		System.out.println(isJavaFun);     // Outputs true
		System.out.println(isFishTasty);   // Outputs false
	</code>
  </pre>
</figure><br>
Οι τιμές Boolean χρησιμοποιούνται κυρίως για δοκιμές υπό όρους, τις οποίες θα μάθετε περισσότερα σε ένα επόμενο κεφάλαιο.
<h5><i>Χαρακτήρες</i></h5>
Ο τύπος δεδομένων char χρησιμοποιείται για την αποθήκευση ενός μόνο χαρακτήρα. Ο χαρακτήρας πρέπει να περιβάλλεται από μεμονωμένα εισαγωγικά, όπως ΄Α΄ ή ΄c΄:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		char myGrade = ΄B΄;
		System.out.println(myGrade);
	</code>
  </pre>
</figure><br>
Εναλλακτικά, μπορείτε να χρησιμοποιήσετε τις τιμές ASCII για να εμφανίσετε ορισμένους χαρακτήρες:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
	char a = 65, b = 66, c = 67;
	System.out.println(a);
	System.out.println(b);
	System.out.println(c);
	</code>
  </pre>
</figure><br>
<h5><i>Strings</i></h5>
Ο τύπος δεδομένων String χρησιμοποιείται για την αποθήκευση μιας σειράς χαρακτήρων (κειμένου). Οι τιμές των συμβολοσειρών πρέπει να περιβάλλεται από διπλά εισαγωγικά:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
	String greeting = "Hello World";
	System.out.println(greeting);
	</code>
  </pre>
</figure><br>
<small>σελίδα 5</small>');

CREATE TABLE chapter7(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL
);

insert into chapter7 (pages,page1) values('1','<h3><b>Κεφάλαιο 7 - Java Type Casting</b></h3>
<h4><i>Java Type Casting</i></h4>
Η type casting είναι όταν εκχωρείτε μια τιμή ενός πρωτόγονου τύπου δεδομένων σε άλλο τύπο.
<br>
Στην Java, υπάρχουν δύο τύποι type casting:
<br>
Διευρυμένο casting (αυτόματα) - μετατροπή ενός μικρότερου τύπου σε μεγαλύτερο μέγεθος τύπου
byte -> short -> char -> int -> long -> float -> διπλό
<br>
Περιορισμένο casting (χειροκίνητα) - μετατροπή μεγαλύτερου τύπου σε μικρότερο μέγεθος
διπλό -> float -> long -> int -> char -> short -> byte
<br>
<h5><i>Διευρυμένο casting</i></h5>
Το Διευρυμένο casting πραγματοποιείται αυτόματα όταν μεταβιβάζεται ένας τύπος μικρότερου μεγέθους σε έναν τύπο μεγαλύτερου μεγέθους:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
	public class MyClass {
	  public static void main(String[] args) {
		int myInt = 9;
		double myDouble = myInt; // Automatic casting: int to double

		System.out.println(myInt);      // Outputs 9
		System.out.println(myDouble);   // Outputs 9.0
	  }
	}
	</code>
  </pre>
</figure><br>

<h5><i>Περιορισμένο casting</i></h5>
Το περιορισμένο casting πρέπει να γίνει χειροκίνητα τοποθετώντας τον τύπο σε παρενθέσεις μπροστά από την τιμή:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		public class MyClass {
		  public static void main(String[] args) {
			double myDouble = 9.78;
			int myInt = (int) myDouble; // Manual casting: double to int

			System.out.println(myDouble);   // Outputs 9.78
			System.out.println(myInt);      // Outputs 9
		  }
		}
	</code>
  </pre>
</figure><br>
<small>σελίδα 1</small>');

CREATE TABLE chapter9(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL,
	page2 TEXT NOT NULL,
	page3 TEXT NOT NULL,
	page4 TEXT NOT NULL
);

insert into chapter9 (pages,page1,page2,page3,page4) values('4','<h3><b>Κεφάλαιο 9 - Java Strings</b></h3>
<h4><i>Java Strings</i></h4>
Οι Strings χρησιμοποιούνται για την αποθήκευση κειμένου.
Μια μεταβλητή String περιέχει μια συλλογή χαρακτήρων που περιβάλλεται από διπλά εισαγωγικά:
<br>
Δημιουργήστε μια μεταβλητή τύπου String και αντιστοιχίστε μια τιμή:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		String greeting = "Hello";
	</code>
  </pre>
</figure><br>
<h5><i>Μήκος String</i></h5>
Μια συμβολοσειρά στην Java είναι στην πραγματικότητα ένα αντικείμενο που περιέχει μεθόδους που μπορούν να εκτελέσουν ορισμένες λειτουργίες σε συμβολοσειρές. Για παράδειγμα, το μήκος μιας συμβολοσειράς μπορεί να βρεθεί με τη μέθοδο length ():
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		String txt = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		System.out.println ("Το μήκος της συμβολοσειράς txt είναι:" + txt.length ());
	</code>
  </pre>
</figure><br>
<h5><i>Περισσότερες μέθοδοι String</i></h5>
Υπάρχουν πολλές διαθέσιμες μέθοδοι συμβολοσειράς, για παράδειγμα toUpperCase () και toLowerCase ():
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		String txt = "Hello World"
		System.out.println (txt.toUpperCase()); // Αποτελέσματα "HELLO WORLD"
		System.out.println (txt.toLowerCase()); // Αποτελέσματα "hello world"
	</code>
  </pre>
</figure><br>
<small>σελίδα 1</small>','<h3><b>Κεφάλαιο 9 - Java Strings</b></h3>
<h4><i>Εύρεση ενός String σε ένα String</i></h4>
Η μέθοδος indexOf () επιστρέφει τον δείκτη (τη θέση) της πρώτης εμφάνισης ενός συγκεκριμένου κειμένου σε μια συμβολοσειρά (συμπεριλαμβανομένων των κενών):
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		String txt = "Παρακαλείσθε να εντοπίσετε την τοποθεσία του ΄να΄ !";
		System.out.println (txt.indexOf ("να")); // Εμφανίζει 13
	</code>
  </pre>
</figure><br>
Η Java υπολογίζει τις θέσεις από το μηδέν.
Το 0 είναι η πρώτη θέση σε μια συμβολοσειρά, η 1 είναι η δεύτερη, η 2 η τρίτη ...
<h5><i>Συνδυασμός String</i></h5>
Ο τελεστής + μπορεί να χρησιμοποιηθεί μεταξύ των συμβολοσειρών για να τα προσθέσετε μαζί για να δημιουργήσετε μια νέα συμβολοσειρά. Αυτό ονομάζεται σύζευξη:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		String firstName = "John";
		String lastName = "Doe";
		System.out.println (firstName + "" + lastName);
	</code>
  </pre>
</figure><br>
Σημειώστε ότι έχουμε προσθέσει ένα κενό κείμενο ("") για να δημιουργήσετε ένα κενό διάστημα μεταξύ FirstName και lastName στην εκτύπωση.
Μπορείτε επίσης να χρησιμοποιήσετε τη μέθοδο concat () για να συγκολλήσετε δύο συμβολοσειρές:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		String firstName = "John";
		String lastName = "Doe";
		System.out.println (firstName.concat(lastName));
	</code>
  </pre>
</figure><br>
<small>σελίδα 2</small>','<h3><b>Κεφάλαιο 9 - Java Strings</b></h3>
<h4><i>Ειδικοί χαρακτήρες</i></h4>
Επειδή οι συμβολοσειρές πρέπει να είναι γραμμένες σε εισαγωγικά, η Java θα καταλάβει διαφορετικά αυτή η συμβολοσειρά και θα δημιουργήσει ένα σφάλμα:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
	String txt = "Είμαστε οι " Βίκινγκ " από το βορρά.";
	Η λύση για την αποφυγή αυτού του προβλήματος είναι η χρήση του χαρακτήρα απόσχισης.
	</code>
  </pre>
</figure><br>
Ο χαρακτήρας διαφυγής ανάστροφη κάθετος (\) στρέφει τους ειδικούς χαρακτήρες σε συμβολοσειρά:
<table>
  <tr>
    <th>Χαρακτήρας Escape</th>
    <th>Αποτέλεσμα</th>
    <th>Περιγραφή</th>
  </tr>
  <tr>
    <td>\΄</td>
    <td>΄</td>
    <td>Μονό εισαγωγικό</td>
  </tr>
   <tr>
    <td>\"</td>
    <td>"</td>
    <td>Διπλό εισαγωγικό</td>
  </tr>
   <tr>
    <td>\\</td>
    <td>\</td>
    <td>Ανάστροφη κάθετος</td>
  </tr>
</table>

Η ακολουθία \ "εισάγει ένα διπλό απόσπασμα σε μια συμβολοσειρά:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
String txt = "Είμαστε οι λεγόμενοι \" Βίκινγκς \" από το βορρά.";
	</code>
  </pre>
</figure><br>
Η ακολουθία \΄ εισάγει ένα μοναδικό απόσπασμα σε μια συμβολοσειρά:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
	String txt = "Καλύτερα εδώ απ\΄ αλλού.";
	</code>
  </pre>
</figure><br>
Η ακολουθία \\ εισάγει μια πίσω κάθετο σε μια συμβολοσειρά:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
	String txt = "Ο χαρακτήρας \\ ονομάζεται backslash.";
	</code>
  </pre>
</figure><br>
Έξι άλλες ακολουθίες διαφυγής ισχύουν στην Java:
<table>
  <tr>
    <th>Κωδικός</th>
    <th>Αποτέλεσμα</th>
  </tr>
  <tr>
    <td>\ n</td>
    <td>Νέα γραμμή</td>
  </tr>
   <tr>
    <td>\ r</td>
    <td>Νέα επιστροφή σειράς</td>
  </tr>
   <tr>
    <td>\ t</td>
    <td>Tab</td>
  </tr>
   <tr>
    <td>\ b</td>
    <td>Backspace</td>
  </tr>
  <tr>
    <td>\ f</td>
    <td>Φόρτωση φόρμας</td>
  </tr>
</table><br>
<small>σελίδα 3</small>','<h3><b>Κεφάλαιο 9 - Java Strings</b></h3>
<h4><i>Προσθήκη αριθμών και Strings</i></h4>
<h5><i>Προσοχή!</i></h5>
Η Java χρησιμοποιεί τον + τελεστή για την προσθήκη και τη σύζευξη.
Προστίθενται αριθμοί. Οι Strings συνενώνονται.
Αν προσθέσετε δύο αριθμούς, το αποτέλεσμα θα είναι ένας αριθμός:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
int x = 10;
int y = 20;
int z = χ + γ; // z θα είναι 30 (ένας ακέραιος αριθμός / αριθμός)
	</code>
  </pre>
</figure><br>
Αν προσθέσετε δύο συμβολοσειρές, το αποτέλεσμα θα είναι μια συμβολοσειρά συμβολοσειρών:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
String x = "10";
String y = "20";
String z = x + y; // z θα είναι 1020 (μια συμβολοσειρά)
	</code>
  </pre>
</figure><br>
Αν προσθέσετε έναν αριθμό και μια συμβολοσειρά, το αποτέλεσμα θα είναι μια συμβολοσειρά συμβολοσειράς:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
String x = "10";
int y = 20;
String z = x + y; // z θα είναι 1020 (μια συμβολοσειρά)
	</code>
  </pre>
</figure><br>
<h5><i>Πλήρης αναφορά συμβολοσειράς</i></h5>
Για μια πλήρη αναφορά των μεθόδων String, πηγαίνετε στο Java String Methods Reference.
Η αναφορά περιέχει περιγραφές και παραδείγματα όλων των μεθόδων συμβολοσειράς.
<br>
<small>σελίδα 4</small>');

CREATE TABLE chapter10(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL
);

insert into chapter10 (pages,page1) values('1','<h3><b>Κεφάλαιο 10 - Java Math</b></h3>
Η Java τάξη Math έχει πολλές μεθόδους που επιτρέπουν την εκτέλεση πολλών μαθηματικών διεργασιών σε αριθμούς.
<h5><i>Math.max(x,y)</i></h5>
Η μέθοδος Math.max(x,y)  μπορεί να χρησιμοποιηθεί για να βρει την μέγιστη τιμή μεταξύ των τιμών x και y:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
Math.max(5, 10);
	</code>
  </pre>
</figure><br>
<h5><i>Math.min(x,y)</i></h5>
Η μέθοδος Math.min(x,y) μπορεί να χρησιμοποιηθεί για να βρει την ελάχιστη τιμή μεταξύ των τιμών x και  y:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
Math.min(5, 10);
	</code>
  </pre>
</figure><br>
<h5><i>Math.sqrt(x)</i></h5>
Η μέθοδος Math.sqrt(x) επιστρέφει την τετραγωνική ρίζα του x:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
Math.sqrt(64);
	</code>
  </pre>
</figure><br>
<h5><i>Math.abs(x)</i></h5>
Η μέθοδος Math.abs(x) επιστρέφει την απόλυτη (θετική) τιμή του x:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
Math.abs(-4.7)
	</code>
  </pre>
</figure><br>
<h5><i>Math.random()</i></h5>
Η Math.random() επιστρέφει έναν τυχαίο αριθμό μεταξύ του 0 και του 1:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
Math.random();
	</code>
  </pre>
</figure><br>
<h5><i>Math βιβλιοθήκη</i></h5>
Για περισσότερες πληροφορίες σχετικά με την παραπάνω βιβλιοθήκη, μπορέι να βρείτε στον εξής σύνδεσμο: 
<p><a href="https://www.w3schools.com/java/java_ref_math.asp"></a></p>
<br>
<small>σελίδα 1</small>
');

CREATE TABLE chapter11(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL
);

insert into chapter11 (pages,page1) values('1','<h3><b>Κεφάλαιο 11 - Java Booleans</b></h3>
Πολύ συχνά στον προγραμματισμό, χρειαζόμαστε έναν τύπο δεδομένων που έχει μόνο 2 τιμές του τύπου:<ul>
<li>Ναι / Οχι</li>
<li>ON / OFF</li>
<li>Αληθής / Ψευδής (true/false)</li></ul><br>
Γι’ αυτό η Java έχει τον τύπο δεδομένων boolean  που μπορεί να πάρει τις τιμές true ή false.
<h5><i>Λογικές τιμές</i></h5>
Ο τύπος boolean δηλώνετε με την λέξη boolean και παίρνει μόνο τις τιμές true ή false:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
boolean isJavaFun = true;
boolean isFishTasty = false;
System.out.println(isJavaFun);     // Outputs true
System.out.println(isFishTasty);   // Outputs false
	</code>
  </pre>
</figure><br>
Ωστόσο, είναι συχνό να επιστρέφουμε λογικές τιμές από λογικές εκφράσεις για έλεγχο συνθήκης (δείτε παρακάτω).
<h5><i>Λογική έκφραση</i></h5>
Μια λογική έκφραση είναι μια Java έκφραση που επιστρέφει τιμή τύπου Boolean, δηλαδή true ή false.
Μπορείτε να χρησιμοποιήσετε έναν τελεστή σύγκρισης όπως ο μεγαλύτερος από (>) για να βρείτε αν μια έκφραση (ή μεταβλητή) είναι αληθής:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
int x = 10;
int y = 9;
System.out.println(x > y); // returns true, because 10 is higher than 9
	</code>
  </pre>
</figure><br>
Ή ακόμη πιο εύκολα:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
System.out.println(10 > 9); // returns true, because 10 is higher than 9
	</code>
  </pre>
</figure><br>
Στο παρακάτω παράδειγμα, χρησιμοποιούμε τον τελεστή ίσο με (==) για να αξιολογήσουμε μια έκφραση:
Παράδειγμα 
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
int x = 10;
System.out.println(x == 10); // returns true, because the value of x is equal to 10
	</code>
  </pre>
</figure><br>
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
System.out.println(10 == 15); // returns false, because 10 is not equal to 15
	</code>
  </pre>
</figure><br>
Η λογική τιμή της έκφραση είναι η βάση για όλες τις συγκρίσεις και συνθήκες.
Θα μάθετε περισσότερα για τις συνθήκες στο επόμενο κεφάλαιο.
<br>
<small>σελίδα 1</small>');

CREATE TABLE chapter12(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL,
	page2 TEXT NOT NULL,
	page3 TEXT NOT NULL
);

insert into chapter12 (pages,page1,page2,page3) values('3','<h3><b>Κεφάλαιο 12 - Java If... Else δηλώσεις</b></h3>
Η Java υποστηρίζει τις σύνηθες λογικές μαθηματικές συνθήκες:<ul>
<li>Μικρότερο: a < b</li>
<li>Μικρότερο ή ίσο: a <= b</li>
<li>Μεγαλύτερο: a > b</li>
<li>Μεγαλύτερο ή ίσο: a >= b</li>
<li>Ίσο a == b</li>
<li>Διάφορο: a != b</li></ul><br>
Μπορείτε να χρησιμοποιήσετε αυτές τις συνθήκες προκειμένου να εκτελέσετε διαφορετικές ενέργειες για διαφορετικές περιπτώσεις.
<br>
Η Java έχει τις παρακάτω δηλώσεις υποθέσεων:<ul>
<li>Χρησιμοποιήστε if για να εκτελέσετε ένα κομμάτι κώδικα όταν η αντίστοιχη υπόθεση είναι αληθής</li>
<li>Χρησιμοποιήστε else για να εκτελέσετε ένα κομμάτι κώδικα όταν η αντίστοιχη υπόθεση είναι ψευδής</li>
<li>Χρησιμοποιήστε else if για να ορίσετε μια νέα συνθήκη προς έλεγχο αν η πρώτη ήταν ψευδής</li>
<li>Χρησιμοποιήστε switch για να ορίσετε πολλά εναλλακτικά κομμάτια κώδικα προς εκτέλεση</li></ul><br>
<h5><i>Η if δήλωση</i></h5>
Χρησιμοποιήστε την if δήλωση για να ορίσετε ένα κομμάτι Java κώδικα προς εκτέλεση, εάν η συνθήκη είναι αληθής true.
<br>
<figure>
  <figcaption>Σύνταξη</figcaption>
  <pre>
    <code> 
if (condition) {
  // block of code to be executed if the condition is true
}
	</code>
  </pre>
</figure><br>
Σημειώστε ότι η if λέξη βρίσκεται πάντα σε πεζά γράμματα. Κεφαλαία γράμματα (If ή IF) θα δημιουργήσουν λάθος.
Στο παρακάτω παράδειγμα ελέγχουμε 2 τιμής για να δούμε εάν το 20 είναι μεγαλύτερο από το 18. Εάν η συνθήκη είναι αληθής true, εκτύπωσε κάποιο κείμενο:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
if (20 > 18) {
  System.out.println("20 is greater than 18");
}
	</code>
  </pre>
</figure><br>
Μπορούμε, επίσης, να ελέγξουμε μεταβλητές:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
int x = 20;
int y = 18;
if (x > y) {
  System.out.println("x is greater than y");
}
	</code>
  </pre>
</figure><br>
Επεξήγηση παραδείγματος
Στο παραπάνω παράδειγμα χρησιμοποιούμε τις μεταβλητές x και y για να ελέγξουμε αν το x είναι μεγαλύτερο από το y (χρησιμοποιώντας τον τελεστή >). Καθώς το x είναι 20 και το y είναι 18, όπως ότι το 10 είναι μεγαλύτερο από το 18, εκτυπώνουμε στην οθόνη ότι το x είναι μεγαλύτερο από το y ("x is greater than y").
<br><small>σελίδα 1</small>','<h3><b>Κεφάλαιο 12 - Java If... Else δηλώσεις</b></h3>
<h5><i>The else Statement</i></h5>
Χρησιμοποιήστε την else δήλωση για να ορίσετε ένα κομμάτι Java κώδικα προς εκτέλεση, εάν η συνθήκη είναι ψευδής false.
 
<br>
<figure>
  <figcaption>Σύνταξη</figcaption>
  <pre>
    <code>
if (condition) {
  // block of code to be executed if the condition is true
} else { 
  // block of code to be executed if the condition is false
} 
	</code>
  </pre>
</figure><br>
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
int time = 20;
if (time < 18) {
  System.out.println("Good day.");
} else {
  System.out.println("Good evening.");
}
// Outputs "Good evening."
	</code>
  </pre>
</figure><br>
Επεξήγηση παραδείγματος
Στο παραπάνω παράδειγμα, ο χρόνος (20) είναι μεγαλύτερος από το 18 οπότε η συνθήκη είναι ψευδής false. Λόγω αυτού, οδηγούμε στην συνθήκη της else και εκτυπώνουμε στην οθόνη "Good evening". Εάν η ώρα ήταν λιγότερη από 18 το πρόγραμμα θα εκτύπωνε "Good day".
<h5><i>Η else if δήλωση </i></h5>
Χρησιμοποιήστε την else if δήλωση για να ορίσετε μια νέα συνθήκη εάν η πρώτη ήταν ψευδής  false.
<br>
<figure>
  <figcaption>Σύνταξη</figcaption>
  <pre>
    <code>
if (condition1) {
  // block of code to be executed if condition1 is true
} else if (condition2) {
  // block of code to be executed if the condition1 is false and condition2 is true
} else {
  // block of code to be executed if the condition1 is false and condition2 is false
}
	</code>
  </pre>
</figure><br>
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
int time = 22;
if (time < 10) {
  System.out.println("Good morning.");
} else if (time < 20) {
  System.out.println("Good day.");
} else {
  System.out.println("Good evening.");
}
// Outputs "Good evening."
	</code>
  </pre>
</figure><br>
Επεξήγηση παραδείγματος 
Στο παραπάνω παράδειγμα, ο χρόνος (22) είναι μεγαλύτερος από το 10 οπότε η πρώτη συνθήκη είναι ψευδής false. Η επόμενη συνθήκη, στην else if δήλωση, είναι επίσης ψευδής false οπότε μεταφερόμαστε στην else δήλωση από τη στιγμή όπου οι συνθήκες 1 και 2 είναι ψευδείς false, και έτσι εκτυπώνουμε στην οθόνη "Good evening".
Ωστόσο, εάν η ώρα ήταν 14, το πρόγραμμα θα εκτύπωνε "Good day."
<br><small>σελίδα 2</small>','<h3><b>Κεφάλαιο 12 - Java If... Else δηλώσεις</b></h3>
<h5><i>To Short Hand If...Else (Ternary Operator) </i></h5>
Εάν έχετε μόνο μια γραμμή κώδικα να εκτελέσετε, μια για την if και μια για την else, μπορείτε να τα τοποθετήσετε όλα στην ίδια γραμμή:

<br>
<figure>
  <figcaption>Σύνταξη</figcaption>
  <pre>
    <code>
variable = (condition) ? expressionTrue : expressionFalse;
	</code>
  </pre>
</figure><br>

Αντί να γράψετε:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
int time = 20;
if (time < 18) {
  System.out.println("Good day.");
} else {
  System.out.println("Good evening.");
}
	</code>
  </pre>
</figure><br>
Μπορείτε απλά να γράψετε:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
int time = 20;
String result = (time < 18) ? "Good day." : "Good evening.";
System.out.println(result);
	</code>
  </pre>
</figure><br>
<small>σελίδα 3</small>');


CREATE TABLE chapter16(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL,
	page2 TEXT NOT NULL
);


insert into chapter16 values (2,'<h3><b>Κεφάλαιο 16 – Java Break και Java Continue</b></h3>
<h4><i>Java Break</i></h4>
Έχουμε ήδη δει τη δήλωση break σε προηγούμενο κεφάλαιο, όπου χρησιμοποιούταν για να «βγούμε» από τη δήλωση switch.
Η δήλωση break μπορεί να χρησιμοποιηθεί και για να «βγούμε» εκτός ενός βρόχου.
Αυτό το παράδειγμα κάνει έξοδο από τον βρόχο όταν το i  είναι ίσο με 4:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		for (int i = 0; i < 10; i++) {
  			if (i == 4) {
    				break;
  			}
  			System.out.println(i);
} 
</code>
  </pre>
</figure>
<br>
<h4><i>Java Continue</i></h4>
Η δήλωση continue σταματά μια επανάληψη (στον βρόχο) εάν συμβαίνει μια συγκεκριμένη συνθήκη, και συνεχίζει με την αμέσως επόμενη επανάληψη του βρόχου.
Στο παράδειγμα παραλείπεται η τιμή 4:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		for (int i = 0; i < 10; i++) {
  			if (i == 4) {
    				continue;
  			}
  			System.out.println(i);
} 
</code>
  </pre>
</figure>
<br>
<small>σελίδα 1</small>
','<h3><b>Κεφάλαιο 16 – Java Break και Java Continue</b></h3> <h4><i> Break και Continue στον While βρόχο </i></h4>
Μπορούμε να χρησιμοποιήσουμε τις break και continue στους while βρόχους:
<br>
<figure>
  <figcaption>Παράδειγμα break</figcaption>
  <pre>
    <code>
int i = 0;
while (i < 10) {
  	System.out.println(i);
 	i++;
 	if (i == 4) {
   		 break;
  	}
</code>
  </pre>
</figure>
<br>
<br>
<figure>
  <figcaption>Παράδειγμα continue</figcaption>
  <pre>
    <code>
int i = 0;
while (i < 10) {
  	if (i == 4) {
    		i++;
    		continue;
  	}
  	System.out.println(i);
  	i++;
} 
</code>
  </pre>
</figure>
<br>
<small>σελίδα 2</small>
');

CREATE TABLE chapter15(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL,
	page2 TEXT NOT NULL
);


insert into chapter15 values (2,'<h3><b>Κεφάλαιο 15 – Java For Βρόχος</b></h3> 
Όταν γνωρίζουμε πόσες φορές θέλουμε να εκτελεστεί ένα κομμάτι κώδικα, χρησιμοποιούμε τον for βρόγχο έναντι του while:
<h4><i> </i></h4>
<br>
<figure>
  <figcaption> Σύνταξη </figcaption>
  <pre>
    <code>
		for (statement 1; statement 2; statement 3) {
  // code block to be executed
}</code>
  </pre>
</figure>
<br>

Η 1η δήλωση εκτελείται μια φορά πριν την εκτέλεση του κώδικα στο εσωτερικό του βρόγχου.
Η 2η δήλωση καθορίζει την συνθήκη εκτέλεσης του κώδικα στο εσωτερικό του βρόγχου.
Η 3η δήλωση εκτελείται κάθε φορά αφότου έχει εκτελεστεί ο κώδικας στο εσωτερικό του βρόγχου.
Το παρακάτω Παράδειγμα θα εκτυπώσει τους αριθμούς από 0 εως 4.
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
		for (int i = 0; i < 5; i++) {
  System.out.println(i);
}
</code>
  </pre>
</figure>
<br>
<h4><i> Επεξήγηση παραδείγματος</i></h4>
Η δήλωση 1 θέτει μια μεταβλητή πριν την έναρξη του βρόγχου (int i = 0).
Η δήλωση 2 καθορίζει την συνθήκη εκτέλεσης του for βρόγχου (λιγότερο από 5). Εάν η συνθήκη είναι αληθής τότε υπάρχει επανάληψη του βρόγχου, αλλιώς για ψευδής, ο βρόχος τερματίζει.
Η δήλωση 3 αυξάνει την τιμή (i++) κάθε φορά που το κομμάτι κώδικα στο εσωτερικό του βρόγχου εκτελείται.
Αυτό το παράδειγμα θα εκτυπώσει μόνο τις τιμές από 0 έως 10:
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
		for (int i = 0; i <= 10; i = i + 2) {
  System.out.println(i);
}


</code>
  </pre>
</figure>
<br>
<small>σελίδα 1</small>
','<h3><b>Κεφάλαιο 15 – Java For Βρόχος</b></h3> <h4><i> For-Each Βρόχος</i> </h4> 
Υπάρχει, επίσης, ο "for-each" βρόχος που χρησιμοποιείται αποκλειστικά για την προσπέλαση των στοιχείων ενός πίνακα:
Στο παράδειγμα παραλείπεται η τιμή 4:
<br>
<figure>
  <figcaption> Σύνταξη
</figcaption>
  <pre>
    <code>
		for (type variable : arrayname) {
  // code block to be executed
}</code>
  </pre>
</figure>
<br>
Tο παρακάτω παράδειγμα εμφανίζει όλα τα στοιχεία του πίνακα cars χρησιμοποιώντας τον "for-each" βρόχο:
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
		String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
for (String i : cars) {
  System.out.println(i);
}

</code>
  </pre>
</figure>
<br>
Σημείωση: μην ανησυχείτε αν δεν καταλαβαίνετε το παραπάνω παράδειγμα. Θα μάθετε περισσότερα στο κεφάλαιο των Java πινάκων.
<br>
<small>σελίδα 2</small>
');

CREATE TABLE chapter13(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL,
	page2 TEXT NOT NULL
);


insert into chapter13 values (2,'<h3><b>Κεφάλαιο 13 – Java Switch </b></h3> 
Χρησιμοποιούμε τη switch δήλωση προκειμένου να επιλέξουμε ένα από πολλά μέρη κώδικα για εκτέλεση.
<br>
<figure>
  <figcaption> Σύνταξη </figcaption>
  <pre>
    <code>
		switch(expression) {
  case x:
    // code block
    break;
  case y:
    // code block
    break;
  default:
    // code block
}
</code>
  </pre>
</figure>
<br>
<h4><i> Πως δουλεύει: </i></h4>
Η switch έκφραση αξιολογείται μόνο μια φορά.
Η τιμή της έκφρασης συγκρίνεται με τις τιμές κάθε case.
Εάν υπάρχει αντιστοιχία το εμπλεκόμενο κομμάτι κώδικα εκτελείται.
Οι break και default λέξεις είναι προαιρετικές και θα μελετηθούν αργότερα στο κεφάλαιο.
Το παρακάτω παράδειγμα χρησιμοποιεί τους αριθμούς για κάθε ημέρα της εβδομάδας προκειμένου να βρει την ονομασία της συγκεκριμένης μέρας:
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
		int day = 4;
switch (day) {
  case 1:
    System.out.println("Monday");
    break;
  case 2:
    System.out.println("Tuesday");
    break;
  case 3:
    System.out.println("Wednesday");
    break;
  case 4:
    System.out.println("Thursday");
    break;
  case 5:
    System.out.println("Friday");
    break;
  case 6:
    System.out.println("Saturday");
    break;
  case 7:
    System.out.println("Sunday");
    break;
}
// Outputs "Thursday" (day 4)
</code>
  </pre>
</figure>
<br>
<small>σελίδα 1</small>
','<h3><b>Κεφάλαιο 13 – Java Switch </b></h3> <h4><i> Η λέξη break </i></h4>
Όταν η Java βρεθεί στη λέξη break , «βγαίνει» εκτός του switch κομματιού.
Αυτό θα σταματήσει την εκτέλεση περεταίρω κώδικα και του ελέγχου των case.
Όταν βρεθεί μια αντιστοιχία, τότε είναι ώρα για έξοδο (break). Δεν υπάρχει, πλέον, κάτι άλλο να ελέγξουμε.
Η λέξη break μπορεί να γλιτώσει αρκετό χρόνο εκτέλεσης καθώς αγνοεί την εκτέλεση του υπόλοιπου κώδικα στο switch κομμάτι.
<br>

<h4><i> Η λέξη default</i></h4>
Η λέξη default ορίζει την εκτέλεση κάποιου κώδικα σε περίπτωση που δεν υπάρχει αντιστοιχία:
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
		int day = 4;
switch (day) {
  case 6:
    System.out.println("Today is Saturday");
    break;
  case 7:
    System.out.println("Today is Sunday");
    break;
  default:
    System.out.println("Looking forward to the Weekend");
}
// Outputs "Looking forward to the Weekend"
</code>
  </pre>
</figure>
<br>
Σημειώστε ότι αν η δήλωση default χρησιμοποιείται στη τελευταία δήλωση του switch μέρους, δεν χρειάζεται να χρησιμοποιήσουμε τη break.
<br>
<small>σελίδα 2</small>
');

CREATE TABLE chapter18(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL,
	page2 TEXT NOT NULL
);


insert into chapter18 values (2,'<h3><b>Κεφάλαιο 18 – Java Εξαιρέσεις</b></h3> 
Όταν εκτελόυμε Java κώδικα μπορεί να συμβούν διάφορα λάθη όπως λάθη κώδικα από τον προγραματιστή, λάθη λόγω λανθασμένης εισόδου κ.ά.
Όταν συμβεί ένα λάθος, η Java κανονικά θα σταματήσει το πρόγραμμα και θα εμφανίσει μήνυμα λάθους. Η έκφραση που χρησιμοποιείται σε τέτοιες περιπτώσεις είναι ότι η Java θα «πετάξει» εξαίρεση <b>(Java will throw an exception)</b>.

<h4><i> Java try και catch</i></h4>
H try δήλωση επιτρέπει τον έλεγχο ενός μέρους κώδικα για λάθη ενώ αυτό εκτελείται.
Η catch δήλωση επιτρέπει την εκτέλεση κώδικα στην περίπτωση λάθους στο κομμάτι κώδικα μέσα στη try.
Οι try και catch λέξεις χρησιμοποιούνται ζευγάρια:

<br>
<figure>
  <figcaption> Σύνταξη </figcaption>
  <pre>
    <code>
		try {
  //  Block of code to try
}
catch(Exception e) {
  //  Block of code to handle errors
}
</code>
  </pre>
</figure>
<br>
Σκεφτείτε το παρακάτω παράδειγμα:
Το παρακάτω θα εμφανίσει λάθος, καθώς δεν υπάρχει το myNumbers[10]
<br>
<figure>
  <pre>
    <code>
	public class MyClass {
  public static void main(String[ ] args) {
    int[] myNumbers = {1, 2, 3};
    System.out.println(myNumbers[10]); // error!
  }
}
</code>
  </pre>
</figure>
<br>
Το μήνυμα θα είναι κάτι σαν αυτό:
<br>
<figure>
  <pre>
    <code> 
Exception in thread "main" java.lang.ArrayIndexOutOfBoundsException: 10
        at MyClass.main(MyClass.java:4)
</code>
  </pre>
</figure>
<br>
Εάν ένα λάθος συμβεί μπορούμε να χρησιμοποιήσουμε την try...catch προκειμένου να εντοπιστεί το λάθος και να αντιμετωπιστεί μέσω συγκεκριμένου κώδικα:
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
public class MyClass {
  public static void main(String[ ] args) {
    try {
      int[] myNumbers = {1, 2, 3};
      System.out.println(myNumbers[10]);
    } catch (Exception e) {
      System.out.println("Something went wrong.");
    }
  }
}
</code>
  </pre>
</figure>
<br>

<h4><i> Το αποτέλεσμα:</i></h4>
Something went wrong.

<br>
<small>σελίδα 1</small>
','<h3><b>Κεφάλαιο 18 – Java Εξαιρέσεις</b></h3> <h4><i> Η λέξη finally</i></h4>
Η finally δήλωση επιτρέπει να εκτελέσεις κώδικα αμέσως μετά την try...catch ανεξαρτήτου αποτελέσματος:
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code> 
public class MyClass {
  public static void main(String[] args) {
    try {
      int[] myNumbers = {1, 2, 3};
      System.out.println(myNumbers[10]);
    } catch (Exception e) {
      System.out.println("Something went wrong.");
    } finally {
      System.out.println("The try catch is finished.");
    }
  }
}

</code>
  </pre>
</figure>
<br>
<h4><i> Το αποτέλεσμα:</i></h4>
Something went wrong.
The try catch is finished. 

<h4><i> Η λέξη throw</i></h4>
Η throw δήλωση επιτρέπει την δημιουργία συγκεκριμένου λάθους. Αυτή συνοδεύεται με έναν τύπο εξαίρεσης (exception type). Υπάρχουν πολλοί και διάφοροι τύπου εξαιρέσεων στη Java όπως: ArithmeticException, ClassNotFoundException, ArrayIndexOutOfBoundsException, SecurityException, κλπ.
Ο τύπος εξαίρεσης χρησιμοποιείται συχνά μαζί με μια συγκεκριμένη μέθοδο που έχουμε δημιουργήσει. Μην ανησυχείτε αν δεν καταλαβαίνετε το παρακάτω παράδειγμα, θα μάθετε περισσότερα στο επόμενο κεφάλαιο για τις μεθόδους:

<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
«Πέτα» εξαίρεση εάν η ηλικία είναι μικρότερη από 18 (print "Access denied"). Εάν η ηλικία είναι μεγαλύτερη των 18 τότε print "Access granted":
  <pre>
    <code> 
public class MyClass {
  static void checkAge(int age) { 
    if (age < 18) {
      throw new ArithmeticException("Access denied - You must be at least 18 years old."); 
    }
    else {
      System.out.println("Access granted - You are old enough!"); 
    }
  } 

  public static void main(String[] args) { 
    checkAge(15); // Set age to 15 (which is below 18...)
  } 
}
</code>
  </pre>
</figure>
<br>
<h4><i> Το αποτέλεσμα:</i></h4><br>
<figure>
  <pre>
    <code> 
Exception in thread "main" java.lang.ArithmeticException: Access denied - You must be at least 18 years old.
        at MyClass.checkAge(MyClass.java:4)
        at MyClass.main(MyClass.java:12)
</code>
  </pre>
</figure>
<br>

Αν η ηλικία ήταν 20, δεν θα υπήρχε εξαίρεση:
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
checkAge(20);
</code>
  </pre>
</figure>
<br>
<h4><i> Το αποτέλεσμα:</i></h4>

Access granted - You are old enough!
<small>σελίδα 2</small>
');



CREATE TABLE chapter19(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL,
	page2 TEXT NOT NULL,
	page3 TEXT NOT NULL
);

insert into chapter19 values (3,'<h3><b>Κεφάλαιο 19 – Java μέθοδοι</b></h3> 
Η μέθοδος είναι ένα κομμάτι κώδικα που εκτελείται μόνο όταν το «καλέσουμε». Σε μια μέθοδο μπορείς να δώσεις ως είσοδο δεδομένα, τις λεγόμενες παραμέτρους. Οι μέθοδοι χρησιμοποιούνται για να εκτελέσουμε συγκερκιμένες ενέργειες. Συχνά αποκαλούνται και συναρτήσεις.
Γιατί χρησιμοποιούμε μεθόδους; Για να επαναχρησιμοποιήσουμε κώδικα!
<h4><i> Δημιουργία μιας μεθόδου</i></h4>	
Μια μέθοδος πρέπει να δηλωθεί μέσα σε μια τάξη. Δηλώνεται γράφοντας το όνομα της μεθόδους ακολουθούμενου παρενθέσεων (). Η ίδια η Java παρέχει κάποιες ήδη δηλωμένες μεθόδους, όμως η System.out.println(), ωστόσο μπορεί κανείς να δηιουργήσει και τις δικές του μεθόδους για να εκτελέσει μια σειρά ενεργειών.
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
public class MyClass {
  static void myMethod() {
    // code to be executed
  }
}
</code>
  </pre>
</figure>
<br>
<h4><i> Eπεξήγηση παραδείγματος</i></h4>
<b>myMethod()</b> = ονομασία μεθόδου
<b>static </b> σημαίνει ότι η μέθοδος ανήκει στην τάξη <i>MyClass</i> και δεν αποτελεί αντικείμενο της <i>MyClass</i> τάξη. Θα μάθετε περισσότερα για τα αντικείμενα στη συνέχεια.
<b>void</b> σημαίνει ότι η μέθοδος δεν επιστρέφει κάποιο αποτέλεσμα. Θα μάθετε περισσότερα για επιστρεφόμενες τιμές μεθόδων στη συνέχεια του κεφαλαίου.
<h4><i> Κλήση μεθόδου</i></h4>	
Για να καλέσετε μια μέθοδο στη Java, γράψτε το όνομα της ακολουθούμενου των παρενθέσεων () και ελληνικό ερωτηματικό ;
Στο παρακάτω παράδειγμα, η myMethod() χρησιμοποιείται για να εκτυπώσει ένα κείμενο (η ενέργεια) όταν αυτή καλείται:
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
public class MyClass {
  static void myMethod() {
    System.out.println("I just got executed!");
  }

  public static void main(String[] args) {
    myMethod();
  }
}

// Outputs "I just got executed!"

</code>
  </pre>
</figure>
<br>
Mια μέθοδος μπορεί να κληθεί αρκετές φορές:
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
public class MyClass {
  static void myMethod() {
    System.out.println("I just got executed!");
  }

  public static void main(String[] args) {
    myMethod();
    myMethod();
    myMethod();
  }
}

// I just got executed!
// I just got executed!
// I just got executed!

</code>
  </pre>
</figure>
<br>
<small>σελίδα 1</small>

','<h3><b>Κεφάλαιο 19 – Java μέθοδοι</b></h3> 
<h4><i> Παράμετροι </i></h4>	
Πληροφορίες μπορούν να περαστούν στις μεθόδους σαν παράμετροι. Οι παράμετροι ενεργούν σαν μεταβλητές μέσα σε μια μέθοδο.
Οι παράμετροι καθορίζονται αμέσως μετά το όνομα της μεθόδου , μέσα στις παρενθέσεις. Μπορείτε να περάσετε όσες παραμέτρους θέλετε αρκεί να τις χωρίσετε με κόμμα.
Το παρακάτω παράδειγμα έχει μια μέθοδο που παίρνει ως παράμετρο τη fname τύπου String. Όταν καλείται η μέθοδος, δίνουμε ένα όνομα το οποίο χρησιμοποιείται από αυτή για να εκτυπώσει το πλήρες όνομα:
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
public class MyClass {
  static void myMethod(String fname) {
    System.out.println(fname + " Refsnes");
  }

  public static void main(String[] args) {
    myMethod("Liam");
    myMethod("Jenny");
    myMethod("Anja");
  }
}
// Liam Refsnes
// Jenny Refsnes
// Anja Refsnes
</code>
  </pre>
</figure>
<br>
<h4><i> Επιστρεφόμενες τιμές </i></h4>
Η λέξη void, που χρησιμοποιείται στο παρακάτω παράδειγμα, υποδεικνύει ότι η μέθοδος δεν επιστρέφει κάποια τιμή. Εάν θελουμε να επιστρέφει τιμή πρέπει να χρησιμοποιήσουμε τους γνωστούς τύπους δεδομένων (όπως int, char, κλπ.) αντί για void, και να χρησιμοποιήσουμε τη λέξη return μέσα στη μέθοδο:
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
public class MyClass {
  static int myMethod(int x) {
    return 5 + x;
  }

  public static void main(String[] args) {
    System.out.println(myMethod(3));
  }
}
// Outputs 8 (5 + 3)

</code>
  </pre>
</figure>
<br>
Αυτό το παράδειγμα επιστρέφει το άθροισμα των 2 παραμέτρων της μεθόδου:
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
public class MyClass {
  static int myMethod(int x, int y) {
    return x + y;
  }

  public static void main(String[] args) {
    System.out.println(myMethod(5, 3));
  }
}
// Outputs 8 (5 + 3)
</code>
  </pre>
</figure>
<br>
Επίσης, προτείνεται να αποθηκεύεται το αποτέλεσμα σε μια μεταβλητή:
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
public class MyClass {
  static int myMethod(int x, int y) {
    return x + y;
  }

  public static void main(String[] args) {
    int z = myMethod(5, 3);
    System.out.println(z);
  }
}
// Outputs 8 (5 + 3)

</code>
  </pre>
</figure>
<br>
<small>σελίδα 2</small>
','<h3><b>Κεφάλαιο 19 – Java μέθοδοι</b></h3> 
<h4><i> Μια μέθοδος με If...Else</i></h4>	
Είναι συχνό να χρησιμοποιούμε τις συνθήκες if...else μέσα στις μεθόδους:
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
public class MyClass {

  // Create a checkAge() method with an integer variable called age
  static void checkAge(int age) {

    // If age is less than 18, print "access denied"
    if (age < 18) {
      System.out.println("Access denied - You are not old enough!"); 

    // If age is greater than 18, print "access granted"
    } else {
      System.out.println("Access granted - You are old enough!"); 
    }

  } 

  public static void main(String[] args) { 
    checkAge(20); // Call the checkAge method and pass along an age of 20
  } 
}

// Outputs "Access granted - You are old enough!"
</code>
  </pre>
</figure>
<br>
<small>σελίδα 3</small>');

CREATE TABLE chapter17(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL,
	page2 TEXT NOT NULL,
	page3 TEXT NOT NULL
);


insert into chapter17 values (3,'<h3><b>Κεφάλαιο 17 – Java πίνακες</b></h3> 
Οι πίνακες χρησιμοποιούνται για να αποθηκεύσουν πολλαπλές τιμές μέσα σε μια μεταβλητή, αντί να ορίζουμε ξεχωριστές μεταβλητές για κάθε τιμή.
Για να <i>δηλώσουμε έναν πίνακα</i>, δηλώνουμε τον τύπου του συνοδευόμενο με διπλές αγκύλες:
<b>String[] cars;</b>

Έχουμε τώρα ορίσει μια μεταβλητή που περιέχει έναν πίνακα από. Για να εισάγουμε δεδομένα πρέπει να τοποθετήσουμε τις τιμές, με κόμματα ενδιάμεσα, μέσα σε αγκύλες:
<b>String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};</b>

Για να δημιουργήσουμε πίνακα ακεραίων integers:
<b>int[] myNum = {10, 20, 30, 40};</b>


<h4><i> Πρόσβαση στα στοιχεία πίνακα</i></h4>	
Για να έχουμε πρόσβαση σε δεδομένα πίνακα, πρέπει αν αναφερθούμε στη θέση του κάθε στοιχείου.
Η παρακάτω δήλωση δίνει πρόσβαση στη πρώτη τιμή του πίνακα cars:
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
System.out.println(cars[0]);
// Outputs Volvo

</code>
  </pre>
</figure>
<br>
Σημείωση: οι θέσεις των πινάκων ξεκινούν από το 0: [0] είναι το πρώτο στοιχείο. [1] είναι το δεύτερο στοιχείο κλπ.
<br>
<h4><i>Αλλαγή ενός στοιχείου πίνακα</i></h4>
Για να αλλάξουμε ένα συγκεκριμένο στοιχείο, πρέπει να αναφερθούμε στη συγκεκριμένη θέση που βρίσκεται:
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
cars[0] = "Opel";</code>
  </pre>
</figure>
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
cars[0] = "Opel";
System.out.println(cars[0]);
// Now outputs Opel instead of Volvo

</code>
  </pre>
</figure>
<br>

<h4><i>Μήκος πίνακα</i></h4>
Για να βρούμε πόσα στοιχεία έχει ένας πίνακας χρησιμοποιούμε την length ιδιότητα:
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
System.out.println(cars.length);
// Outputs 4

</code>
  </pre>
</figure>
<br>

<small>σελίδα 1</small>
','<h3><b>Κεφάλαιο 17 – Java πίνακες</b></h3> 
<h4><i> Επανάληψη μέσα σε έναν πίνακα</i></h4>	
Μπορούμε να προσπελάσουμε τα στοιχεία ενός πίνακα μέσω του for βρόχου και να χρησιμοποιήσουμε την ιδιότητα length για να ορίσουμε πόσες φορές θα γίνει επανάληψη, ή αλλιώς πότε θα τερματίσει ο παραπάνω βρόχος.
Το παρακάτω παράδειγμα εκτυπώνει όλα τα στοιχεία του πίνακα cars:
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
for (int i = 0; i < cars.length; i++) {
  System.out.println(cars[i]);
}

</code>
  </pre>
</figure>
<h4><i>
Επανάληψη μέσα σε έναν πίνακα με τον For-Each
</i></h4>
Υπάρχει, επίσης, και ο "for-each" βρόχος, ο οποίος χρησιμοποιείται αποκλειστικά για να προσπελάσουμε όλα τα στοιχεία ενός πίνακα:
<br>
<figure>
  <figcaption> Σύνταξη </figcaption>
  <pre>
    <code>
for (type variable : arrayname) {
  ...
}
</code>
  </pre>
</figure>
<br>
Το παρακάτω παράδειγμα εκτυπώνει όλα τα στοιχεία του πίνακα cars χρησιμοποιώντας τον "for-each" βρόχο:
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
for (String i : cars) {
  System.out.println(i);
}

</code>
  </pre>
</figure>
<br>
Το παράδειγμα παραπάνω μπορεί να μεταφραστεί και ως εξής: for each String στοιχείο (ας το καλέσουμε i) στον πίνακα cars, εκτύπωση τη τιμή i.
Εάν κάποιος συγκρίνει τον βρόχο for με τον for-each, θα κατανοήσει ότι η for-each μέθοδος είναι πιο εύκολη στη συγγραφή καθώς δεν χρειάζεται μετρητή (χρησιμοποιώντας την ιδιότητα length) και είναι πιο ευανάγνωστο.

<small>σελίδα 2</small>
','<h3><b>Κεφάλαιο 17 – Java πίνακες</b></h3> 
<h4><i> Πολυδιάστατοι πίνακες </i></h4>	
Ένας πολυδιάστατος πίνακας περιέχει έναν ή περισσότερους πίνακες.
Για να δημιουργήσουμε έναν δισδιάστατο πίνακα, προσθέστε κάθε πίνακα (που βρίσκεται μέσα σε αγκύλες) μέσα σε αγκύλες:
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
int[][] myNumbers = { {1, 2, 3, 4}, {5, 6, 7} };

</code>
  </pre>
</figure>
Ο myNumbers είναι πλέον ένας πίνακας με δύο πίνακες ως στοιχεία του.
Για να υπάρξει πρόσβαση στον πίνακα myNumbers ορίζουμε 2 μετρητές: έναν για τον πίνακα και έναν για το στοιχείο μέσα στον πίνακα. Στο παρακάτω παράδειγμα έχουμε πρόσβαση στο τρίτο στοιχείο (2) του δεύτερο πίνακα (1) myNumbers:
<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
int[][] myNumbers = { {1, 2, 3, 4}, {5, 6, 7} };
int x = myNumbers[1][2];
System.out.println(x); // Outputs 7

</code>
  </pre>
</figure>
<br>
Μπορούμε επίσης να χρησιμοποιήσουμε τον for loop μέσα σε άλλον for loop για να πάρουμε τα στοιχεία ενός δισδιάστατου πίνακα (και πάλι πρέπει να «δείχνουμε» στους δυο μετρητές):
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code>
public class MyClass {
  public static void main(String[] args) {
    int[][] myNumbers = { {1, 2, 3, 4}, {5, 6, 7} };
    for (int i = 0; i < myNumbers.length; ++i) {
      for(int j = 0; j < myNumbers[i].length; ++j) {
        System.out.println(myNumbers[i][j]);
      }
    }
  }
}

</code>
  </pre>
</figure>
<br>
<small>σελίδα 3</small>
');




CREATE TABLE chapter14(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL
);



insert into chapter14 values (1,'<h3><b>Κεφάλαιο 14 – Java Βρόχοι (While βρόχος) </b></h3> 
Οι βρόχοι εκτελούν ένα μέρος κώδικα όσο μια συνθήκη ικανοποιείται.

<h4><i> While βρόχος </i></h4> 
Ο while βρόχος εκτελείται όσο μια συγκεκριμένη συνθήκη είναι αληθής (true):
<br>
<figure>
  <figcaption> Σύνταξη  </figcaption>
  <pre>
    <code> 
while (condition) {
  // code block to be executed
}
</code>
  </pre>
</figure>
<br>
Στο παρακάτω παράδειγμα, ο κώδικας στον βρόχο θα εκτελείται μέχρις ότου μια μεταβλητή (i) είναι λιγότερο από 5:

<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code> 
int i = 0;
while (i < 5) {
  System.out.println(i);
  i++;
}
</code>
  </pre>
</figure>
<br>
Σημείωση: Μην ξεχάσετε να αυξήσετε την μεταβλητή της συνθήκης αλλιώς ο βρόχος δεν θα τερματίσει ποτέ!
<br>

<h4><i> Do/While βρόχος</i></h4> 
Ο βρόχος do/while είναι μια διαφοροποίηση του while βρόχου. Ο συγκεκριμένος βρόχος θα εκτελεστεί τουλάχιστον μια φορά, δηλαδή πριν καν ελέγξει αν η συνθήκη είναι αληθής. Όπως συμβαίνει και με τον while βρόχο, θα συνεχίζει την εκτέλεση του όσο η συνθήκη είναι αληθής.
<br>
<figure>
  <figcaption> Σύνταξη  </figcaption>
  <pre>
    <code> 
do {
  // code block to be executed
}
while (condition);

</code>
  </pre>
</figure>
<br>
Το παρακάτω παράδειγμα χρησιμοποιεί τον do/while βρόχο. Ο βρόχος εκτελείται πάντοτε τουλάχιστον μια φορά ακόμη και αν η συνθήκη είναι ψευδής καθώς ο κώδικας στο εσωτερικό του βρόχου εκτελείται πριν ελεγχθεί η συνθήκη:

<br>
<figure>
  <figcaption> Παράδειγμα </figcaption>
  <pre>
    <code> 
int i = 0;
do {
  System.out.println(i);
  i++;
}
while (i < 5);

</code>
  </pre>
</figure>
<br>
Μην ξεχάσετε να αυξήσετε τη τιμή της μεταβλητής της συνθήκης, αλλιώς ο επαναληπτικός βρόχος δεν θα τερματίσει ποτέ!
<br>')

CREATE TABLE test1(
	exercise TEXT NOT NULL,
	answer TEXT NOT NULL
);

insert into test1 (exercise, answer) values ('Εισάγετε το κομμάτι που λείπει από τον παρακάτω κώδικα για να εξάγετε "Hello World".
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
		public class MyClass {
			public static void main(String[] args) {
				<input type="text" name="answer1"> ("Hello World");
			}
		}
	</code>
  </pre>
</figure>
<br>','System.out.println');

insert into test1 (exercise, answer) values ('Εισάγετε το κομμάτι που λείπει από τον παρακάτω κώδικα για να εξάγετε "Hi there".
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
		public class MyClass {
			public static void main(String[] args) {
				System.out.println("<input type="text" name="answer2">");
			}
		}
	</code>
  </pre>
</figure>
<br>','Hi there');

insert into test1 (exercise, answer) values ('Εισάγετε το κομμάτι που λείπει από τον παρακάτω κώδικα για να εκτελεστεί η εντολή System.out.println().
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
		public class MyClass {
			public static void <input type="text" name="answer3">(String[] args) {
				System.out.println("Hello World");
			}
		}
	</code>
  </pre>
</figure>
<br>','main');

insert into test1 (exercise, answer) values ('Εισάγετε το κομμάτι που λείπει από τον παρακάτω κώδικα για να εκτελεστεί η εντολή System.out.println().
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
		public class MyClass {
			public static void main(<input type="text" name="answer3">) {
				System.out.println("Hello World");
			}
		}
	</code>
  </pre>
</figure>
<br>','String[] args');

CREATE TABLE test2(
	exercise TEXT NOT NULL,
	answer TEXT NOT NULL
);

insert into test2 (exercise, answer) values ('Τοποθετήστε το κομμάτι που λείπει για να δημιουργήσετε σχόλιο μιας γραμμής.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
		<input type="text" name="answer1">This is a single-line comment
	</code>
  </pre>
</figure>
<br>','//');

insert into test2 (exercise, answer) values ('Τοποθετήστε το κομμάτι που λείπει για να δημιουργήσετε σχόλιο πολλαπλών γραμμών.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
		<input type="text" name="answer2">This is a multi-line comment */
	</code>
  </pre>
</figure>
<br>','/*');

insert into test2 (exercise, answer) values ('Τοποθετήστε το κομμάτι που λείπει για να δημιουργήσετε σχόλιο πολλαπλών γραμμών.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
		/* This is a multi-line comment <input type="text" name="answer3">
	</code>
  </pre>
</figure>
<br>','*/');

CREATE TABLE test3(
	exercise TEXT NOT NULL,
	answer TEXT NOT NULL
);

insert into test3 (exercise, answer) values ('Δημιουργήστε μια μεταβλητή με το όνομα "myAge" στην οποία θα σώζεται η παρακάτω τιμή.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
		public class MyClass {
			public static void main(String[] args) {
				int <input type="text" name="answer1"> = 22;
			}
		}
	</code>
  </pre>
</figure>
<br>','myAge');

insert into test3 (exercise, answer) values ('Αναθέστε στην παρακάτω μεταβλητή την τιμή "Java".
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
		public class MyClass {
			public static void main(String[] args) {
				String myTutorial = <input type="text" name="answer2">;
			}
		}
	</code>
  </pre>
</figure>
<br>','"Java"');

insert into test3 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτυπωθεί το άθροισμα των μεταβλητών.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
		public class MyClass {
			public static void main(String[] args) {
				int num1 = 3;
				int num2 = 7;
				System.out.println(num1 <input type="text" name="answer3"> num2);
			}
		}
	</code>
  </pre>
</figure>
<br>','+');

insert into test3 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτυπωθεί "Hello World".
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
		public class MyClass {
			public static void main(String[] args) {
				String str1 = "Hello ";
				String str2 = <input type="text" name="answer4">;
				System.out.println(str1 + str2);
			}
		}
	</code>
  </pre>
</figure>
<br>','"World"');


CREATE TABLE test4(
	exercise TEXT NOT NULL,
	answer TEXT NOT NULL
);


insert into test4 (exercise, answer) values ('Αρχικοποιήστε την παρακάτω μεταβλητή με τον σωστό τύπο μεταβλητής.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
		public class MyClass {
			public static void main(String[] args) {
				<input type="text" name="answer1"> myVar = ΄A΄;
			}
		}
	</code>
  </pre>
</figure>
<br>','char');

insert into test4 (exercise, answer) values ('Αρχικοποιήστε την παρακάτω μεταβλητή με τον σωστό τύπο μεταβλητής.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
		public class MyClass {
			public static void main(String[] args) {
				<input type="text" name="answer2"> myVar = true;
			}
		}
	</code>
  </pre>
</figure>
<br>','boolean');

insert into test4 (exercise, answer) values ('Αρχικοποιήστε την παρακάτω μεταβλητή με τον σωστό τύπο μεταβλητής.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
		public class MyClass {
			public static void main(String[] args) {
				<input type="text" name="answer3"> myVar = "123456789";
			}
		}
	</code>
  </pre>
</figure>
<br>','String');

CREATE TABLE test5(
	exercise TEXT NOT NULL,
	answer TEXT NOT NULL
);

insert into test5 (exercise, answer) values ('Κάντε manual casting τύπο από double σε int.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
		public class MyClass {
			public static void main(String[] args) {
				double myDouble = 9.78;
				int myInt = <input type="text" name="answer1"> myDouble;
  }
}
	</code>
  </pre>
</figure>
<br>','(int)');

insert into test5 (exercise, answer) values ('Κάντε automatic casting τύπο από int σε double.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
		public class MyClass {
			public static void main(String[] args) {
				int myInt = 9;
				<input type="text" name="answer2"> myDouble = myInt;
  }
}
	</code>
  </pre>
</figure>
<br>','double');

insert into test5 (exercise, answer) values ('Κάντε automatic casting την μεταβλητή myInt στην myDouble.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
		public class MyClass {
			public static void main(String[] args) {
				int myInt = 9;
				double myDouble = <input type="text" name="answer3">;
  }
}
	</code>
  </pre>
</figure>
<br>','myInt');

CREATE TABLE test6(
	exercise TEXT NOT NULL,
	answer TEXT NOT NULL
);

insert into test6 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτυπωθεί το γινόμενο των 2 αριθμών.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>

			System.out.println(10 <input type="text" name="answer1"> 5);
	</code>
  </pre>
</figure>
<br>','*');

insert into test6 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτυπωθεί το υπόλοιπο της διαίρεσης των 2 αριθμών.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>

			System.out.println(9 <input type="text" name="answer2"> 5);
	</code>
  </pre>
</figure>
<br>','%');

insert into test6 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να προστεθεί στην μεταβλητή ο αριθμός 5 χρησιμοποιώντας έναν operator.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
			int x = 10;
			x <input type="text" name="answer3"> 5;
	</code>
  </pre>
</figure>
<br>','+=');

CREATE TABLE test7(
	exercise TEXT NOT NULL,
	answer TEXT NOT NULL
);

insert into test7 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτυπωθεί το μήκος του String.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
			String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
			System.out.println("The length is: " + txt.<input type="text" name="answer1">);
	</code>
  </pre>
</figure>
<br>','length()');

insert into test7 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτυπωθεί το String με μικρα γράμματα.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
			String str = "HELLO";
			System.out.println(str.<input type="text" name="answer2">);
	</code>
  </pre>
</figure>
<br>','toLowerCase()');

insert into test7 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτυπωθεί το String με κεφαλαία γράμματα.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
			String str = "hello";
			System.out.println(str.<input type="text" name="answer3">);
	</code>
  </pre>
</figure>
<br>','toUpperCase()');

insert into test7 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτυπωθεί το String σε 2 γραμμές
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
			String str = "Ηello <input type="text" name="answer4"> World";
			System.out.println(str);
	</code>
  </pre>
</figure>
<br>','\n');


CREATE TABLE test8(
	exercise TEXT NOT NULL,
	answer TEXT NOT NULL
);

insert into test8 (exercise, answer) values ('Χρησιμοποιήστε την σωστή μέθοδο για να βρεθεί ο μεγαλύτερος αριθμός μεταξύ των παρακάτω μεταβλητών.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
			int x = 5;
			int y = 10;
			Math.<input type="text" name="answer1">(x,y);
	</code>
  </pre>
</figure>
<br>','max');

insert into test8 (exercise, answer) values ('Χρησιμοποιήστε την σωστή μέθοδο για να βρεθεί ο μικρότερος αριθμός μεταξύ των παρακάτω μεταβλητών.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
			int x = 11;
			int y = 10;
			Math.<input type="text" name="answer2">(x,y);
	</code>
  </pre>
</figure>
<br>','min');

insert into test8 (exercise, answer) values ('Χρησιμοποιήστε την σωστή μέθοδο για να βρεθεί η τετραγωνική ρίζα του αριθμού.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>

			Math.<input type="text" name="answer3">(9);
	</code>
  </pre>
</figure>
<br>','sqrt');


CREATE TABLE test9(
	exercise TEXT NOT NULL,
	answer TEXT NOT NULL
);

insert into test9 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε η μεταβλητή "myVar" να πάρει την τιμή αληθής.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
			boolean myVar = <input type="text" name="answer1">;
	</code>
  </pre>
</figure>
<br>','true');

insert into test9 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε η μεταβλητή "myVar" να επιτρέπεται να πάρει την τιμή ψευδής.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
			<input type="text" name="answer2"> myVar = false;
	</code>
  </pre>
</figure>
<br>
','boolean');

insert into test9 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε η τιμή ψευδής να εκχωρηθεί σε μια μεταβλητή με το όνομα myB.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
			boolean <input type="text" name="answer3"> = false;
	</code>
  </pre>
</figure>
<br>
','myB');


CREATE TABLE test10(
	exercise TEXT NOT NULL,
	answer TEXT NOT NULL
);

insert into test10 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να ελέγχεται αν η μεταβλητή x είναι μεγαλύτερη απο την μεταβλητή y.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
			int x = 50;
			int y = 10;
			if(x <input type="text" name="answer1"> y){
				System.out.println("x bigger than y");
			}
	</code>
  </pre>
</figure>
<br>','>');

insert into test10 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτελείται ο παρακάτω έλεγχος.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
			int x = 10;
			int y = 10;
			<input type="text" name="answer2">(x == y){
				System.out.println("x equal to y");
			}
	</code>
  </pre>
</figure>
<br>','if');

insert into test10 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτελείται ο παρακάτω έλεγχος.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
			int age = 22;
			if (age >= 18 ){
				System.out.println("Adult");
			}
			<input type="text" name="answer3">{
				System.out.println("Underage");
			}
	</code>
  </pre>
</figure>
<br>','else');

insert into test10 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτελείται ο παρακάτω έλεγχος.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
			int age = 22;
			String agegroup = (age >= 18) <input type="text" name="answer4"> "Adult." : "Underage.";
			System.out.println(agegroup);
	</code>
  </pre>
</figure>
<br>','?');


CREATE TABLE test11(
	exercise TEXT NOT NULL,
	answer TEXT NOT NULL
);

insert into test11 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτελείται η παρακάτω switch δήλωση.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
			int age = 22;
			<input type="text" name="answer1">(age){
				case 22:
					System.out.println("Same age.");
				default:
					System.out.println("Different age.");
			}
	</code>
  </pre>
</figure>
<br>','switch');

insert into test11 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτελείται η παρακάτω switch δήλωση.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
			int age = 22;
			switch(age){
				<input type="text" name="answer2"> 22:
					System.out.println("Same age.");
				default:
					System.out.println("Different age.");
			}
	</code>
  </pre>
</figure>
<br>','case');

insert into test11 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτελείται η παρακάτω switch δήλωση.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
			int age = 22;
			switch(age){
				case 22:
					System.out.println("Same age.");
				<input type="text" name="answer3">:
					System.out.println("Different age.");
			}
	</code>
  </pre>
</figure>
<br>','default');

insert into test11 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτελείται η παρακάτω switch δήλωση με break.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
			int age = 22;
			switch(age){
				case 22:
					System.out.println("Same age.");
					<input type="text" name="answer4">;
				default:
					System.out.println("Different age.");				
			}
	</code>
  </pre>
</figure>
<br>','break');

CREATE TABLE test12(
	exercise TEXT NOT NULL,
	answer TEXT NOT NULL
);

insert into test12 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτελείται ο παρακάτω while βρόγχος.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>	
			boolean myVar = true;
			<input type="text" name="answer1">(myVar){
				System.out.println(true); 
			}
	</code>
  </pre>
</figure>
<br>
','while');

insert into test12 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτελείται ο παρακάτω while βρόγχος 5 φορές.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
			int i = 0;
			while(i < 5){
				System.out.println(i);
				<input type="text" name="answer2">++;
			}
	</code>
  </pre>
</figure>
<br>','i');

insert into test12 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτελείται ο παρακάτω do... while βρόγχος.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
			int i = 0;
			<input type="text" name="answer3">{
				System.out.println(i);
				i++;
			}while(i < 5)
	</code>
  </pre>
</figure>
<br>','do');

CREATE TABLE test13(
	exercise TEXT NOT NULL,
	answer TEXT NOT NULL
);

insert into test13 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτελείται ο παρακάτω for βρόγχος.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>	
			<input type="text" name="answer1">(i=0;i<10;i++){
				System.out.println(i); 
			}
	</code>
  </pre>
</figure>
<br>
','for');

insert into test13 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτελείται ο παρακάτω for βρόγχος 10 φορές.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>	
			for(i=0;i<input type="text" name="answer2">10;i++){
				System.out.println(i); 
			}
	</code>
  </pre>
</figure>
<br>','<');

insert into test13 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτελείται ο παρακάτω for βρόγχος με βήμα 1 χρησιμοποιώντας έναν operator.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>	
			for(i=0;i<10;i<input type="text" name="answer3">){
				System.out.println(i); 
			}
	</code>
  </pre>
</figure>
<br>','++');

insert into test13 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτελείται ο παρακάτω for - each βρόγχος και να εκτυπώνει τα στοιχεία του πίνακα colors.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>
			String[] colors = {"Black", "White", "Red"};
			for (String c <input type="text" name="answer4"> colors){
				System.out.println(c);
			}
	</code>
  </pre>
</figure>
<br>',':');


CREATE TABLE test14(
	exercise TEXT NOT NULL,
	answer TEXT NOT NULL
);

insert into test14 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε ο βρόγχος να σταματάει όταν η δήλωση του if γίνει αληθής.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>	
		for (int i = 0; i < 10; i++) {
			if (i == 5) {  
				<input type="text" name="answer1">;
			}
			System.out.println(i); 
		}
	</code>
  </pre>
</figure>
<br>','break');

insert into test14 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε ο βρόγχος να μην εκτελέσει την επανάληψη όταν η δήλωση του if γίνει αληθής.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>	
		int i = 0;
		while (i < 10) {
			if (i == 5) { 
				i++;			
				<input type="text" name="answer2">;
			}
			System.out.println(i); 
			i++;
		}
	</code>
  </pre>
</figure>
<br>','continue');

insert into test14 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε ο βρόγχος να μην εκτυπωθεί ο αριθμός 4.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>	
		int i = 0;
		while (i < 10) {
			if (i <input type="text" name="answer3"> 4) { 
				i++;			
				continue;
			}
			System.out.println(i); 
			i++;
		}
	</code>
  </pre>
</figure>
<br>','==');



CREATE TABLE test15(
	exercise TEXT NOT NULL,
	answer TEXT NOT NULL
);

insert into test15 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να τυπώνεται το μήκος του πίνακα.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>	
		String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
		System.out.println(cars.<input type="text" name="answer1">;);
	</code>
  </pre>
</figure>
<br>','length');

insert into test15 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε ο βρόγχος να τυπώνει όλα τα στοιχεία του πίνακα.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>	
		String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
		for (String i : <input type="text" name="answer2">) {
		  System.out.println(i);
		}
	</code>
  </pre>
</figure>
<br>','cars');

insert into test15 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να αρχικοποιείται σωστά ο δισδιάστατος πίνακας.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>	
		int<input type="text" name="answer3"> myNumbers = { {1, 2, 3, 4}, {5, 6, 7} };
	</code>
  </pre>
</figure>
<br>','[][]');

CREATE TABLE test16(
	exercise TEXT NOT NULL,
	answer TEXT NOT NULL
);

insert into test16 (exercise, answer) values ('Συμπληρώστε τον κώδικα της δήλωσης try.. catch.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>	
		<input type="text" name="answer1"> {
		  int[] myNumbers = {1, 2, 3};
		  System.out.println(myNumbers[10]);
		} catch (Exception e) {
		  System.out.println("Something went wrong.");
		}
	</code>
  </pre>
</figure>
<br>','try');

insert into test16 (exercise, answer) values ('Συμπληρώστε τον κώδικα της δήλωσης try.. catch.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>	
		try {
		  int[] myNumbers = {1, 2, 3};
		  System.out.println(myNumbers[10]);
		} <input type="text" name="answer2"> (Exception e) {
		  System.out.println("Something went wrong.");
		}
	</code>
  </pre>
</figure>
<br>','catch');

insert into test16 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτελείται ένα κομμάτι του κώδικα ανεξαρτήτως αποτελέσματος.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>	
		try {
		  int[] myNumbers = {1, 2, 3};
		  System.out.println(myNumbers[10]);
		}catch (Exception e) {
		  System.out.println("Something went wrong.");
		}<input type="text" name="answer3">{
			System.out.println("The ΄try catch΄ is finished.");
		}
	</code>
  </pre>
</figure>
<br>','finally');


CREATE TABLE test17(
	exercise TEXT NOT NULL,
	answer TEXT NOT NULL
);

insert into test17 (exercise, answer) values ('Συμπληρώστε τον κώδικα ώστε να εκτελεστεί η πρόσθεση από την μέθοδο myMethod.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>	
		public class MyClass {
		  static int myMethod(int x, int y) {
			return x + y;
		  }

		  public static void main(String[] args) {
			System.out.println(<input type="text" name="answer1">(5, 3));
		  }
		}
	</code>
  </pre>
</figure>
<br>','myMethod');

insert into test17 (exercise, answer) values ('Συμπληρώστε τον κώδικα της μεθόδου ώστε να επιστρέφει αληθής ή ψευδείς.
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>	
		public class MyClass {
		  static <input type="text" name="answer2"> isAdult(int age) {
			if (age >= 18 )
				return true;
			else
				return false
		  }

		  public static void main(String[] args) {
			int myAge = 22;
			System.out.println(isAdult(myAge));
		  }
		}
	</code>
  </pre>
</figure>
<br>','boolean');

insert into test17 (exercise, answer) values ('Συμπληρώστε τον κώδικα της μεθόδου ώστε να δέχεται την τιμή που της περνάμε στην main().
<br>
<figure>
  <figcaption>Άσκηση</figcaption>
  <pre>
    <code>	
		public class MyClass {
		  static void myPrinter(<input type="text" name="answer3"> message) {
			System.out.println(message);
		  }

		  public static void main(String[] args) {
			myPrinter("Hello World!");
		  }
		}
	</code>
  </pre>
</figure>
<br>','String');


CREATE TABLE chapter1(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL
);

insert into chapter1 (pages,page1) values('1','<h3><b>Κεφάλαιο 1 -Εισαγωγή στην Γλώσσα Προγραμματισμού JAVA</b></h3>
<h4><i>Τι είναι η Java;</i></h4>
Η Java είναι μια δημοφιλής γλώσσα προγραμματισμού, που δημιουργήθηκε το 1995. Η Java είναι μια γενικού σκοπού γλώσσα προγραμματισμού που είναι βασισμένη σε κλάσεις, αντικειμενοστραφής και έχει σχεδιαστεί έτσι ώστε να έχει όσο το δυνατόν λιγότερες εξαρτήσεις κατά την εκτέλεση. Δηλαδή οι προγραμματιστές μπορούν να τρέξουν κώδικα Java σε όλες τις πλατφόρμες που την υποστηρίζουν χωρίς να χρειάζεται να ξανά-συνταχθεί.<br>Χρησιμοποιείται για:<ul><li>Κινητές εφαρμογές (ειδικά εφαρμογές Android)</li>
<li>Εφαρμογές επιφάνειας εργασίας</li>
<li>Εφαρμογές Web</li>
<li>Διακομιστές Web και διακομιστές εφαρμογών</li>
<li>Παιχνίδια</li><li>Σύνδεση βάσης δεδομένων</li>
<li>Και πολλά ακόμη!</li>
</ul>Γιατί να χρησιμοποιήσετε τη Java;<ul>
<li>Η Java λειτουργεί σε διαφορετικές πλατφόρμες (Windows, Mac, Linux, Raspberry Pi κ.λπ.)</li>
<li>Είναι μια από τις πιο δημοφιλείς γλώσσες προγραμματισμού στον κόσμο</li>
<li>Είναι εύκολο να την μάθει κάποιος και να την χρησιμοποιήσει</li>
<li>Είναι ανοιχτού κώδικα και δωρεάν</li><li>Είναι ασφαλής, γρήγορη και ισχυρή</li>
<li>Έχει τεράστια υποστήριξη από την κοινότητα (δεκάδες εκατομμύρια προγραμματιστών)</li>
<br><small>σελίδα 1</small>');

CREATE TABLE chapter2(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL,
	page2 TEXT NOT NULL
);

insert into chapter2 (pages,page1,page2) values('2','<h3><b>Κεφάλαιο 2 - Γρήγορη εκκίνηση με την Java</b></h3>
<h4><i>Εισαγωγή στην Java</i></h4>
Σε περίπτωση που δεν είστε σίγουροι αν έχετε στο μηχάνημά σας Java, τρέξτε στην Γραμμή εντολών την εξής εντολή “java -version” για να δείτε ποια έκδοση της Java έχετε (Η εντολή λειτουργεί και σε Windows και Linux). Διαφορετικά κατεβάστε την από την σελίδα https://www.java.com .
Μετά από αυτό σας προτείνουμε να κατεβάσετε μια εφαρμογή integrated development environment (IDE) για την Java, όπου μπορείτε εύκολα να γράψετε και να εκτελέσετε κώδικα Java. Από τα πιο διάσημα εργαλεία προγραμματισμού τέτοιου τύπου είναι το Eclipse, IntelliJ IDEA, NetBeans, Codenvy και Visual Studio Code.
<br>
<small>σελίδα 1</small>','<h3><b>Κεφάλαιο 2 - Γρήγορη εκκίνηση με την Java</b></h3>
<h4><i>Εισαγωγή στον προγραμματισμό με Java</i></h4>
Στην Java, κάθε εφαρμογή αρχίζει με ένα όνομα κλάσης και αυτή η κλάση πρέπει να ταιριάζει με το όνομα αρχείου.
<br>
Ας δημιουργήσουμε το πρώτο αρχείο Java που ονομάζεται MyClass.java. Το αρχείο πρέπει να περιέχει ένα μήνυμα "Hello World", το οποίο είναι γραμμένο με τον ακόλουθο κώδικα:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		public class MyClass {
		  public static void main(String[] args) {
			System.out.println("Hello World");
		  }
		}
	</code>
  </pre>
</figure>
<br>
Μην ανησυχείτε αν δεν καταλαβαίνετε τον παραπάνω κώδικα - θα τον αναλύσουμε λεπτομερώς σε επόμενα κεφάλαια.
<br>
<small>σελίδα 2</small>');

CREATE TABLE chapter3(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL,
	page2 TEXT NOT NULL
);

insert into chapter3 (pages,page1,page2) values('2','<h3><b>Κεφάλαιο 3 – Σύνταξη στην Java</b></h3>
<h4><i>Σύνταξη</i></h4>
Στο προηγούμενο κεφάλαιο δημιουργήσαμε ένα αρχείο Java που ονομάζεται MyClass.java και χρησιμοποιήσαμε τον ακόλουθο κώδικα για να εκτυπώσετε την οθόνη "Hello World" στην οθόνη:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		public class MyClass {
		  public static void main(String[] args) {
			System.out.println("Hello World");
		  }
		}
</code>
  </pre>
</figure>
<br>
<h4><i>Επεξήγηση του παραδείγματος</i></h4>
Κάθε γραμμή κώδικα που τρέχει σε Java πρέπει να είναι μέσα σε μια τάξη. Στο παράδειγμά μας, ονομάσαμε την κλάση MyClass. Μια κλάση πρέπει πάντα να ξεκινά με ένα πρώτο κεφαλαίο γράμμα.
<br>
Σημείωση: Η Java κάνει διάκριση πεζών-κεφαλαίων: "MyClass" και "myclass" έχουν διαφορετική σημασία.
<br>
Το όνομα του αρχείου java πρέπει να ταιριάζει με το όνομα της κλάσης. Κατά την αποθήκευση του αρχείου, αποθηκεύστε το χρησιμοποιώντας το όνομα της κλάσης και προσθέστε το ".java" στο τέλος του ονόματος αρχείου. Για να εκτελέσετε το παραπάνω παράδειγμα στον υπολογιστή σας, βεβαιωθείτε ότι η Java έχει εγκατασταθεί σωστά: Μεταβείτε στο κεφάλαιο Γρήγορη Εκκίνηση για τον τρόπο εγκατάστασης της Java. Η έξοδος πρέπει να είναι: Hello World
<br>
<small>σελίδα 1</small>','<h3><b>Κεφάλαιο 3 – Σύνταξη στην Java</b></h3>
<h4><i>Η κύρια μέθοδος</i></h4>
Απαιτείται η κύρια μέθοδος main() και θα την δείτε σε κάθε πρόγραμμα Java:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		public static void main(String[] args)
	</code>
  </pre>
</figure>
<br>
Θα εκτελεστεί οποιοσδήποτε κώδικας μέσα στη μέθοδο main (). Δεν χρειάζεται να καταλάβετε τις λέξεις-κλειδιά πριν και μετά την κύρια ακόμη. 
<br>
Προς το παρόν, να θυμάστε ότι κάθε πρόγραμμα Java έχει ένα όνομα κλάσης το οποίο πρέπει να ταιριάζει με το όνομα αρχείου και ότι κάθε πρόγραμμα πρέπει να περιέχει τη μέθοδο main ().
<br>
<h4><i>Εντολή System.out.println ()</i></h4>
Μέσα στη μέθοδο main (), μπορούμε να χρησιμοποιήσουμε τη μέθοδο println () για να εκτυπώσουμε μια γραμμή κειμένου στην οθόνη:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		public static void main(String[] args) {
		  System.out.println("Hello World");
		}
	</code>
  </pre>
</figure>
<br>
<small>σελίδα 2</small>');

CREATE TABLE chapter4(
	pages TEXT NOT NULL,
	page1 TEXT NOT NULL,
	page2 TEXT NOT NULL
);

insert into chapter4 (pages,page1,page2) values('2','<h3><b>Κεφάλαιο 4 - Σχολιασμός στην Java</b></h3>
<h4><i>Σχολιασμός στην Java</i></h4>
Τα σχόλια μπορούν να χρησιμοποιηθούν για να εξηγήσουν τον κώδικα Java και να το κάνουν πιο ευανάγνωστο. Μπορούν επίσης να χρησιμοποιηθούν για την αποτροπή εκτέλεσης κατά τον έλεγχο εναλλακτικού κώδικα.
<br>
Τα σχόλια μιας γραμμής ξεκινούν με δύο εμπρόσθια πτερύγια (//).
<br>
Κάθε κείμενο μεταξύ // και το τέλος της γραμμής αγνοείται από την Java (δεν θα εκτελεστεί).
<br>
Αυτό το παράδειγμα χρησιμοποιεί ένα σχόλιο μιας γραμμής πριν από μια γραμμή κώδικα:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		// This is a comment
		System.out.println("Hello World");
	</code>
  </pre>
</figure>
<br>
Αυτό το παράδειγμα χρησιμοποιεί ένα σχόλιο μιας γραμμής στο τέλος μιας γραμμής κώδικα:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		System.out.println("Hello World"); // This is a comment
	</code>
  </pre>
</figure>
<br>
<small>σελίδα 1</small>','<h3><b>Κεφάλαιο 4 - Σχολιασμός στην Java</b></h3>
<h4><i>Σχολιασμός πολλών γραμμών στην Java</i></h4>
Τα σχόλια πολλών γραμμών αρχίζουν με /* και τελειώνουν με */.
<br>
Οποιοδήποτε κείμενο μεταξύ /* και */ θα αγνοηθεί από την Java
<br>
Αυτό το παράδειγμα χρησιμοποιεί ένα σχόλιο πολλών γραμμών (ένα μπλοκ σχολίων) για να εξηγήσει τον κώδικα:
<br>
<figure>
  <figcaption>Παράδειγμα</figcaption>
  <pre>
    <code>
		/* The code below will print the words Hello World
		to the screen, and it is amazing */
		System.out.println("Hello World");
	</code>
  </pre>
</figure>
<br>
<small>σελίδα 2</small>');
