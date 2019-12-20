In this repository we deposited the Supplementary data/script used in study "Genome-wide inference of Camponotus floridanus protein-protein interaction network using homologous mapping and interacting domain profile pairs".

## Supplementary data
Supplementary material can be found [here](https://github.com/ShishirGupta-Wu/ant_ppi/blob/master/Supplementay_material.xlsx) in a single Excel Sheet containing all dastasheets.

#### [Datasheet 1](https://github.com/ShishirGupta-Wu/ant_ppi/blob/master/Datasheet1.xlsx):

Prelimnary orthology based *C. floridanus* network.  Sheet can be imported in Cytoscape (www.cytoscape.org/) for further network analysis. 

#### [Datasheet 2](https://github.com/ShishirGupta-Wu/ant_ppi/blob/master/Datasheet2.xlsx):

Domain supported interactions in *C. floridanus* network.

#### [Datasheet 3](https://github.com/ShishirGupta-Wu/ant_ppi/blob/master/Datasheet3.xlsx): 

Subcellular localization and domain supported interactions in *C. floridanus* network.

#### [Datasheet 4](https://github.com/ShishirGupta-Wu/ant_ppi/blob/master/Datasheet4.xlsx): 

Isoform filtered, subcellular localization and domain supported final interactions in C. floridanus network. Sheet can be imported in [Cytoscape](www.cytoscape.org/) for further network analysis. Structural annotation of genes coding these proteins can be downloaded from the [web-repository](https://www.biozentrum.uni-wuerzburg.de/bioinfo/computing/Camponotus) 

#### [Datasheet 5](https://github.com/ShishirGupta-Wu/ant_ppi/blob/master/Datasheet5.xlsx): 

Calculation of Z-statistics for centrality parameters in ant interactome against three independent datasets. Pair wise comparison chart of different parameters: clustering coefficient, degree distribution and mean shortest path for ant interactome against three randomly generate independent network is shown. The values were calculated through statistical Z-test.

#### [Datasheet 6](https://github.com/ShishirGupta-Wu/ant_ppi/blob/master/Datasheet6.xlsx): 

Functional over-repsentation molecular function analysis of *C. floridanus* proteins present in the interactome. 

#### [Datasheet 7](https://github.com/ShishirGupta-Wu/ant_ppi/blob/master/Datasheet7.xlsx): 

Degree and orthology  of *C. floridanus* proteins present in the interactome. 

#### [Supplementary Figures] (URL)

Supplementary Figure 1 (attach)

Supplementary Figure 2 (attach)

### Scripts to generate random networks: 

Script needed two files to run

(I) List of protein/gene identifiers. See the sample file [here](https://github.com/ShishirGupta-Wu/ant_ppi/blob/master/file1.txt).

(II) List of interations which should be avoided. See the sample file [here](https://github.com/ShishirGupta-Wu/ant_ppi/blob/master/file2.txt).

`$ perl random_network_generator.pl file1.txt file2.txt > 100_random_networks`

Note that 100_random_networks will be a single file. To split the file 

`$ perl split_networks.pl 100_random_networks`

##### [random_network_generator.pl](https://github.com/ShishirGupta-Wu/ant_ppi/blob/master/random_network_generator.pl)
##### [split_networks.pl](https://github.com/ShishirGupta-Wu/ant_ppi/blob/master/split_networks.pl)

## Issues & Contacts
If you have any questions or requirement of any other data from our manuscript, please feel free to contact me (shishir.gupta@uni-wuerzburg.de) or [Prof. Dr. Thomas Dandekar](https://www.biozentrum.uni-wuerzburg.de/bioinfo/research/groups/funct-genomics-systems-biology/people/thomas-dandekar/) (dandekar@biozentrum.uni-wuerzburg.de).


