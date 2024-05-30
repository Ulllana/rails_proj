unless Country.any?
    country1 = Country.create(title: 'Country1')
    country2 = Country.create(title: 'Country2')
  
    catlist1 = country1.catlists.create(name: 'Country1 Catlist')
    catlist2 = country2.catlists.create(name: 'Country2 Catlist')
  
    catlist1.cats.create([{name: 'Mr Fresh', description: 'Nice cat'}, {name: 'Sigma', description: 'Sigma'}])
    catlist2.cats.create([{name: 'Mr Unfresh', description: 'Smell cat'}, {name: 'Mussy', description: 'Pussy'}, {name: 'Aboba', description: 'Amogus'}])
  end
  