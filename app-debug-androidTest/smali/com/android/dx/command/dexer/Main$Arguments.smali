.class public Lcom/android/dx/command/dexer/Main$Arguments;
.super Ljava/lang/Object;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/command/dexer/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Arguments"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;
    }
.end annotation


# static fields
.field private static final INCREMENTAL_OPTION:Ljava/lang/String; = "--incremental"

.field private static final INPUT_LIST_OPTION:Ljava/lang/String; = "--input-list"

.field private static final MAIN_DEX_LIST_OPTION:Ljava/lang/String; = "--main-dex-list"

.field private static final MINIMAL_MAIN_DEX_OPTION:Ljava/lang/String; = "--minimal-main-dex"

.field private static final MULTI_DEX_OPTION:Ljava/lang/String; = "--multi-dex"

.field private static final NUM_THREADS_OPTION:Ljava/lang/String; = "--num-threads"


# instance fields
.field public allowAllInterfaceMethodInvokes:Z

.field public cfOptions:Lcom/android/dx/dex/cf/CfOptions;

.field public final context:Lcom/android/dx/command/dexer/DxContext;

.field public coreLibrary:Z

.field public debug:Z

.field public dexOptions:Lcom/android/dx/dex/DexOptions;

.field public dontOptimizeListFile:Ljava/lang/String;

.field public dumpWidth:I

.field public emptyOk:Z

