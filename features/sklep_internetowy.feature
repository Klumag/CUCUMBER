Feature: Zakup produktu w sklepie internetowym

Scenario: Wyszukiwanie i zakup okularów
Given użytkownik jest na stronie głównej sklepu internetowego 
When użytkownik wpisuje "okulary" w polu wyszukiwania
And użytkownik klika przycisk "Szukaj"
Then użytkownik widzi listę wyników wyszukiwania produktów zawierającą w nazwie "okulary"

When użytkownik klika na pierwszy produkt z listy wyników
Then użytkownik widzi stronę szczegółów produktu
And użytkownik widzi przycisk "Dodaj do koszyka"

When użytkownik klika przycisk "Dodaj do koszyka"
Then produkt zostaje dodany do koszyka
And użytkownik widzi komunikat potwierdzający dodanie produktu do koszyka

When użytkownik klika ikonę koszyka
Then użytkownik widzi stronę koszyka z dodanym produktem

When użytkownik klika przycisk "Przejdź do kasy"
Then użytkownik widzi stronę kasy

When użytkownik wprowadza dane do wysyłki i płatności
And użytkownik klika przycisk "Złóż zamówienie"
Then użytkownik widzi stronę potwierdzenia zamówienia
And użytkownik otrzymuje e-mail z potwierdzeniem zamówienia
