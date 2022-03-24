echo "Veux tu créer un dossier pour une blade ?"
read reponsedossier
if [ "$reponsedossier" = "oui" ]; then
    echo "Nom du dossier ?"
    read dossierblade
    mkdir resources/views/pages/$dossierblade
else
    echo "Ok, pas de dossier"
fi

echo "Veux tu créer une blade ?"
read blade
if [ "$blade" = "oui" ]; then
    echo "Nom de la blade ?"
    read fichierblade
    if [ "$reponsedossier" = "oui" ]; then
        echo "Mettre la blade dans le dossier récemment créer ?"
        read putblade
        if [ "$putblade" = "oui" ]; then
            touch resources/views/pages/$dossierblade/$fichierblade.blade.php
        else
            touch resources/views/pages/$fichierblade.blade.php
        fi
    fi
else
    echo "OK, Pas de blade"
fi

echo "Veux tu créer un dossier pour ton partial ?"
read reponsepartial
if [ "$reponsepartial" = "oui" ]; then
    echo "Nom du dossier ?"
    read dossierpartial
    mkdir resources/views/partials/$dossierpartial
else
    echo "Ok, pas de dossier"
fi

echo "Veux tu créer un partial ?"
read partial
if [ "$partial" = "oui" ]; then
    echo "Nom du partial ?"
    read fichierpartial
    if [ "$reponsepartial" = "oui" ]; then
        echo "Mettre le partial dans le dossier récemment créer ?"
        read putpartial
        if [ "$putpartial" = "oui" ]; then
            touch resources/views/partials/$dossierpartial/$fichierpartial.blade.php
        else
            touch resources/views/partials/$fichierpartial.blade.php
        fi
    fi
else
    echo "OK, Pas de partial"
fi