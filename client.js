
const clients = [
    { id: 1, nom: 'Walid dahdah', telephone: '1234567890', email: 'walid@gmail.com' },
    { id: 2, nom: 'WAWA EGK', telephone: '2345678901', email: 'WAWA@outlook.com' },
    { id: 3, nom: 'Dahdah Messi', telephone: '3456789012', email: 'Dahdah@gmail.com' }
  ];
  
  function trouverClient(critere) {
    return clients.filter(client => client.id === critere || client.nom.toLowerCase().includes(critere.toLowerCase()));
  }
  

  const idRecherche = 2;
  const nomRecherche = 'dahdah';
  
  const resultatParId = trouverClient(idRecherche);
  const resultatParNom = trouverClient(nomRecherche);
  
  console.log('Résultat de la recherche par ID:', resultatParId);
  console.log('Résultat de la recherche par nom:', resultatParNom);
  