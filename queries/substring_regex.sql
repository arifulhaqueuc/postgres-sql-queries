
select email, regexp_substr(email,'@[^.]*')
from users limit 5;

   email                                    | regexp_substr
--------------------------------------------+----------------
Suspendisse.tristique@nonnisiAenean.edu     | @nonnisiAenean
sed@lacusUtnec.ca                           | @lacusUtnec
elementum@semperpretiumneque.ca             | @semperpretiumneque
Integer.mollis.Integer@tristiquealiquet.org | @tristiquealiquet
Donec.fringilla@sodalesat.org               | @sodalesat
