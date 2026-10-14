# Site académique Katia Meziani — R Markdown, FR / EN

## Ouvrir et modifier

- Ouvrir `index.html` pour voir immédiatement la version française. `index-en.html` est la version anglaise.
- Ouvrir `index.Rmd` dans RStudio pour modifier la page d’accueil. Les 20 fichiers `.Rmd` sont à la racine du projet et correspondent aux 20 pages HTML.
- Pour reconstruire **tout** le site, ouvrir `render.R` dans RStudio puis cliquer sur **Source**. Le script lance la compilation des 20 pages, puis ouvre `index.html` dans le navigateur.
- Si besoin, installer les packages R `rmarkdown`, `knitr` et disposer de Pandoc (fourni avec RStudio).
- La mise en page est dans `style.css`, les menus communs dans `_includes/`.
- Les deux images sont distinctes : `surface-3d.png` (surface scientifique issue du visuel approuvé, recadrée pour retirer le texte de la maquette) et `kabylie.jpg` (photo personnelle originale, copiée sans modification).

## Attention avant publication

Vérifier les dates et intitulés définitifs de certains enseignements anciens et thèses en cours. La rubrique « Activités choisies » n’est pas un flux d’actualités automatiques. La représentation mathématique est une illustration, pas une figure de résultat de recherche.

Le site n’évoque aucun projet entrepreneurial confidentiel.


## Version 5 — corrections visuelles

- Titres automatiques R Markdown supprimés dans les 20 sources `.Rmd` pour éviter le double titre à la compilation.
- Fond bleu nuit et sections ivoire sur toutes les pages intérieures ; accueil inchangé avec surface 3D et photographie originale Kabylie.
- Pour reconstruire : ouvrir `render.R` dans RStudio et cliquer **Source**, puis consulter `index.html`.
- Si la page semble inchangée, actualiser le navigateur avec Ctrl+Shift+R (ou Cmd+Shift+R sur Mac).


## Corrections v6 (14 octobre 2026)
- Sur l'accueil FR/EN, « Activités choisies / Selected activities » est remplacé par « Recherches en cours / Research in progress ».
- La page Publications est maintenant présentée dans un panneau ivoire avec des références sur cartes claires et du texte contrasté.
- Les pages intérieures conservent un fond bleu nuit et des panneaux ivoire.
- Les images `surface-3d.png` et `kabylie.jpg` sont conservées.
- Ne modifiez pas directement les HTML : éditer les `.Rmd`, puis exécuter `source("render.R")` depuis le dossier du projet.

### Contact (version 7)
La page Parcours / Experience comporte un encadré Contact latéral, en français et en anglais, avec adresse professionnelle et courriel volontairement obfusqué. Les liens `mailto:` dans les pieds de page ont été supprimés pour ne pas exposer l’adresse en clair.
