library(ExomeDepth)
library(GenomicRanges)
library("docopt")

'usage: annotate_cnvs.r --cnv_list <cnv_list> --cnv_type <cnv_type>  --outfile <outfile>

Arguments:
--cnv_list <cnv_list>
--cnv_type <cnv_type>
--outfile <outfile>' -> doc

opt <- docopt::docopt(doc)

cnv_list <- opt[['--cnv_list']]
cnv_type <- opt[['--cnv_type']]
outfile <- opt[['--outfile']]


data(Conrad.hg19)
data(exons.hg19)
data(exons.hg19.X)

exons.hg19.GRanges <- GRanges(seqnames = exons.hg19$chromosome,
                              IRanges(start=exons.hg19$start,end=exons.hg19$end),
                              names = exons.hg19$name)

exons.hg19.X.GRanges <- GRanges(seqnames = exons.hg19.X$chromosome,
                              IRanges(start=exons.hg19.X$start,end=exons.hg19.X$end),
                              names = exons.hg19.X$name)

all_exons <- new('ExomeDepth', test =matrix(5,5), reference= matrix(5,5), formula = 'cbind(test, reference) ~ 1')

if (file.info(cnv_list)$size == 0) {
    # Write an empty exit file
    write.table(data.frame(), file=outfile, col.names=FALSE)
} else {
    if(cnv_type=='savvycnv') {
        cnv_calls <- read.table(cnv_list)
        colnames(cnv_calls) <- c('chromosome', 'start', 'end', 'type', 'len1', 'len2', 'x1', 'x2', 'reads.ratio', 'anno')
        cnv_calls$chromosome <- gsub('chr', '', cnv_calls$chromosome)
    } else if (cnv_type=='decon') {
         cnv_calls <- read.table(cnv_list, header=T, sep='\t')
         cnv_calls$chromosome <- gsub('chr', '', cnv_calls$Chromosome)
         cnv_calls$start <- cnv_calls$Start
         cnv_calls$end <- cnv_calls$End
         drops <- c("Chromosome","Start", "End")
         cnv_calls <- cnv_calls[ , !(names(cnv_calls) %in% drops)]

    }


    all_exons@CNV.calls <- cnv_calls
    all_exons <- AnnotateExtra(x = all_exons,
                                 reference.annotation = Conrad.hg19.common.CNVs,
                                 min.overlap = 0.5,
                                 column.name = 'Conrad.hg19')
    all_exons <- AnnotateExtra(x = all_exons,
                             reference.annotation = exons.hg19.GRanges,
                             min.overlap = 0.0001,
                             column.name = 'exons.hg19')

    cnv_calls <- all_exons@CNV.calls
    cnv_calls$chromosome <- gsub('M', 'MT', cnv_calls$chromosome)
    if(cnv_type=='savvycnv') {
        cnv_calls_reordered <- cbind(chromosome=paste0('chr',cnv_calls$chromosome), start=cnv_calls$start, end=cnv_calls$end, cnv_calls[,-c(1,2,3)])
     } else if (cnv_type=='decon') {
        cnv_calls_reordered <- cbind(chromosome=paste0('chr',cnv_calls$chromosome), start=cnv_calls$start, end=cnv_calls$end, cnv_calls[,-c(15,16,17)])
     }

    write.table(cnv_calls_reordered, outfile, col.names=F, quote=F, row.names=F, sep='\t')
}
