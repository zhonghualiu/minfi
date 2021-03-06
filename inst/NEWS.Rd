\name{minfinews}
\title{Minfi News}
\encoding{UTF-8}

\section{Version 1.11}{
  \itemize{
    \item Updated CITATION.
    \item Added dropLociWithSnps for easy exclusion of certain
    methylation loci.
    \item Add getAnnotationObject for easy printing of contents of the
    annotation object.
    \item Changes in 1.10 imported into 1.11.
    \item Fixed an issue with bumphunter calling the bumphunter package
    in a wrong way.
    \item Added getOOB and getSnpBeta convenience functions for
    accessing the OOB probes and the SNP probes.
    \item read.450k.sheet now forces a column named Slide to be
    character.
    \item The NOOB background correction method is now available throguh
    preprocessNoob.
    \item One can now supply the permutations to be used in permutation
    analysis. This is useful for cases in which the total number of
    possilbe permutations is small and one wants to use them all or in
    cases in which one wants to assure balance, for example, between cases
    and controls. 
    \item The bumphunter method now has the option to create null
    distributions using a bootstrap approach.
    \item Fixed a man page issue.
    \item Added GitHub URL to DESCRIPTION.
    \item Functional normalization now supports background correction by
    NOOB (see preprocessNoob); this is recommended (and the new
    default). 
  }
}

\section{Version 1.10}{
  \itemize{
    \item Modified read.450k.sheet to ignore case when identifying the
    data header "[DATA]".  This addresses an issue with sheets generated
    by some Illumina instruments.  Reported and partial fix provided by
    the github user nilsigem. 
  }
} 

\section{Version 1.9}{
  \itemize{
    \item Importing the changes from 1.8 into 1.9.
    \item Added the withColor argument to the getProbeType function,
    which allows the return of "IGrn", "IRed", "II", instead of only
    "I", "II".
    \item Added asList argument to getControlAddress to return result as
    a list.
    \item Moved reshape from Depends to Imports.
    \item Dramatic improvement in memory usage of preprocessRaw.
    \item Updated CITATION, the minif paper is in press.
    \item Fixed bug with mapToGenome(..., mergeManifest = TRUE) reported
    by Dale Watkins <dale.watkins@sahmri.com> and  Allegra A. Petti
    <apetti@genome.wustl.edu>.
    \item Fixed bug with mapToGenome(rSet) with rSet being a RatioSet
    with the CN set to NULL reported byAllegra A. Petti
    <apetti@genome.wustl.edu>.
    \item Added preprocessFunnorm, a new preprocessing method.
    \item Improvements to the speed of getAnnotation by Martin Morgan
    <mtmorgan@fhcrc.org>.
  }
}

\section{Version 1.8}{
  \itemize{
    \item preprocessQuantile(object) would fail if object was a
    GenomicMethylSet.  This is now fixed.
    \item Cleanup of Rd markdown in various help files.
    \item estimateCellCounts would throw an error.  This is now fixed.
    The function arguments have changed.
    \item Bug in cpgCollapse led to incorrect results. Your output is
    affected if table(granges(output[[1]])$type) is all 'OpenSea'.
    Reported by Florence Cavalli <florence@ebi.ac.uk>.
    \item Encapsulated the example for estimateCellCounts() in 'dontrun',
    to disable it on the build servers.
    \item preprocessQuantile would work as if removeBadSamples=TRUE no
    matter the value of the argument.
    \item Fixing replace bug in fixMethOutliers; it would not work on
    the output of preprocessSWAN.  Reported by David McGaughey
    <david.mcgaughey@nih.gov>.
    \item The function mapToGenome would return something that looked
    like an unordered GenomicMethylSet.  Actually, loci were correctly
    ordered within chromosomes, the issue had to do with whether the
    chromosomes were ordered as chr1, chr2, chr3 (used in minfi) or chr1,
    chr10, chr11 (lexigraphically).  Reported by Florence Cavalli
    <florence@ebi.ac.uk>.
    \item Switched to using new author format in DESCRIPTION.
  }
}

