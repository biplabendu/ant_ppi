In this repository we deposited the Supplementary data/script used in study "Genome-wide inference of Camponotus floridanus protein-protein interaction network using homologous mapping and interacting domain profile pairs".

## Supplementary data
Supplementary material can be found [here](https://github.com/ShishirGupta-Wu/aspergillus_ps/blob/master/Supplementary_materials.zip) in a single Excel Sheet containing all dastasheets.

#### [Datasheet 1](https://github.com/ShishirGupta-Wu/aspergillus_ps/blob/supplementary_data/Additional%20data%20file%201.pdf):

Prelimnary orthology based *C. floridanus* network.  Sheet can be imported in Cytoscape (www.cytoscape.org/) for further network analysis. 

#### [Datasheet 2](https://github.com/ShishirGupta-Wu/aspergillus_ps/blob/supplementary_data/Additional%20data%20file%202.pdf):

Domain supported interactions in *C. floridanus* network.

#### [Datasheet 3](https://github.com/ShishirGupta-Wu/aspergillus_ps/blob/supplementary_data/Additional%20data%20file%203.pdf): 

Subcellular localization and domain supported interactions in *C. floridanus* network.

#### [Datasheet 4](https://github.com/ShishirGupta-Wu/aspergillus_ps/blob/supplementary_data/Additional%20data%20file%203.pdf): 

Isoform filtered, subcellular localization and domain supported final interactions in C. floridanus network. Sheet can be imported in [Cytoscape](www.cytoscape.org/) for further network analysis. Structural annotation of genes coding these proteins can be downloaded from the [web-repository](https://www.biozentrum.uni-wuerzburg.de/bioinfo/computing/Camponotus) 

#### [Datasheet 5](https://github.com/ShishirGupta-Wu/aspergillus_ps/blob/supplementary_data/Additional%20data%20file%203.pdf): 

Calculation of Z-statistics for centrality parameters in ant interactome against three independent datasets. Pair wise comparison chart of different parameters: clustering coefficient, degree distribution and mean shortest path for ant interactome against three randomly generate independent network is shown. The values were calculated through statistical Z-test.

#### [Datasheet 6](https://github.com/ShishirGupta-Wu/aspergillus_ps/blob/supplementary_data/Additional%20data%20file%203.pdf): 

Functional over-repsentation molecular function analysis of *C. floridanus* proteins present in the interactome. 

#### [Datasheet 7](https://github.com/ShishirGupta-Wu/aspergillus_ps/blob/supplementary_data/Additional%20data%20file%203.pdf): 

Degree and orthology  of *C. floridanus* proteins present in the interactome. 

#### [Supplementary Figures]

Supplementary Figure 1

Supplementary Figure 2

### [Script to generate random networks](https://github.com/ShishirGupta-Wu/aspergillus_ps/blob/supplementary_data/Additional%20file%202.pdf) -

Script needed two files to run

(I) List of protein/gene identifiers. See the sample file [here]().

(II) List of interations which should be avoided. See the sample file [here]().

`$ perl random_network_generator.pl file1.txt file2.txt > 100_random_networks`

Note that 100_random_networks will be a single file. To split the file 

`$ perl split_networks.pl 100_random_networks`
