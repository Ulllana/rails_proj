unless User.any?
    user = User.create(name: 'Bob', email: 'bob@example.com')

    catlist = user.catlists.create(name: 'My Catlist')

    catlist.cats.create([{name: 'Mr Frash', description: 'Nice cat'}, {name: 'Sigma', description: 'Sigma'}])

    user.save
end