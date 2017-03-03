# Online-Banking

### 0. Setup
`./bin/setup`

### 1. Erzeuge die Migrationen für folgende Datenmodelle. 
Lege auch die Join-Tabellen an, wenn nötig.
* Bank: name, city, bic
* User: email, password, name, street, city
* Account: balance
  * Balance darf nicht null sein und muss einen Default-value von 0 haben.
* BookEntry: description, amount

[Active Record - Migrations](http://guides.rubyonrails.org/active_record_migrations.html)

### 2. Erstelle die Modelle und die Beziehungen zwischen den Modellen
* Bank:
  * <tt>has_many :accounts</tt>
  * <tt>has_many :users, through: :accounts</tt>
* User:
  * <tt>has_many :accounts</tt>
* Account
  * <tt>belongs_to :user</tt>
* BookEntry:
  * <tt>belongs_to :account_from, class_name: 'Account'</tt>
  * <tt>belongs_to :account_to, class_name: 'Account'</tt>

[Active Record - Associations](http://edgeguides.rubyonrails.org/association_basics.html)

### 3. Lege zu jeder Beziehung auch die "Rückwärts-Relation" an. 
Bei der Beziehung BookEntry<->Account und ist besondere Vorsicht geboten.

### 4. Schreibe Validations für
* Bank
  * Name ist Pflichtfeld
  * BIC muss folgendem Ausdruck entsprechen: <tt>/\A([a-zA-Z]){4}([a-zA-Z]){2}([0-9a-zA-Z]){2}([0-9a-zA-Z]{3})?\z/</tt>
* User
  * Name ist Pflichtfeld
  * Email des Users muss beim anlegen bestätigt werden (confirmation)
  * Email muss diesem Ausdruck entsprechen: <tt>/\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b/i</tt>
  * Muss zu einer Bank gehören
* Account
  * Das Bankkonto darf nicht überzogen werden
* BookEntry
  * Der User darf keine negative Überweisung tätigen
  * Quelle und Ziel muss gesetzt sein

[Active Record - Validations](http://edgeguides.rubyonrails.org/active_record_validations.html)
### 5. Callback & Transaction
Stelle sicher, dass eine Überweisung sich auf beide Accounts auswirkt. Stichworte Callback & Transaktion.

### 7. Bonus?
* Wie kann Geld "erzeugt" werden, wenn alle Konten bei 0 starten und kein Konto überzogen werden darf?
* Welche offensichtliche Schwachstellen existieren in diesem System (abgesehen vom fehlenden Login-Mechanismus)?