.field public fileNames:[Ljava/lang/String;

.field public forceJumbo:Z

.field public humanOutName:Ljava/lang/String;

.field public incremental:Z

.field private inputList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public jarOutput:Z

.field public keepClassesInJar:Z

.field public localInfo:Z

.field public mainDexListFile:Ljava/lang/String;

.field public maxNumberOfIdxPerDex:I

.field public methodToDump:Ljava/lang/String;

.field public minSdkVersion:I

.field public minimalMainDex:Z

.field public multiDex:Z

.field public numThreads:I

.field public optimize:Z

.field public optimizeListFile:Ljava/lang/String;

.field public outName:Ljava/lang/String;

.field private outputIsDirectDex:Z

.field private outputIsDirectory:Z

.field public positionInfo:I

.field public statistics:Z

.field public strictNameCheck:Z

.field public verbose:Z

.field public verboseDump:Z

.field public warnings:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1383
    new-instance v0, Lcom/android/dx/command/dexer/DxContext;

    invoke-direct {v0}, Lcom/android/dx/command/dexer/DxContext;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/dx/command/dexer/Main$Arguments;-><init>(Lcom/android/dx/command/dexer/DxContext;)V

    .line 1384
    return-void
.end method

.method public constructor <init>(Lcom/android/dx/command/dexer/DxContext;)V
    .locals 4
    .param p1, "context"    # Lcom/android/dx/command/dexer/DxContext;

    .line 1378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->debug:Z

    .line 1272
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->warnings:Z

    .line 1275
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->verbose:Z

    .line 1278
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->verboseDump:Z

    .line 1281
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->coreLibrary:Z

    .line 1284
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->methodToDump:Ljava/lang/String;

    .line 1287
    iput v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dumpWidth:I

    .line 1290
    iput-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    .line 1293
    iput-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    .line 1296
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->strictNameCheck:Z

    .line 1302
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    .line 1308
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    .line 1314
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->keepClassesInJar:Z

    .line 1317
    const/16 v3, 0xd

    iput v3, p0, Lcom/android/dx/command/dexer/Main$Arguments;->minSdkVersion:I

    .line 1320
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    .line 1323
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->localInfo:Z

    .line 1326
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->incremental:Z

    .line 1330
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->forceJumbo:Z

    .line 1333
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->allowAllInterfaceMethodInvokes:Z

    .line 1339
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimize:Z

    .line 1342
    iput-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimizeListFile:Ljava/lang/String;

    .line 1345
    iput-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    .line 1357
    iput v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->numThreads:I

    .line 1360
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    .line 1364
    iput-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    .line 1368
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->minimalMainDex:Z

    .line 1370
    const/high16 v1, 0x10000

    iput v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->maxNumberOfIdxPerDex:I

    .line 1373
    iput-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    .line 1375
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outputIsDirectory:Z

    .line 1376
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outputIsDirectDex:Z

    .line 1379
    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    .line 1380
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/command/dexer/Main$Arguments;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dx/command/dexer/Main$Arguments;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 1252
    invoke-direct {p0, p1}, Lcom/android/dx/command/dexer/Main$Arguments;->parse([Ljava/lang/String;)V

    return-void
.end method

.method private parse([Ljava/lang/String;)V
    .locals 4
    .param p1, "args"    # [Ljava/lang/String;

    .line 1619
    new-instance v0, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;

    invoke-direct {v0, p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;-><init>([Ljava/lang/String;)V

    .line 1621
    .local v0, "parser":Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;
    invoke-direct {p0, v0}, Lcom/android/dx/command/dexer/Main$Arguments;->parseFlags(Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;)V

    .line 1623
    invoke-virtual {v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getRemaining()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    .line 1624
    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1626
    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1627
    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    .line 1630
    :cond_0
    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_2

    .line 1631
    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1632
    :cond_1
    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v2, "no input files specified"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1633
    new-instance v1, Lcom/android/dx/command/UsageException;

    invoke-direct {v1}, Lcom/android/dx/command/UsageException;-><init>()V

    throw v1

    .line 1635
    :cond_2
    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    if-eqz v1, :cond_3

    .line 1636
    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    const-string v2, "ignoring input files"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1639
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->methodToDump:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1640
    const-string v1, "-"

    iput-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    .line 1643
    :cond_4
    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz v2, :cond_5

    goto :goto_1

    .line 1644
    :cond_5
    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v2, "--main-dex-list is only supported in combination with --multi-dex"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1646
    new-instance v1, Lcom/android/dx/command/UsageException;

    invoke-direct {v1}, Lcom/android/dx/command/UsageException;-><init>()V

    throw v1

    .line 1649
    :cond_6
    :goto_1
    iget-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->minimalMainDex:Z

    if-eqz v2, :cond_8

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz v1, :cond_7

    goto :goto_2

    .line 1650
    :cond_7
    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v2, "--minimal-main-dex is only supported in combination with --multi-dex and --main-dex-list"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1652
    new-instance v1, Lcom/android/dx/command/UsageException;

    invoke-direct {v1}, Lcom/android/dx/command/UsageException;-><init>()V

    throw v1

    .line 1655
    :cond_8
    :goto_2
    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz v1, :cond_a

    iget-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->incremental:Z

    if-nez v2, :cond_9

    goto :goto_3

    .line 1656
    :cond_9
    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v2, "--incremental is not supported with --multi-dex"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1658
    new-instance v1, Lcom/android/dx/command/UsageException;

    invoke-direct {v1}, Lcom/android/dx/command/UsageException;-><init>()V

    throw v1

    .line 1661
    :cond_a
    :goto_3
    if-eqz v1, :cond_c

    iget-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outputIsDirectDex:Z

    if-nez v2, :cond_b

    goto :goto_4

    .line 1662
    :cond_b
    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported output \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--multi-dex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " supports only archive or directory output"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1664
    new-instance v1, Lcom/android/dx/command/UsageException;

    invoke-direct {v1}, Lcom/android/dx/command/UsageException;-><init>()V

    throw v1

    .line 1667
    :cond_c
    :goto_4
    iget-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outputIsDirectory:Z

    if-eqz v2, :cond_d

    if-nez v1, :cond_d

    .line 1668
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    const-string v3, "classes.dex"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    .line 1671
    :cond_d
    invoke-virtual {p0}, Lcom/android/dx/command/dexer/Main$Arguments;->makeOptionsObjects()V

    .line 1672
    return-void
.end method

.method private parseFlags(Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;)V
    .locals 5
    .param p1, "parser"    # Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;

    .line 1489
    nop

    :goto_0
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1490
    const-string v0, "--debug"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1491
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->debug:Z

    goto :goto_0

    .line 1492
    :cond_0
    const-string v0, "--no-warning"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1493
    iput-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->warnings:Z

    goto :goto_0

    .line 1494
    :cond_1
    const-string v0, "--verbose"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1495
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->verbose:Z

    goto :goto_0

    .line 1496
    :cond_2
    const-string v0, "--verbose-dump"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1497
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->verboseDump:Z

    goto :goto_0

    .line 1498
    :cond_3
    const-string v0, "--no-files"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1499
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    goto :goto_0

    .line 1500
    :cond_4
    const-string v0, "--no-optimize"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1501
    iput-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimize:Z

    goto :goto_0

    .line 1502
    :cond_5
    const-string v0, "--no-strict"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1503
    iput-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->strictNameCheck:Z

    goto :goto_0

    .line 1504
    :cond_6
    const-string v0, "--core-library"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1505
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->coreLibrary:Z

    goto :goto_0

    .line 1506
    :cond_7
    const-string v0, "--statistics"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1507
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->statistics:Z

    goto :goto_0

    .line 1508
    :cond_8
    const-string v0, "--optimize-list="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "--optimize-list and --no-optimize-list are incompatible."

    if-eqz v0, :cond_a

    .line 1509
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 1514
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimize:Z

    .line 1515
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimizeListFile:Ljava/lang/String;

    goto/16 :goto_0

    .line 1510
    :cond_9
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1512
    new-instance v0, Lcom/android/dx/command/UsageException;

    invoke-direct {v0}, Lcom/android/dx/command/UsageException;-><init>()V

    throw v0

    .line 1516
    :cond_a
    const-string v0, "--no-optimize-list="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1517
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 1522
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimize:Z

    .line 1523
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    goto/16 :goto_0

    .line 1518
    :cond_b
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1520
    new-instance v0, Lcom/android/dx/command/UsageException;

    invoke-direct {v0}, Lcom/android/dx/command/UsageException;-><init>()V

    throw v0

    .line 1524
    :cond_c
    const-string v0, "--keep-classes"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1525
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->keepClassesInJar:Z

    goto/16 :goto_0

    .line 1526
    :cond_d
    const-string v0, "--output="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1527
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    .line 1528
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1529
    iput-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    .line 1530
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outputIsDirectory:Z

    goto/16 :goto_0

    .line 1531
    :cond_e
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/dex/util/FileUtils;->hasArchiveSuffix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1532
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    goto/16 :goto_0

    .line 1533
    :cond_f
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    const-string v3, ".dex"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    .line 1534
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1

    .line 1538
    :cond_10
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown output extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1540
    new-instance v0, Lcom/android/dx/command/UsageException;

    invoke-direct {v0}, Lcom/android/dx/command/UsageException;-><init>()V

    throw v0

    .line 1535
    :cond_11
    :goto_1
    iput-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    .line 1536
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outputIsDirectDex:Z

    goto/16 :goto_0

    .line 1542
    :cond_12
    const-string v0, "--dump-to="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1543
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1544
    :cond_13
    const-string v0, "--dump-width="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1545
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dumpWidth:I

    goto/16 :goto_0

    .line 1546
    :cond_14
    const-string v0, "--dump-method="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1547
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->methodToDump:Ljava/lang/String;

    .line 1548
    iput-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    goto/16 :goto_0

    .line 1549
    :cond_15
    const-string v0, "--positions="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1550
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 1551
    .local v0, "pstr":Ljava/lang/String;
    const-string v2, "none"

    if-ne v0, v2, :cond_16

    .line 1552
    iput v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    goto :goto_2

    .line 1553
    :cond_16
    const-string v1, "important"

    if-ne v0, v1, :cond_17

    .line 1554
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    goto :goto_2

    .line 1555
    :cond_17
    const-string v1, "lines"

    if-ne v0, v1, :cond_18

    .line 1556
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    .line 1562
    .end local v0    # "pstr":Ljava/lang/String;
    :goto_2
    goto/16 :goto_0

    .line 1558
    .restart local v0    # "pstr":Ljava/lang/String;
    :cond_18
    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown positions option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1560
    new-instance v1, Lcom/android/dx/command/UsageException;

    invoke-direct {v1}, Lcom/android/dx/command/UsageException;-><init>()V

    throw v1

    .line 1562
    .end local v0    # "pstr":Ljava/lang/String;
    :cond_19
    const-string v0, "--no-locals"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1563
    iput-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->localInfo:Z

    goto/16 :goto_0

    .line 1564
    :cond_1a
    const-string v0, "--num-threads="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1565
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->numThreads:I

    goto/16 :goto_0

    .line 1566
    :cond_1b
    const-string v0, "--incremental"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1567
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->incremental:Z

    goto/16 :goto_0

    .line 1568
    :cond_1c
    const-string v0, "--force-jumbo"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1569
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->forceJumbo:Z

    goto/16 :goto_0

    .line 1570
    :cond_1d
    const-string v0, "--multi-dex"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1571
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    goto/16 :goto_0

    .line 1572
    :cond_1e
    const-string v0, "--main-dex-list="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1573
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    goto/16 :goto_0

    .line 1574
    :cond_1f
    const-string v0, "--minimal-main-dex"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1575
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->minimalMainDex:Z

    goto/16 :goto_0

    .line 1576
    :cond_20
    const-string v0, "--set-max-idx-number="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1577
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->maxNumberOfIdxPerDex:I

    goto/16 :goto_0

    .line 1578
    :cond_21
    const-string v0, "--input-list="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1579
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1581
    .local v0, "inputListFile":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    .line 1582
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/android/dx/command/dexer/Main;->access$1100(Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1588
    nop

    .line 1589
    .end local v0    # "inputListFile":Ljava/io/File;
    goto/16 :goto_0

    .line 1583
    .restart local v0    # "inputListFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1584
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v2, v2, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read input list file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1585
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1584
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1587
    new-instance v2, Lcom/android/dx/command/UsageException;

    invoke-direct {v2}, Lcom/android/dx/command/UsageException;-><init>()V

    throw v2

    .line 1589
    .end local v0    # "inputListFile":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_22
    const-string v0, "--min-sdk-version="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1590
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    .line 1593
    .local v0, "arg":Ljava/lang/String;
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1596
    .local v2, "value":I
    goto :goto_3

    .line 1594
    .end local v2    # "value":I
    :catch_1
    move-exception v2

    .line 1595
    .local v2, "ex":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    move v2, v3

    .line 1597
    .local v2, "value":I
    :goto_3
    if-lt v2, v1, :cond_23

    .line 1601
    iput v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->minSdkVersion:I

    .line 1602
    .end local v0    # "arg":Ljava/lang/String;
    .end local v2    # "value":I
    goto/16 :goto_0

    .line 1598
    .restart local v0    # "arg":Ljava/lang/String;
    .restart local v2    # "value":I
    :cond_23
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "improper min-sdk-version option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1599
    new-instance v1, Lcom/android/dx/command/UsageException;

    invoke-direct {v1}, Lcom/android/dx/command/UsageException;-><init>()V

    throw v1

    .line 1602
    .end local v0    # "arg":Ljava/lang/String;
    .end local v2    # "value":I
    :cond_24
    const-string v0, "--allow-all-interface-method-invokes"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1603
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->allowAllInterfaceMethodInvokes:Z

    goto/16 :goto_0

    .line 1605
    :cond_25
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1606
    new-instance v0, Lcom/android/dx/command/UsageException;

    invoke-direct {v0}, Lcom/android/dx/command/UsageException;-><init>()V

    throw v0

    .line 1609
    :cond_26
    return-void
.end method


# virtual methods
.method public makeOptionsObjects()V
    .locals 2

    .line 1688
    new-instance v0, Lcom/android/dx/dex/cf/CfOptions;

    invoke-direct {v0}, Lcom/android/dx/dex/cf/CfOptions;-><init>()V

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/android/dx/dex/cf/CfOptions;

    .line 1689
    iget v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    iput v1, v0, Lcom/android/dx/dex/cf/CfOptions;->positionInfo:I

    .line 1690
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/android/dx/dex/cf/CfOptions;

    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->localInfo:Z

    iput-boolean v1, v0, Lcom/android/dx/dex/cf/CfOptions;->localInfo:Z

    .line 1691
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/android/dx/dex/cf/CfOptions;

    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->strictNameCheck:Z

    iput-boolean v1, v0, Lcom/android/dx/dex/cf/CfOptions;->strictNameCheck:Z

    .line 1692
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/android/dx/dex/cf/CfOptions;

    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimize:Z

    iput-boolean v1, v0, Lcom/android/dx/dex/cf/CfOptions;->optimize:Z

    .line 1693
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/android/dx/dex/cf/CfOptions;

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimizeListFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/dx/dex/cf/CfOptions;->optimizeListFile:Ljava/lang/String;

    .line 1694
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/android/dx/dex/cf/CfOptions;

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/dx/dex/cf/CfOptions;->dontOptimizeListFile:Ljava/lang/String;

    .line 1695
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/android/dx/dex/cf/CfOptions;

    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->statistics:Z

    iput-boolean v1, v0, Lcom/android/dx/dex/cf/CfOptions;->statistics:Z

    .line 1697
    iget-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->warnings:Z

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/android/dx/dex/cf/CfOptions;

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    iput-object v1, v0, Lcom/android/dx/dex/cf/CfOptions;->warn:Ljava/io/PrintStream;

    goto :goto_0

    .line 1700
    :cond_0
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/android/dx/dex/cf/CfOptions;

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/android/dx/command/dexer/DxContext;->noop:Ljava/io/PrintStream;

    iput-object v1, v0, Lcom/android/dx/dex/cf/CfOptions;->warn:Ljava/io/PrintStream;

    .line 1703
    :goto_0
    new-instance v0, Lcom/android/dx/dex/DexOptions;

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lcom/android/dx/dex/DexOptions;-><init>(Ljava/io/PrintStream;)V

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dexOptions:Lcom/android/dx/dex/DexOptions;

    .line 1704
    iget v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->minSdkVersion:I

    iput v1, v0, Lcom/android/dx/dex/DexOptions;->minSdkVersion:I

    .line 1705
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dexOptions:Lcom/android/dx/dex/DexOptions;

    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->forceJumbo:Z

    iput-boolean v1, v0, Lcom/android/dx/dex/DexOptions;->forceJumbo:Z

    .line 1706
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dexOptions:Lcom/android/dx/dex/DexOptions;

    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->allowAllInterfaceMethodInvokes:Z

    iput-boolean v1, v0, Lcom/android/dx/dex/DexOptions;->allowAllInterfaceMethodInvokes:Z

    .line 1707
    return-void
.end method

.method public parseFlags([Ljava/lang/String;)V
    .locals 1
    .param p1, "flags"    # [Ljava/lang/String;

    .line 1681
    new-instance v0, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;

    invoke-direct {v0, p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/dx/command/dexer/Main$Arguments;->parseFlags(Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;)V

    .line 1682
    return-void
.end method
