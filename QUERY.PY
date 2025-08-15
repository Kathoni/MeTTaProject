from hyperon import MeTTa, Atom

from hyperon import MeTTa, Atom

mt = MeTTa()

metta_code = '''
(owner Alice Cat)
(owner Bob Dog)
(owner Carol Parrot)

(= (has-pet)
    (match &self (owner $person $animal) (Owner:$person , Pet:$animal))
)

(= (is-cat-owner)
    (match &self (owner $person Cat) $person)
)
'''

mt.run(metta_code)

# Query: Who owns a cat?
result = mt.run('!(is-cat-owner)')
print('Cat owners:', result)

# Query: Who owns what?
result2 = mt.run('!(has-pet)')
print('All owner-pet pairs:', result2)

metta = MeTTa ()
print(metta.run('!(+ 1 2)'))
