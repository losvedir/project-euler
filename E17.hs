-- If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
-- If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
-- NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

one = 3
two = 3
three = 5
four = 4
five = 4
six = 3
seven = 5
eight = 5
nine = 4

-- 1-9
tens = one + two + three + four + five + six + seven + eight + nine

ten = 3
eleven = 6
twelve = 6
thirteen = 8
fourteen = 8
fifteen = 7
sixteen = 7
seventeen = 9
eighteen = 8
nineteen = 8

-- 10-19
teens = ten + eleven + twelve + thirteen + fourteen + fifteen + sixteen + seventeen + eighteen + nineteen

-- x0 - x9
twenty = 6
twenties = 10 * twenty + tens
thirty = 6
thirties = 10 * thirty + tens
forty = 5
forties = 10 * forty + tens
fifty = 5
fifties = 10 * fifty + tens
sixty = 5
sixties = 10 * sixty + tens
seventy = 7
seventies = 10 * seventy + tens
eighty = 6
eighties = 10 * eighty + tens
ninety = 6
nineties = 10 * ninety + tens

-- 1-99
to_one_hundred = tens + teens + twenties + thirties + forties + fifties + sixties + seventies + eighties + nineties

-- x00-x99
nd = 3
hundred = 7
onehundreds = 100 * one + 100 * hundred + 99 * nd + to_one_hundred
twohundreds = 100 * two + 100 * hundred + 99 * nd + to_one_hundred
threehundreds = 100 * three + 100 * hundred + 99 * nd + to_one_hundred
fourhundreds = 100 * four + 100 * hundred + 99 * nd + to_one_hundred
fivehundreds = 100 * five + 100 * hundred + 99 * nd + to_one_hundred
sixhundreds = 100 * six + 100 * hundred + 99 * nd + to_one_hundred
sevenhundreds = 100 * seven + 100 * hundred + 99 * nd + to_one_hundred
eighthundreds = 100 * eight + 100 * hundred + 99 * nd + to_one_hundred
ninehundreds = 100 * nine + 100 * hundred + 99 * nd + to_one_hundred

onethousand = 11

total = to_one_hundred + onehundreds + twohundreds + threehundreds + fourhundreds + fivehundreds + sixhundreds + sevenhundreds + eighthundreds + ninehundreds + onethousand