\section{Version 1.7}{
  \itemize{
    \item Added getMethSignal(), a convenience function for
    programming.
    \item Changed the argument name of "type" to "what" for
    getMethSignal(). 
    \item Added the class "RatioSet", like "GenomicRatioSet" but without 
    the genome information.
    \item Bugfixes to the "GenomicRatioSet()" constructor.
    \item Added the method ratioConvert(), for converting a "MethylSet"
    to a "RatioSet" or a "GenomicMethylSet" to a "GenomicRatioSet".
    \item Fixed an issue with GenomicMethylSet() and GenomicRatioSet()
    caused by a recent change to a non-exported function in the
    GenomicRanges package (Reported by Gustavo Fernandez Bayon
    <gbayon@gmail.com>).
    \item Added fixMethOutliers for thresholding extreme observations in
    the [un]methylation channels.
    \item Added getSex, addSex, plotSex for estimating sex of the
    samples.
    \item Added getQC, addQC, plotQC for a very simple quality control
    measure.
    \item Added minfiQC for a one-stop function for quality control
    measures.
    \item Changed some verbose=TRUE output in various functions.
    \item Added preprocessQuantile.
    \item Added bumphunter method for "GenomicRatioSet".
    \item Handling signed zero in minfi:::.digestMatrix which caused
    unit tests to fail on Windows.
    \item addSex and addQC lead to sampleNames() being dropped because
    of a likely bug in cbind(DataFrame, DataFrame).  Work-around has
    been implemented.
    \item Re-ran the test data generator.
    \item Fixed some Depends and Imports issues revealed by new features
    of R CMD check.
    \item Added blockFinder and cpgCollapse.
    \item (internal) added convenience functions for argument checking.
    \item Exposed and re-wrote getAnnotation().
    \item Changed getLocations() from being a method to a simple
    function. Arguments have been removed (for example, now the function
    always drops non-mapping loci).
    \item Implemented getIslandStatus(), getProbeType(), getSnpInfo()
    and addSnpInfo().  The two later functions retrieve pre-computed SNP
    overlaps, and the new annotation object includes SNPs based on dbSNP
    137, 135 and 132.
    \item Changed the IlluminaMethylatioAnnotation class to now include
    genomeBuild information as well as defaults.
    \item Added estimateCellCounts for deconvolution of cell types in
    whole blood.  Thanks to Andrew Jaffe and Andres Houseman.
  }
}

\section{Version 1.5}{
  \itemize{
    \item Added unit testing for the preprocessing algorithms.
    \item Improved the speed of SWAN for large datasets.
    \item Added the new class "GenomicRatioSet".  It is akin to
    "GenomicMethylSet" but instead of containing Meth and Unmeth it
    contains M and/or Beta and copy number.
    \item We now depend on illuminaio instead of crlmm in order to get
    readIDAT.
    \item Added unsrturl.bst to minimize dependences for running
    Sweave.
  }
}


\section{Version 1.3}{
  \itemize{
    \item Updated preprocessSwan to fix a bug when mSet was not set to
    the default value of NULL.  Specifically, now the "counts" tables is
    used to construct "subset".
    \item Changed the function manifestNew() to
    IlluminaMethylationManifest().
    \item Added IlluminaMethylationAnnotation().
    \item Added placeholders for unit testing based on RUnit.
    \item Introduced a new show method for MethylSet and RGChannelSet,
    derived from the eSet method in Biobase.
    \item The annotation slot of a MethylSet/RGChannelSet is now
    intended to _not_ be a scalar, but instead have length 2 with
    components 'array' and 'annotation'.  This foreshadows introdution of
    annotation packages for use with minfi.
    \item Reorganization of R files; rewriting of the man pages for
    MethylSet, RGChannelSet.
    \item getMeth, getUnmeth, getBeta, getM are now methods.
    \item bug fix to qcReport thanks to Tao Shi.
    \item Changes to getBeta / getM, both in terms of which arguments
    the methods take and how the values are computed.
    \item Changes to the manifest structure; it now has separate slots
    for genotype probes and these probes are no longer part of a MethylSet
    (using eg. preprocessRaw).  They can be accessed using
    getProbeInfo(rgSet, type) with type equal to "SnpI" or "SnpII".
    \item Introduction of mapToGenome, getLocations and the new class
    GenomicMethylSet.  man pages are reasonably complete, still need to
    add examples to the vignette.  This will be a standard part of an
    extended pipeline.
    \item Introduction of
    IlluminaHumanMethylation450lannotation.ilmn.v1.2 which contains some
    new annotation needed for mapToGenome/getLocations.  This package will
    be split into several packages moving forward, in an attempt to
    harmonize efforts by us and Tim Triche.  getLocations/mapToGenome
    will stay the same.
    \item getControlTypes added (returns the different types of control
    probes).
    \item GenomicMethylSet now inherits a number of methods including
    granges(), start(), end() etc. from SummarizedExperiemnt.  They have
    therefore been deleted from minfi.
    \item Bugfix to getLocations(...,  mergeManifest = TRUE).  It now
    longer throws an error.
    \item mapToGenome now returns a GenomicMethylSet ordered according
    to the chromosome name ordering chr1,..,chr22,chrX,chrY,unmapped,
    the last one not present if drop=TRUE (default).
  }
}

\section{Version 1.1}{
  \itemize{
    \item Changed NAMESPACE file
    \item Defined constructors for MethylSet, RGChannelSet,
    RGChannelSetExtended.
    \item Included a version number in the class definition for
    MethylSet and RGChannelSet.  Old objects can be updated by calls of
    the form updateObject(Mset).
    \item read.manifest (not exported) updated to include nCpGs.
    \item preprocessSwan was added.  Still work in progress.
    \item Changed background calculation in preprocessSwan.
    \item Added a section to the vignette describing preprocessSwan.
    \item Bug fix: ilogit2 is now in base (it used to be base e).  Thanks
    to Time Triche, Jr <tim.triche@gmail.com>.
    \item Added and dcoumented the IlluminaMethylationAnnotation class;
    still work in progess.
    \item Moved package vignette from inst/doc to vignettes.
  }
}

\section{Version 0.99}{
  \itemize{
    \item Initial release to Bioconductor.
    \item Added NEWS file.
    \item Bugfix to vignette.
    \item readIDAT is now exported by crlmm, implying that we can import
  this function through NAMESPACE.
  }
}
