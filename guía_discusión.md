**PCB** \
**2025-2** \
**Bases ecológicas y genómicas de la interacción organismo-ambiente.**

## Unidad 4
## Teoría y métodos de estudio de nicho ecológico

### Algunas definiciones:
**[Grinell (1917):](https://digitalcommons.usf.edu/cgi/viewcontent.cgi?article=7985&context=auk)** 
La distribución de un taxón está limitada a un conjunto de ambientes y hábitats a los que su comportamiento y morfología están mejor adaptados.

***Toxostoma redivivum***
![](figuras/grinell_example.png) 

![](Grinell_statement.png)

**[Charles Elton (1927):](https://www.biodiversitylibrary.org/item/31642#page/69/mode/1p)**  El nicho debe describir lo que hace un animal en su comunidad, sus interacciones bióticas, los recursos que consume, su relación con el medio y como lo modifica. Por ejemplo, equivalentes ecológicos.

![](figuras/elton_statement.png)

**[George Hutchinson (1957):](https://www2.unil.ch/biomapper/Download/Hutchinson-CSHSymQunBio-1957.pdf)** Define el nicho como la suma de todos los factores ambientales que actúan sobre un organismo. Entonces el nicho puede ser definido como una región en un hiperespecio de n-dimensiones. 
El concepto de nicho de Hutchinson a diferencia del de Grinnell y Elton define el nicho como una propiedad de la especie en lugar de una propiedad de la comunidad (Schoener 1989). 

**La dualidad de Hutchinson**
![](figuras/dualidad_hutchinson.png) \
Dos nichos fundamentales definidos por un par de variables en un espacio de nicho bidimensional.  \
Solo una especie puede persistir en la región de intersección del subconjunto. \
Las líneas que unen puntos equivalentes en el espacio de nicho y el espacio de biotopo indican la relación entre los dos espacios. \
La distribución de las dos especies involucradas se muestra en el panel derecho con una curva de temperatura en profundidad.

![](figuras/hutchinson_1957.png)

**Conclusión:** Cuando hablamos de **nicho ecológico** tenemos que tener en cuenta la definición que estamos siguiendo, porque como vimos, nicho puede significar predominancia de las interacciones bióticas, o  su ausencia y énfasis en las condiciones abióticas.

**Lectura recomendada** \
[Niche theory and its relation to morphology and phenotype in geographic space: a case study in woodpeckers (Picidae; Cooper 2018).](https://nsojournals.onlinelibrary.wiley.com/doi/abs/10.1111/jav.01771)

**Cómo se distribuyen en el espacio geográfico algunos de los principales biomas presentes en el continente Americano.**

![](figuras/ecosystem_in_geographical_space.png) 

**Cómo se distribuyen esos mismos biomas en el espacio ambiental con base en los dos primeros componentes de un análisis de PCA.**

![](figuras/ecosystems_ecological_space.png)

**Práctica 4.1: Dualidad de Hutchinson: Espacio geográfico y espacio ambiental.**
Los materiales necesarios para replicar las imágenes de los biomas de América en el espacio geográfico y ecológico se encuentran en la carpeta practica3_espacio_ecol_and_geog.

## 4.2 Preferencias ambientales
Las características de las especies determinan el rango de condiciones ambientales en las que cada especie puede estar presente, y se espera que las abundancias alcancen su máximo cuando las características coinciden mejor con las condiciones ambientales (Heino & Grönroos, 2014).

Diferencias en los rasgos determinan las capacidades de las especies para explotar ya sea hábitats comunes (**posición del nicho**) o una variedad de hábitats (**amplitud del nicho**) y la posición y amplitud del nicho, a su vez, afectan la abundancia y la ocupación.

#### La hipótesis de la amplitud del nicho [(Brown, 1984):](https://www.jstor.org/stable/2461494) 

![](figuras/niche_breath.png)

**Requerimientos:**
1) La abundancia y distribución de cada especie está determinada por combinaciones de variables físicas y bióticas que son necesarias para la supervivencia y reproducción de sus individuos (Hutchinson 1957).
2) La variación ambiental también está autocorrelacionada, de modo que la probabilidad de que los sitios tengan combinaciones similares de variables ambientales es una función inversa de la distancia entre ellos.
3) Las especies estrechamente relacionadas y ecológicamente similares difieren en una o muy pocas dimensiones del nicho.

**Planteamientos**
- La densidad poblacional debería ser más alta cerca del centro del área de distribución de una especie y debería disminuir hacia los límites.

- Para cada especie, debería haber un sitio más favorable donde la densidad poblacional sea más alta, porque la combinación de variables ambientales corresponde más estrechamente a los requisitos de la especie.

- Si la variación espacial en el ambiente está autocorrelacionada, entonces, con el aumento de la distancia desde este sitio, el ambiente se hará progresivamente más diferente, los requisitos del nicho de la especie se cumplirán con menos frecuencia y la abundancia disminuirá. 

**Amplitud del nicho** \
![](figuras/amplitud_del_nicho.png) \
1) Especies con un *NB* estrecho y baja abundancia local pero un gran tamaño de rango geográfico.
2) Especies con un *NB* estrecho y un rango geográfico pequeño pero alta abundancia.  
3) Especies con un *NB* amplio pero un rango geográfico y abundancia pequeños.

