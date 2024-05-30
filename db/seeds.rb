unless User.any?
    user = User.create(name: 'Bob', email: 'bob@example.com', password: 'bobr', password_confirmation: 'bobr')

    catlist = user.catlists.create(name: 'Bob Catlist')

    catlist.cats.create([{name: 'Mr Fresh', description: 'Nice cat'}, {name: 'Sigma', description: 'Sigma'}])

    user.save

    user = User.create(name: 'Jimmy', email: 'jimmy@example.com', password: 'password', password_confirmation: 'password')

    catlist = user.catlists.create(name: 'Jimmy Catlist')

    catlist.cats.create([{name: 'Mr Unfresh', description: 'Smell cat'}, {name: 'Mussy', description: 'Pussy'},
    {name: 'Aboba', description: 'Amogus'}])

    user.save
end