#### La hipótesis de la posición del nicho 
También llamada la hipótesis de la disponibilidad de hábitat [(Venier & Fahrig 1996)](https://www.jstor.org/stable/2461494:) sostiene que las especies capaces de utilizar las condiciones ambientales más comunes que se encuentran a través de los hábitats en una región (es decir, una posición central en el nicho) serán tanto locales abundantes como de amplia distribución.

**Distribución y disponibilidad de hábitat** \
![](figuras/posicion_nichop.png) \
Distribución (medida como la proporción de celdas de hábitat de cría ocupadas) graficada contra COVER (proporción del área total del paisaje en hábitat de cría) para 100 simulaciones.

**Abundancia y disponibilidad de hábitat** \
![](figuras/abundancia_cover.png) \
**Planteamientos de la teoría**  \
Correlación positiva entre:  \
(1) la abundancia y el número de celdas de hábitat de cría en el paisaje de simulación.  \
(2) la distribución y el número de celdas de hábitat de cría en el paisaje.  \
(3) La abundancia y la distribución.

**Conclusión:** Las especies que tienen un nicho marginal (poca disponibilidad de hábitat) tienen distribuciones más restringidas y menos abundantes respecto de las especies con un nicho central, capaces de distribuirse en las condiciones promedio del hábitat (elevada disponibilidad de hábitat [(Heino 2005)](https://nsojournals.onlinelibrary.wiley.com/doi/epdf/10.1111/j.0906-7590.2005.04151.x).

**Hipótesis de las relaciones entre la rasgos, la amplitud del nicho, la posición del nicho, la abundancia y la ocupación.** \
![](figuras/niche_position.png)

- Se espera que las especies funcionalmente distintas tengan amplitudes de nicho más amplias y vivan en las condiciones ambientales más comunes encontradas a través de los hábitats (es decir, tengan una posición central en el nicho; Figura 1, P1a). 

- Alternativamente, puede ser que combinaciones de rasgos muy distintas restrinjan el rango de condiciones ambientales de una especie y representen una estrategia ecológica adecuada para un especialista en hábitat; de ser así, las especies funcionalmente distintas tendrían amplitudes de nicho estrechas y podrían ocupar hábitats centrales o marginales (Figura 1, P1b). 

![](figuras/esquema_de_rasgos.png) \

[Species niches, not traits, determine abundance and occupancy patterns: A multi‐site synthesis (Marino et al 2019).](https://onlinelibrary.wiley.com/doi/abs/10.1111/geb.13029)

"The trait distinctiveness of each species was unrelated to its niche properties, abundance and occupancy. In contrast, niche position was the main predictor of
abundance and occupancy; species that used the most common environmental conditions were locally abundant and widespread" [(Marino et al 2019).](https://onlinelibrary.wiley.com/doi/abs/10.1111/geb.13029)

**Consideraciones**
- No existe una sola característica que pueda describir completamente las estrategias ecológicas utilizadas por una especie.
- Los patrones de abundancia y ocupación pueden estar determinados por combinaciones de varias características en lugar de por características individuales (por ejemplo, el tamaño corporal y el gremio trófico.
- La distinción de cada especie en términos de composición de características en comparación con el resto de la comunidad puede ser un factor clave.

### Relaciones entre variables si la especiación relacionada con nicho climático está asociada con la hipótesis de oscilación o el juego de las sillas

![](figuras/nicho_hyphothesis.png)

(a1) We expect to find a positive relationship between the rate of change in niche breadth and the speciation rate. \
(a2) Given that lineages oscillate between wide and narrow niches as they speciate, we also expect a positive relationship between the speciation rate and the
rate of change in niche position, assuming that changes in climatic niche are an important driver of speciation. \
(a3) We expect a negative relationship between niche breadth and the rate of change in niche breadth among species. Adaptation to new environmental conditions is followed by lineage splitting and specialisation. Thus, repeated range expansions and contractions should lead to narrower niche breadths over time. \
(a3) We expect a positive relationship between the rate of change in niche breadth and the rate of change in niche position. If lineages first expand their niche breadths and then split into different species (each in different environments and with narrower niches). \
(b1) We expect no relationship between the rate of change in niche breadth and speciation rates. Lineages are thought to maintain similar niche
breadths over time as they change in niche position. \
(b2) Given climate-related speciation, we expect a positive relationship between the rate of change in niche position and speciation rate. \
(b3) Since niche breadths remain relatively unchanged under the musical-chairs hypothesis, we expect no relationship between the rate of change in niche breadth and niche breadth. \
(b4) Since niche breadths remain relatively unchanged as niches change, we do not expect a relationship between the rate of
change in niche position and the rate of change in niche breadth. \
**Información tomada de [(Moreira et al 2024)](https://onlinelibrary.wiley.com/doi/abs/10.1111/jbi.14802)**

**Ejemplo:** Relationship between regional distribution and local abundance in stream insects.  \
** Variables ambientales** \
![](figuras/nicho_vars.png)

**Análisis OMI** \
![](figuras/nicho_pos.png)

**Relación abundacia-nicho** \
![](figuras/relaciones_nb_np.png)}
**Información tomada de [(Heino 2005)](https://nsojournals.onlinelibrary.wiley.com/doi/epdf/10.1111/j.0906-7590.2005.04151.x)**

**Artículo de discusión 1:** \
[Niche Breadth: Causes and Consequences for Ecology, Evolution, and Conservation (Carscadden et al., 2020.)](https://www.journals.uchicago.edu/doi/10.1086/710388)

**Práctica 4.2 Métricas del nicho: posición y amplitud.** \
Estimar la posición y la amplitud del nicho para un set de espcies. \
Para la práctica seguiremos el tutorial de [(KarasiewiczStephane/WitOMI).](https://github.com/KarasiewiczStephane/WitOMI) \
Más información en [Within outlying mean indexes: refining the OMI analysis for the realized niche decomposition (Karasiewicz et al., 2017).](https://pmc.ncbi.nlm.nih.gov/articles/PMC5444369/)

**OMI analysis** \
La posición del nicho y la amplitud del nicho se determinaron mediante un análisis OMI (Outlying Mean Index;[Dolédec et al., 2000]( Dolédec et al., 2000)).\
Este método mide la marginalidad de la distribución del hábitat de las especies, es decir, la distancia entre las condiciones promedio del hábitat utilizadas por una especie y las condiciones promedio del hábitat en toda el área de estudio. 

La posición de una especie depende de su desviación respecto a la distribución de una especie hipotética que tolera condiciones de hábitat “promedio” y que se distribuye uniformemente a través de todas las condiciones ambientales. Por lo tanto, el índice OMI mide la posición ecológica de cada especie: las especies con valores altos de OMI presentan nichos marginales, mientras que aquellas con valores bajos ocupan nichos no marginales. 

Una segunda variable derivada de este método es la tolerancia de la especie, que mide la amplitud de la distribución de cada especie a lo largo de los gradientes ambientales muestreados; i.e. **la amplitud del nicho**. Las especies con valores altos de tolerancia se encuentran en condiciones ambientales muy diversas (generalistas; amplia amplitud de nicho), mientras que las especies con valores bajos ocurren únicamente en un rango limitado de condiciones (especialistas; reducida amplitud de nicho).

**Más información acerca de estos análisis en R** 
- [Analysis of Ecological Data: Exploratory and Euclidean Methods in Environmental Sciences (ade4).](https://adeverse.github.io/ade4/) 
- [ade4: Analysis of Ecological Data : Exploratory and Euclidean Methods in Environmental Sciences.](https://rdrr.io/rforge/ade4/man/niche.html) 
- [The adegraphics package (Julien-Laferrière et al., 2023).](https://cran.r-project.org/web/packages/adegraphics/vignettes/adegraphics.html) 

**Recomendaciones** 
- [Niche position and niche breadth effects on population abundances: A case study of New World Warblers (Parulidae; Castaño‐Quintero et al., 2024).](https://pmc.ncbi.nlm.nih.gov/articles/PMC10944703/)
- [Estimates of niche position and breadth vary across spatial
scales for native and alien inland fishes (Cano-Barbacil et al., 2022).](https://invasiber.org/GarciaBerthou/docs/papers/Cano‐Barbacil_GEB_2022_withSI.pdf)
 
## 4.3 Cambios en el hábitat
Los cambios en las condiciones abióticas son inevitables.

Cambios ambientales antropogénicos: al aceleramiento del cambio climático, la deforestación, la urbanización, la degradación del suelo y la contaminación.  

Las áreas que antes formaban parte del rango de una especie pueden volverse desfavorables y nuevas áreas pueden volverse adecuadas. Por lo tanto, se espera que los rangos de las especies se desplacen en respuesta a los cambios globales, reorganizando la biodiversidad del planeta. Muchas especies ya han extendido sus rangos tanto latitudinal como longitudinalmente.

**Artículo de discusión 2:** \
[Accessible areas in ecological niche comparisons of invasive species: Recognized but still overlooked (Qiao et al., 2017)](https://www.nature.com/articles/s41598-017-01313-2). El cuál es una reinterpretación de [Febbraro et al., 2012,](https://journals.plos.org/plosone/article/file?id=10.1371/journal.pone.0066559&type=printable) quienes hacen un análisis del caso de invasión de la ardilla gris en las Islas Británicas. 

**A qué escala temporal operan los cambios en el nicho?** \
La mayoría de estudios se centran en una sola especie. \
**Qué alternativas se les ocurren?**
Las especies introducidas proporcionan un 'experimento semi-natural' en el que se enfrentan a condiciones ambientales novedosas.

**Representación del nicho** \
![](figuras/nicho_tipos.png) \
Framework of species’ ecological niches across accessible areas in native (yellow) and invaded (red) 
ranges. \
**Portions of the niche are as follow:** \
(A) native-range environments (purple): species using environments available only in the native range. \
(B) invaded environments (green): species using environments available only in the invaded range. \
(C) overlapping environments (dashed line): invaded-range populations using the same environments as in the native range (blue). \
(D) overlapping environments: species using novel environments 
in the invaded range (i.e., not used in the native range, even when available; dark orange).\
(E) Environments not available in either native or invaded ranges (=the unfilled niche). Similar environments available in both, the native and invaded ranges are indicated with a dashed line. \
**Cuál es el nicho fundamental?** 

**Mecanismos de cambio del nicho realizado.** \
![](figuras/nicho_cambios.png) \
(A) El nicho realizado del rango nativo de una especie. \
(B) Un cambio de nicho en el que los cambios en las restricciones sobre el movimiento de una especie han permitido alcanzar una mayor sección del nicho biótico y abiótico. \
(C) Un cambio de nicho en el que los cambios en las restricciones bióticas sobre una especie han permitido alcanzar una mayor sección del nicho de movimiento y abiótico. \
(D) Un cambio de nicho en el que los límites abióticos de la especie han cambiado.

**Cambios en el nicho** \
![](figuras/niche_shift.png) \
**T1:** Al producirse una expansión geográfica de una especie, primero se debe determinar si el nuevo nicho es un caso de conservadurismo del nicho o si ha ocurrido un cambio de nicho. \
**T2:** Falsos positivos pueden ocurrir porque no ha habido un cambio en el clima experimentado por la población introducida: 
- Porque las variables climáticas medidas no son biológicamente significativas (conservadurismo del nicho macroclimático). 
- El microclima experimentado por la especie es consistente con su nicho original (conservadurismo del microclima). 

**T3:** Un verdadero cambio de nicho puede determinarse experimentalmente. 
- En algunos casos, el nuevo nicho resultará ser parte del nicho fundamental de la especie, en cuyo caso el cambio se denomina ‘cambio del nicho realizado’.  
- En otros casos, se han producido cambios evolutivos en la población que permiten la supervivencia de la especie en el nuevo nicho (cambio evolutivo del nicho).

**Qué dicen los datos empíricos?** \
![](figuras/nicho_cambios_stats.png) 

### Transferencias en tiempo y Espacio
**La dualidad de Hutchinson** \
![La dualidad de Hutchinson](figuras/Huntchinsons_duality.png) \
La imagen fue tomada de Soberón et al., 2017. [Click aquí para ver la imagen y la nota en Revista Mexicana de Biodiversidad.](https://www.redalyc.org/journal/425/42551127018/html/)

**Desplazamientos en el nicho y la anisotropía del espacio ambiental**

Está claro que el mismo nicho fundamental NF, expresado en diferentes regiones con espacios ambientales correspondientemente distintos E' y E'', producirá distintos nichos fundamentales existentes y, por lo tanto, con alta probabilidad, diferentes NR, incluso en ausencia de competidores y procesos evolutivos.

**Anisotropía del espacio ambiental** \
![](figuras/anisotropia_espacio_ambiental.png) \
Los puntos de ocurrencia que caen en **N**\**F* de la especie en las regiones norte y sur en el mapa se muestran en azul y rojo, respectivamente. \
A pesar de una amplia superposición general, las combinaciones climáticas correspondientes a los dos rangos son diferentes, y una especie capaz de alcanzar cada celda de la cuadrícula tendría diferente **N**\**F* (y por lo tanto, nicho realizado) en las regiones norte y sur. \
Este resultado se mantiene incluso asumiendo: (i) **N***F* constante, (ii) ausencia de competidores o interactores de cualquier tipo, y (iii) equilibrio total de dispersión dentro de cada subregión.

[Ecological niche shifts and environmental space anisotropy: a cautionary note (Soberón & Peterson 2011)](https://www.scielo.org.mx/scielo.php?script=sci_arttext&pid=S1870-34532011000400032).

**Práctica 4.3: Modelos de nicho ecológico.**
Vamos a emplear un enfoque de MNE basado en elipses.
Esta práctica está basada en:
-  [ellipsenm (Marlon Cobos et al 2019)](https://github.com/marlonecobos/ellipsenm).
- [NicheToolBox (Osorio-Olvera et al 2019)](https://github.com/luismurao/ntbox).
- [ntbox (Osorio-Olvera et al 2019)](https://luismurao.github.io/ntbox_user_guide.html).

### Modelos de Nicho Ecológico 
#### Breve discusión sobre "El arte de modelar"

Una excelente guía de para los que desean trabajar con modelos de nicho ecológico: [Want to model a species niche? A step-by-step guideline on correlative ecological niche modelling (Sillero et al., 2021)](https://www.sciencedirect.com/science/article/abs/pii/S0304380021002301).

**Referencias** 
- [The role of climate change and niche shifts in divergent range dynamics of a sister-species pair (Summers et al., 2023)](https://peercommunityjournal.org/item/10.24072/pcjournal.248.pdf). 
- [Most invasive species largely conserve their climatic niche (Aravind et al., 2022)](https://www.pnas.org/doi/10.1073/pnas.2004289117). 

**Cursos** \
Carga teórica y práctica novedosa \
INECOL - Dr. Andrés Lira et al. \
Mérida - Dr. Carlos Yanes et al. \
Analisis espacial - Dr. David Prieto et al. \
YouTube - Dr. AT. Peterson et al. 

## 4.4 Conservadurismo de nicho
Es la tendencia que especies relacionadas presenten nichos similares (fundamental o realizado; [Pearman et al., 2008](https://pubmed.ncbi.nlm.nih.gov/18289716/)).

**Origen evolutivo y consecuencias ecológicas del conservadurismo de nicho filogenético**  \
![](figuras/pnc_factors_and_consequences.png) \
Factores endógenos de restricción sobre los fenotipos hasta los factores exógenos de selección ecológica. \
Esto conduce a los patrones principales del CFN, incluyendo conservadurismo, restricción y divergencia de nichos entre especies.

#### Conservadurismo de nicho como patrón
En el contexto de la especiación, el CFN actúa sobre las poblaciones locales para producir múltiples especies. La población local es, por lo tanto, la unidad fundamental del CNP para la especiación, pero el impacto del CNP es crucial para interpretar los patrones subsecuentes de ensamblaje de comunidades, diversidad regional y biogeografía a niveles más altos a lo largo de la filogenia.

**Conservadurismo de nicho como patrón**\
![](figuras/conservadurismo_filo.png) \

#### Conservadurismo de nicho como proceso
El CFN como proceso puede llevar potencialmente a la divergencia de nichos en hábitats heterogéneos o en rápida transformación, ya que las poblaciones se desplazan en lugar de adaptarse. El CFN provoca que las poblaciones se separen alopátricamente. Si las poblaciones se adaptan total o parcialmente a los entornos cambiantes, la separación geográfica se minimizaría y la selección para la especiación ecológica se reduciría.

**Conservadurismo de nicho como proceso:** \
![](figuras/conservadurismo.png) \
**(a):** \
**(b):** \
**(c):** \
**(d):** \
**(e):** \
**(f):** 

El CFN como proceso (retención instantánea de nicho) podría promover la especiación (CFN como patrón), resultando ya sea en divergencia de nicho o en conservadurismo de nicho.

![](figuras/consevadurismo_nicho.png) 

**Artículo de discusión 3:** \
[Phylogenetic niche conservatism and the evolutionary basis of ecological speciation (Pyron et al., 2014).](https://onlinelibrary.wiley.com/doi/10.1111/brv.12154)

**Aplicación en el filo-morfo espacio (Phylomorphospace)**
Un enfoque en el filo-morfo espacio nos permite considerar la filogenia, la disparidad y el tempo simultáneamente. [(Lloyd 2018)](https://onlinelibrary.wiley.com/doi/full/10.1111/pala.12380).

**Ejemplo con osos:** \
![](figuras/osos_filomorphospace.png) \
Resultados del espacio filoclímatico para ocho especies actuales de la familia Ursidae. 
- El modelo conserva las relaciones entre las secuencias mitocondriales completas de las especies. 
- Posiciona cada punta del árbol en la combinación de precipitación y temperatura de su centroide ambiental.
- Muestra reconstrucciones lineales de las trayectorias ecológicas de los ancestros. 

[Bears into the Niche-Space: Phylogeography and Phyloclimatic Model of the Family Ursidae (Luna-Aranguré & Vázquez-Domínguez 2024).](https://www.mdpi.com/1424-2818/16/4/223)

**Práctica 4.4: Phylomorphospace** \
En esta práctica vamos a revisar algunos de los análisis presentados en [(Luna-Aranguré & Vázquez-Domínguez 2024).](https://www.mdpi.com/1424-2818/16/4/223)

Esta práctica está basada en:

- [nicheROVER-package (Stasko & Swanson 2013).](https://cran.r-project.org/web/packages/nicheROVER/nicheROVER.pdf) 
- [A new probabilistic method for quantifying n-dimensional ecological niches and niche overlap (Swanson et al., 2015).](https://esajournals.onlinelibrary.wiley.com/doi/10.1890/14-0235.1) 
- [An Ecologist’s Guide to nicheROVER: Niche Region and Niche Overlap Metrics for Multidimensional Ecological Niches (Lysy & Swanson 2013).](https://cran.r-project.org/web/packages/nicheROVER/vignettes/ecol-vignette.html) 
- [JOURNEYS THROUGH DISCRETE-CHARACTER
MORPHOSPACE: SYNTHESIZING PHYLOGENY,
TEMPO, AND DISPARITY (Lloyd 2018).](https://onlinelibrary.wiley.com/doi/pdf/10.1111/pala.12380) 
- [Phylomorphospaces with ggplot in R (Carlos-Barbacil
2022).](https://cano-barbacil.wixsite.com/canobarbacil/post/phylomorphospaces-with-ggplot-in-r) 
- [Phylogenetic Tools for Comparative Biology (Liam Revell, forever).](http://blog.phytools.org/2022/12/generating-ggplot-phylomorphospace-plot.html)

**Recomendaciones**
- Niche conservatism as an emerging principle in ecology and conservation biology
[(Wiens et al 2010).](https://onlinelibrary.wiley.com/doi/epdf/10.1111/j.1461-0248.2010.01515.x)
- Phylogenetic niche conservatism: what are the underlying evolutionary and ecological causes?
[(Crisp & Cook 2012).](https://nph.onlinelibrary.wiley.com/doi/10.1111/j.1469-8137.2012.04298.x)
- Phylogenetic niche conservatism – common pitfalls and ways forward
[(Münkemüller et al 2014).](https://besjournals.onlinelibrary.wiley.com/doi/10.1111/1365-2435.12388)

## 4.5 Modificaciones de las poblaciones
La distribución de la diversidad genética dentro y entre las poblaciones en relación con los rangos geográficos de las especies es fundamental para comprender los procesos de evolución, especiación y biogeografía.

**Procesos evolutivos en el conservadurismo de nicho y su relación con las áreas de distribución:** \
![](figuras/conservadurismo.png) \

[Phylogenetic niche conservatism and the evolutionary basis of ecological speciation (Pyron et al., 2014).](https://onlinelibrary.wiley.com/doi/10.1111/brv.12154)

A lo largo de los límites de distribución, las poblaciones pueden ser escasas, fragmentadas y propensas a la extinción local.\
También pueden representar sumideros demográficos mantenidos por la inmigración desde hábitats centrales de mayor calidad, lo que las hace demográficamente y genéticamente dependientes de otras poblaciones. \
Los sitios periféricos también pueden recibir flujo génico que puede contrarrestar las presiones de selección local y la adaptación local. \
En general estas poblaciones pueden ser más propensas a la pérdida de diversidad genética. 

### A nivel genético 
![](figuras/centralidad_de_nicho.png) \
Relaciones hipotetizadas entre la distancia al centro del nicho ecológico, el centro del rango geográfico y la diversidad genética. \
**H0:** La marginalidad ambiental y geográfica coinciden, lo que lleva a que ambas estén negativamente correlacionadas con la diversidad genética. \
**HA:** La marginalidad ambiental y geográfica están desacopladas, lo que da lugar a la falta de relación entre la diversidad genética y la centralidad geográfica.

**Ejemplo con *Lynx rufus*** \
![linx_rufus](figuras/linx_rufus.png) \

**Distribución geográfica de la variación genética:** \
![](figuras/nicho_diversidad_genetica.png) \
Relaciones entre la diversidad genética y la centralidad en *Lynx rufus*. El panel izquierdo muestra las regresiones lineales entre la diversidad genética y la distancia al centro del nicho o geográfico.

[RELATIONSHIP OF GENETIC DIVERSITY AND NICHE CENTRALITY: A SURVEY AND ANALYSIS (Lira-Noriega & Manthey 2013).](https://onlinelibrary.wiley.com/doi/full/10.1111/evo.12343)

### A nivel morfológico:
**Filogenia** \

![](figuras/bats_phylogeny_2.png) \

**Morfología** \
![](figuras/hoary_bats.png) \

**Nicho climático** \
![](figuras/nicho_del_bat.png) \

[Environmentally driven phenotypic convergence and niche conservatism accompany speciation in hoary bats (Soto‑Centeno & Simmons 2022).](https://www.nature.com/articles/s41598-022-26453-y)

**Práctica 4.5: Comparación de nicho.**

Esta práctica está basada en:
-  [ellipsenm (Marlon Cobos et al 2019)](https://github.com/marlonecobos/ellipsenm).
- [NicheToolBox (Osorio-Olvera et al 2019)](https://github.com/luismurao/ntbox).
- [ntbox (Osorio-Olvera et al 2019)](https://luismurao.github.io/ntbox_user_guide.html).

**Recomendaciones:** 
- [Combining niche shift and population genetic analyses predicts rapid phenotypic evolution during invasion (Sotka et al., 2018).](https://pmc.ncbi.nlm.nih.gov/articles/PMC5978718/)
- [The evolutionary genomics of species’ responses to climate change (Aguirre-Liguori et al., 2021).](https://www.nature.com/articles/s41559-021-01526-9)
- [Niche models at inter‑ and intraspecifc levels reveal
hierarchical niche diferentiation in midwife toads (Rodríguez‑Rodríguez  et al., 2020).](https://www.nature.com/articles/s41598-020-67992-6)
- [Combining niche shift and population genetic analyses predicts rapid phenotypic evolution during invasion (Sotka  et al., 2018).](https://onlinelibrary.wiley.com/doi/10.1111/eva.12592)

**PCB** \
**2025-2** \
**Bases ecológicas y genómicas de la interacción organismo-ambiente.**

## Unidad 5
### Interacción fenotipo-ambiente

5.1 Diversidad funcional y filogenética \
5.2 Relación morfología-ambiente \
5.3 Métodos bioacústicos \
5.4 Métodos radioisotópicos de estudio de la interacción organismo-ambiente 

### 5.1 Diversidad filogenética (PD)
Taxon diversity (TD) is the most quantified measure of diversity, but it gives an incomplete information because the evolutionary history underlying spatial patterns is ignored.

Higher PD values are given to communities that has more evolutionary divergent taxa and older history, while lower PD values represent assemblages that have taxa with more recent evolutionary history.
![](figuras/pd_diversity.png)

Many ecological patterns are processes are not independent of the evolution of the lineages involved in generating these patterns.
![](figuras/ejemplo.png)

Related species often have similar functional traits, niches and ecological interactions, suggesting that phylogenetic diversity may encapsulate many of the functionally important aspects of biodiversity. Hence, PD is related to ecosystem function [Srivastava et al., 2012.](https://onlinelibrary.wiley.com/doi/10.1111/j.1461-0248.2012.01795.x)
![](figuras/pd_ecosystem_function.png)

At the community level, phylogenetic clustering which is often regarded as evidence of environmental filtering, while phylogenetic overdispersion is often associated to limiting similarity. 
![](figuras/pd_patterns.png)

**Nota:** Nevertheless, these hypothetical links assume many ecological and evolutionary processes.

![](figuras/table1_webb.png)\
[Webb et al., 2002.](https://www.annualreviews.org/content/journals/10.1146/annurev.ecolsys.33.010802.150448)\
When species **traits** responsible for their physiological tolerances are **conserved**, an **environmental filtering** that limits the range of viable ecological strategies at a given site is expected to select **co-occurring species more related** than expected by chance, i.e. generate a pattern known as **phylogenetic clustering**.

**Competitive exclusion** can limit the ecological similarity of co-occurring species, generating a pattern of **phylogenetic overdispersion** or **phylogenetic evenness**.

When **traits are diverging faster** across the evolutionary time, the effects of habitat filtering should be weaker, producing **evenly dispersed patterns** of relatedness.

![](figuras/convergence.png)

**Competition** or limiting similarity is expected to produce **random** or **clustered patterns**.

If communities are assembled independently with respect to traits (e.g., Hubbell 2001), then patterns of relatedness should be resemble random expectation.

**Artículo de discusión:**\
Phylogenetic diversity and the functioning of ecosystems [Srivastava et al., 2012.](https://onlinelibrary.wiley.com/doi/10.1111/j.1461-0248.2012.01795.x) 
