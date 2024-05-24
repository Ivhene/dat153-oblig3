.class public Lorg/checkerframework/framework/util/CheckerMain;
.super Ljava/lang/Object;
.source "CheckerMain.java"


# static fields
.field protected static final BOOT_CLASS_PATH_REGEX:Ljava/util/regex/Pattern;

.field protected static final CHECKER_BASE_DIR_NAME:Ljava/lang/String;

.field protected static final CHECKER_BASE_PACKAGE:Ljava/lang/String; = "org.checkerframework.checker"

.field private static final FILESEP_STAR:Ljava/lang/String;

.field protected static final FULLY_QUALIFIED_SUBTYPING_CHECKER:Ljava/lang/String;

.field protected static final JVM_OPTS_REGEX:Ljava/util/regex/Pattern;

.field protected static final SUBTYPING_CHECKER_NAME:Ljava/lang/String;


# instance fields
.field private final argListFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field protected final checkerJar:Ljava/io/File;

.field protected final checkerQualJar:Ljava/io/File;

.field private final compilationBootclasspath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cpOpts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final javacJar:Ljava/io/File;

.field protected final jdkJar:Ljava/io/File;

.field private final jvmOpts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ppOpts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final runtimeClasspath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final toolOpts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 288
    nop

    .line 289
    const-string v0, "^(?:-J)?-Xbootclasspath/p:(.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/util/CheckerMain;->BOOT_CLASS_PATH_REGEX:Ljava/util/regex/Pattern;

    .line 305
    const-string v0, "^(?:-J)(.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/util/CheckerMain;->JVM_OPTS_REGEX:Ljava/util/regex/Pattern;

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/util/CheckerMain;->FILESEP_STAR:Ljava/lang/String;

    .line 722
    const-string v0, "."

    const-string v1, "/"

    const-string v2, "org.checkerframework.checker"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/util/CheckerMain;->CHECKER_BASE_DIR_NAME:Ljava/lang/String;

    .line 724
    const-class v0, Lorg/checkerframework/common/subtyping/SubtypingChecker;

    .line 725
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/util/CheckerMain;->FULLY_QUALIFIED_SUBTYPING_CHECKER:Ljava/lang/String;

    .line 727
    const-class v0, Lorg/checkerframework/common/subtyping/SubtypingChecker;

    .line 728
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/util/CheckerMain;->SUBTYPING_CHECKER_NAME:Ljava/lang/String;

    .line 727
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/util/List;)V
    .locals 4
    .param p1, "checkerJar"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p2, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/checkerframework/framework/util/CheckerMain;->checkerJar:Ljava/io/File;

    .line 99
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 101
    .local v0, "searchPath":Ljava/io/File;
    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/util/CheckerMain;->replaceShorthandProcessor(Ljava/util/List;)V

    .line 102
    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/util/CheckerMain;->collectArgFiles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/util/CheckerMain;->argListFiles:Ljava/util/List;

    .line 104
    new-instance v1, Ljava/io/File;

    const-string v2, "checker-qual.jar"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    const-string v2, "-checkerQualJar"

    invoke-static {v2, v1, p2}, Lorg/checkerframework/framework/util/CheckerMain;->extractFileArg(Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/util/CheckerMain;->checkerQualJar:Ljava/io/File;

    .line 110
    new-instance v1, Ljava/io/File;

    const-string v2, "javac.jar"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    const-string v2, "-javacJar"

    invoke-static {v2, v1, p2}, Lorg/checkerframework/framework/util/CheckerMain;->extractFileArg(Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/util/CheckerMain;->javacJar:Ljava/io/File;

    .line 113
    invoke-static {}, Lorg/checkerframework/javacutil/PluginUtil;->getJdkJarName()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "jdkJarName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    const-string v3, "-jdkJar"

    invoke-static {v3, v2, p2}, Lorg/checkerframework/framework/util/CheckerMain;->extractFileArg(Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/framework/util/CheckerMain;->jdkJar:Ljava/io/File;

    .line 117
    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/util/CheckerMain;->createCompilationBootclasspath(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/framework/util/CheckerMain;->compilationBootclasspath:Ljava/util/List;

    .line 118
    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/util/CheckerMain;->createRuntimeClasspath(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/framework/util/CheckerMain;->runtimeClasspath:Ljava/util/List;

    .line 119
    invoke-static {p2}, Lorg/checkerframework/framework/util/CheckerMain;->extractJvmOpts(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/framework/util/CheckerMain;->jvmOpts:Ljava/util/List;

    .line 121
    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/util/CheckerMain;->createCpOpts(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/framework/util/CheckerMain;->cpOpts:Ljava/util/List;

    .line 122
    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/util/CheckerMain;->createPpOpts(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/framework/util/CheckerMain;->ppOpts:Ljava/util/List;

    .line 123
    iput-object p2, p0, Lorg/checkerframework/framework/util/CheckerMain;->toolOpts:Ljava/util/List;

    .line 125
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/CheckerMain;->assertValidState()V

    .line 126
    return-void
.end method

.method private static argsListHasClassPath(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .line 573
    .local p0, "argListFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {p0}, Lorg/checkerframework/framework/util/CheckerMain;->expandArgFiles(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 574
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "-classpath"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-cp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 577
    .end local v1    # "arg":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 575
    .restart local v1    # "arg":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 579
    .end local v1    # "arg":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static argsListHasProcessorPath(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .line 588
    .local p0, "argListFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {p0}, Lorg/checkerframework/framework/util/CheckerMain;->expandArgFiles(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 589
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "-processorpath"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    const/4 v0, 0x1

    return v0

    .line 592
    .end local v1    # "arg":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 594
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static assertFilesExist(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 678
    .local p0, "expectedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 679
    .local v0, "missingFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 680
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_1

    .line 683
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 684
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 681
    .restart local v2    # "file":Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Null passed to assertFilesExist"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 688
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 689
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 690
    .local v1, "missingAbsoluteFilenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 691
    .local v3, "missingFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    .end local v3    # "missingFile":Ljava/io/File;
    goto :goto_1

    .line 693
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The following files could not be located: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 695
    const-string v4, ", "

    invoke-static {v4, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 697
    .end local v1    # "missingAbsoluteFilenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method private concatenatePaths(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 459
    .local p1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 461
    .local v2, "path":Ljava/lang/String;
    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 462
    .local v6, "element":Ljava/lang/String;
    invoke-direct {p0, v6}, Lorg/checkerframework/framework/util/CheckerMain;->expandWildcards(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 461
    .end local v6    # "element":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 464
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 465
    :cond_1
    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static expandArgFiles(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 604
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v0, "content":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 607
    .local v2, "file":Ljava/io/File;
    :try_start_0
    invoke-static {v2}, Lorg/checkerframework/javacutil/PluginUtil;->readFile(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    nop

    .line 611
    .end local v2    # "file":Ljava/io/File;
    goto :goto_0

    .line 608
    .restart local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 609
    .local v1, "exc":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not open file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 612
    .end local v1    # "exc":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    return-object v0
.end method

.method private expandWildcards(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "pathElement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 476
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    const-string v0, "."

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/util/CheckerMain;->jarFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 478
    :cond_0
    sget-object v0, Lorg/checkerframework/framework/util/CheckerMain;->FILESEP_STAR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/util/CheckerMain;->jarFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 480
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 483
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected static extractArg(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p0, "argumentName"    # Ljava/lang/String;
    .param p1, "alternative"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 219
    .local p2, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 220
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 221
    return-object p1

    .line 222
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1

    .line 226
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 227
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 223
    :cond_1
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command line contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but no value following it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static extractBootClassPath(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 301
    .local p0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lorg/checkerframework/framework/util/CheckerMain;->BOOT_CLASS_PATH_REGEX:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lorg/checkerframework/framework/util/CheckerMain;->extractOptWithPattern(Ljava/util/regex/Pattern;ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected static extractCpOpts(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 330
    .local p0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v0, "actualArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 334
    .local v1, "lastCpArg":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 335
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "-cp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "-classpath"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 336
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 337
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 339
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    .line 341
    add-int/lit8 v2, v2, -0x1

    .line 334
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    .end local v2    # "i":I
    :cond_2
    if-nez v1, :cond_4

    .line 348
    const-string v2, "CLASSPATH"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "systemClassPath":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 350
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_3
    const-string v3, "."

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    .end local v2    # "systemClassPath":Ljava/lang/String;
    goto :goto_1

    .line 355
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    :goto_1
    return-object v0
.end method

.method protected static extractFileArg(Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Ljava/io/File;
    .locals 2
    .param p0, "argumentName"    # Ljava/lang/String;
    .param p1, "alternative"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .line 243
    .local p2, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p2}, Lorg/checkerframework/framework/util/CheckerMain;->extractArg(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "filePath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 245
    return-object p1

    .line 247
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method protected static extractJvmOpts(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 316
    .local p0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lorg/checkerframework/framework/util/CheckerMain;->JVM_OPTS_REGEX:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lorg/checkerframework/framework/util/CheckerMain;->extractOptWithPattern(Ljava/util/regex/Pattern;ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected static extractOptWithPattern(Ljava/util/regex/Pattern;ZLjava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "pattern"    # Ljava/util/regex/Pattern;
    .param p1, "allowEmpties"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 263
    .local p2, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v0, "matchedArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 266
    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 267
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 268
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "arg":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_1

    .line 272
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 276
    .end local v3    # "arg":Ljava/lang/String;
    goto :goto_1

    .line 277
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 279
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :goto_1
    goto :goto_0

    .line 281
    :cond_3
    return-object v0
.end method

.method protected static extractPpOpts(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 369
    .local p0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v0, "actualArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 373
    .local v1, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 374
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "-processorpath"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 375
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 376
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    .line 378
    add-int/lit8 v2, v2, -0x1

    .line 373
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 382
    .end local v2    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 383
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_2
    return-object v0
.end method

.method public static findPathTo(Ljava/lang/Class;Z)Ljava/lang/String;
    .locals 8
    .param p1, "errIfFromDirectory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 624
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 625
    const-class p0, Lorg/checkerframework/framework/util/CheckerMain;

    .line 627
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 632
    .local v1, "idx":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    move-object v4, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".class"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "classFileName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 636
    .local v2, "uri":Ljava/lang/String;
    const-string v4, "file:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 637
    if-eqz p1, :cond_2

    .line 638
    return-object v2

    .line 640
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "This class has been loaded from a directory and not from a jar file."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 644
    :cond_3
    const-string v4, "jar:file:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 645
    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 646
    .local v4, "idx":I
    if-ne v4, v3, :cond_4

    const-string v3, "(unknown)"

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 647
    .local v3, "protocol":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This class has been loaded remotely via the "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " protocol. Only loading from a jar on the local file system is supported."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 653
    .end local v3    # "protocol":Ljava/lang/String;
    .end local v4    # "idx":I
    :cond_5
    const/16 v5, 0x21

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 655
    .local v5, "idx":I
    if-eq v5, v3, :cond_6

    .line 661
    nop

    .line 663
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 664
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    .line 662
    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 665
    .local v3, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 666
    .end local v3    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 667
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Lorg/checkerframework/javacutil/BugInCF;

    const-string v6, "Default charset doesn\'t exist. Your VM is borked."

    invoke-direct {v4, v6}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v4

    .line 656
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You appear to have loaded this class from a local jar file, but I can\'t make sense of the URL!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getAllCheckerClassNames()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 777
    .local v0, "checkerClassNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Ljava/util/jar/JarInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lorg/checkerframework/framework/util/CheckerMain;->checkerJar:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    .line 779
    .local v1, "checkerJarIs":Ljava/util/jar/JarInputStream;
    :goto_0
    invoke-virtual {v1}, Ljava/util/jar/JarInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    move-object v3, v2

    .local v3, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_1

    .line 780
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 783
    .local v2, "name":Ljava/lang/String;
    sget-object v4, Lorg/checkerframework/framework/util/CheckerMain;->CHECKER_BASE_DIR_NAME:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Checker.class"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 786
    const-string v4, "."

    .line 789
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ".class"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    .line 790
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 787
    invoke-static {v4, v5}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 786
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 793
    :cond_1
    invoke-virtual {v1}, Ljava/util/jar/JarInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    .end local v1    # "checkerJarIs":Ljava/util/jar/JarInputStream;
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    goto :goto_1

    .line 794
    :catch_0
    move-exception v1

    .line 797
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v3, p0, Lorg/checkerframework/framework/util/CheckerMain;->checkerJar:Ljava/io/File;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Could not read %s. Shorthand processor names will not work.%n"

    invoke-virtual {v2, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 801
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-object v0
.end method

.method private jarFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "directory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 489
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 490
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Lorg/checkerframework/framework/util/CheckerMain$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/framework/util/CheckerMain$$ExternalSyntheticLambda0;-><init>()V

    .line 491
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 492
    .local v1, "jarFiles":[Ljava/io/File;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 493
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 494
    .local v5, "jarFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    .end local v5    # "jarFile":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 496
    :cond_0
    return-object v2
.end method

.method static synthetic lambda$jarFiles$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "d"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .line 491
    const-string v0, ".jar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".JAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/io/File;

    const-class v1, Lorg/checkerframework/framework/util/CheckerMain;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/checkerframework/framework/util/CheckerMain;->findPathTo(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "pathToThisJar":Ljava/io/File;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .local v1, "alargs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 56
    new-instance v2, Lorg/checkerframework/framework/util/CheckerMain;

    invoke-direct {v2, v0, v1}, Lorg/checkerframework/framework/util/CheckerMain;-><init>(Ljava/io/File;Ljava/util/List;)V

    .line 57
    .local v2, "program":Lorg/checkerframework/framework/util/CheckerMain;
    invoke-virtual {v2}, Lorg/checkerframework/framework/util/CheckerMain;->invokeCompiler()I

    move-result v3

    .line 58
    .local v3, "exitStatus":I
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 59
    return-void
.end method

.method public static matchesCheckerOrSubcheckerFromList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p0, "processorString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 741
    .local p1, "fullyQualifiedCheckerNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    const/4 v0, 0x0

    return v0

    .line 745
    :cond_0
    nop

    .line 746
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/checkerframework/framework/util/CheckerMain;->unshorthandProcessorNames(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    .line 745
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static matchesFullyQualifiedProcessor(Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 1
    .param p0, "processor"    # Ljava/lang/String;
    .param p2, "allowSubcheckers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 898
    .local p1, "fullyQualifiedCheckerNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 899
    invoke-static {p0, p1, p2}, Lorg/checkerframework/framework/util/CheckerMain;->unshorthandProcessorName(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    .line 898
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static outputArgumentsToFile(Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .param p0, "outputFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 519
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_4

    .line 520
    const/4 v0, 0x0

    .line 524
    .local v0, "errorMessage":Ljava/lang/String;
    :try_start_0
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    new-instance v1, Ljava/io/PrintWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 526
    :cond_0
    new-instance v1, Ljava/io/PrintWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    nop

    .line 527
    .local v1, "writer":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 528
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 536
    .local v3, "arg":Ljava/lang/String;
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, " "

    if-eqz v4, :cond_2

    .line 538
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 540
    .local v4, "inputFilename":Ljava/lang/String;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 542
    .local v6, "br":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "line":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 543
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 546
    :cond_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 547
    .end local v4    # "inputFilename":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v8    # "line":Ljava/lang/String;
    goto :goto_3

    .line 548
    :cond_2
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 527
    .end local v3    # "arg":Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 552
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 555
    .end local v1    # "writer":Ljava/io/PrintWriter;
    goto :goto_4

    .line 553
    :catch_0
    move-exception v1

    .line 554
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 557
    .end local v1    # "e":Ljava/io/IOException;
    :goto_4
    if-eqz v0, :cond_4

    .line 558
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to output command-line arguments to file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " due to exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 565
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 700
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 702
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to quote a string containing a double-quote character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_1
    return-object p0
.end method

.method private static unshorthandProcessorName(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;
    .locals 11
    .param p0, "processor"    # Ljava/lang/String;
    .param p2, "allowSubcheckers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 854
    .local p1, "fullyQualifiedCheckerNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 855
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 856
    .local v2, "tryMatch":Z
    nop

    .line 857
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Checker"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v3, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v6, "\\."

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 858
    .local v3, "checkerPath":[Ljava/lang/String;
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v3, v7

    .line 859
    .local v7, "checkerNameShort":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 861
    .local v8, "checkerName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 862
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 863
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v7, v3, v5

    .line 864
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 865
    const/4 v2, 0x1

    goto :goto_1

    .line 866
    :cond_0
    if-eqz p2, :cond_1

    const-string v4, "Subchecker"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 867
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 868
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v7, v3, v5

    .line 869
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 870
    const/4 v2, 0x1

    .line 873
    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    .line 874
    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 875
    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 876
    :cond_2
    return-object v1

    .line 879
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "tryMatch":Z
    .end local v3    # "checkerPath":[Ljava/lang/String;
    .end local v7    # "checkerNameShort":Ljava/lang/String;
    .end local v8    # "checkerName":Ljava/lang/String;
    :cond_3
    goto/16 :goto_0

    .line 881
    :cond_4
    return-object p0
.end method

.method protected static unshorthandProcessorNames(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;
    .locals 5
    .param p0, "processorsString"    # Ljava/lang/String;
    .param p2, "allowSubcheckers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 830
    .local p1, "fullyQualifiedCheckerNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 831
    .local v1, "processors":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 832
    aget-object v3, v1, v2

    sget-object v4, Lorg/checkerframework/framework/util/CheckerMain;->SUBTYPING_CHECKER_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 833
    sget-object v3, Lorg/checkerframework/framework/util/CheckerMain;->FULLY_QUALIFIED_SUBTYPING_CHECKER:Ljava/lang/String;

    aput-object v3, v1, v2

    goto :goto_1

    .line 835
    :cond_0
    aget-object v3, v1, v2

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 836
    aget-object v3, v1, v2

    .line 837
    invoke-static {v3, p1, p2}, Lorg/checkerframework/framework/util/CheckerMain;->unshorthandProcessorName(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 831
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 843
    .end local v2    # "i":I
    :cond_2
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addMainToArgs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 390
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "com.sun.tools.javac.Main"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    return-void
.end method

.method public addToClasspath(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 139
    .local p1, "cpOpts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/CheckerMain;->cpOpts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    return-void
.end method

.method public addToProcessorpath(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 143
    .local p1, "ppOpts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/CheckerMain;->ppOpts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    return-void
.end method

.method public addToRuntimeClasspath(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p1, "runtimeClasspathOpts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/CheckerMain;->runtimeClasspath:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    return-void
.end method

.method protected assertValidState()V
    .locals 5

    .line 130
    invoke-static {}, Lorg/checkerframework/javacutil/PluginUtil;->getJreVersion()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ge v0, v1, :cond_0

    .line 131
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    iget-object v1, p0, Lorg/checkerframework/framework/util/CheckerMain;->javacJar:Ljava/io/File;

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/checkerframework/framework/util/CheckerMain;->jdkJar:Ljava/io/File;

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/checkerframework/framework/util/CheckerMain;->checkerJar:Ljava/io/File;

    aput-object v1, v0, v4

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/checkerframework/framework/util/CheckerMain;->checkerQualJar:Ljava/io/File;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/framework/util/CheckerMain;->assertFilesExist(Ljava/util/List;)V

    goto :goto_0

    .line 134
    :cond_0
    new-array v0, v4, [Ljava/io/File;

    iget-object v1, p0, Lorg/checkerframework/framework/util/CheckerMain;->checkerJar:Ljava/io/File;

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/checkerframework/framework/util/CheckerMain;->checkerQualJar:Ljava/io/File;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/framework/util/CheckerMain;->assertFilesExist(Ljava/util/List;)V

    .line 136
    :goto_0
    return-void
.end method

.method protected collectArgFiles(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 197
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v0, "argListFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 199
    .local v2, "arg":Ljava/lang/String;
    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    new-instance v3, Ljava/io/File;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v2    # "arg":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 204
    :cond_1
    return-object v0
.end method

.method protected createCompilationBootclasspath(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    .local p1, "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/checkerframework/framework/util/CheckerMain;->extractBootClassPath(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 164
    .local v0, "extractedBcp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/checkerframework/javacutil/PluginUtil;->getJreVersion()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 165
    iget-object v1, p0, Lorg/checkerframework/framework/util/CheckerMain;->jdkJar:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 168
    :cond_0
    return-object v0
.end method

.method protected createCpOpts(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    .local p1, "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/checkerframework/framework/util/CheckerMain;->extractCpOpts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 173
    .local v0, "extractedOpts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/util/CheckerMain;->checkerQualJar:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 174
    return-object v0
.end method

.method protected createPpOpts(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    .local p1, "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/checkerframework/framework/util/CheckerMain;->extractPpOpts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 180
    .local v0, "extractedOpts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lorg/checkerframework/framework/util/CheckerMain;->cpOpts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/util/CheckerMain;->checkerJar:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 187
    return-object v0
.end method

.method protected createRuntimeClasspath(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    .local p1, "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/checkerframework/framework/util/CheckerMain;->javacJar:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getExecArguments()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/checkerframework/framework/util/CheckerMain;->jvmOpts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/checkerframework/framework/util/CheckerMain;->cpOpts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/checkerframework/framework/util/CheckerMain;->toolOpts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 399
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "java"

    .line 401
    .local v1, "java":Ljava/lang/String;
    const-string v2, "java"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-static {}, Lorg/checkerframework/javacutil/PluginUtil;->getJreVersion()I

    move-result v2

    const-string v3, "-Xbootclasspath/p:"

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    iget-object v6, p0, Lorg/checkerframework/framework/util/CheckerMain;->runtimeClasspath:Ljava/util/List;

    invoke-static {v5, v6}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 406
    :cond_0
    const-string v2, "--add-opens"

    const-string v5, "jdk.compiler/com.sun.tools.javac.comp=ALL-UNNAMED"

    const-string v6, "--illegal-access=warn"

    filled-new-array {v6, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 406
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 413
    :goto_0
    const-string v2, "-classpath"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v5, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    iget-object v6, p0, Lorg/checkerframework/framework/util/CheckerMain;->runtimeClasspath:Ljava/util/List;

    invoke-static {v5, v6}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    const-string v5, "-ea"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    const-string v5, "-ea:com.sun.tools..."

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v5, p0, Lorg/checkerframework/framework/util/CheckerMain;->jvmOpts:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 421
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/util/CheckerMain;->addMainToArgs(Ljava/util/List;)V

    .line 423
    iget-object v5, p0, Lorg/checkerframework/framework/util/CheckerMain;->argListFiles:Ljava/util/List;

    invoke-static {v5}, Lorg/checkerframework/framework/util/CheckerMain;->argsListHasClassPath(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 424
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    iget-object v2, p0, Lorg/checkerframework/framework/util/CheckerMain;->cpOpts:Ljava/util/List;

    invoke-direct {p0, v2}, Lorg/checkerframework/framework/util/CheckerMain;->concatenatePaths(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/framework/util/CheckerMain;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/framework/util/CheckerMain;->argListFiles:Ljava/util/List;

    invoke-static {v2}, Lorg/checkerframework/framework/util/CheckerMain;->argsListHasProcessorPath(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 428
    const-string v2, "-processorpath"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v2, p0, Lorg/checkerframework/framework/util/CheckerMain;->ppOpts:Ljava/util/List;

    invoke-direct {p0, v2}, Lorg/checkerframework/framework/util/CheckerMain;->concatenatePaths(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/framework/util/CheckerMain;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_2
    invoke-static {}, Lorg/checkerframework/javacutil/PluginUtil;->getJreVersion()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    iget-object v4, p0, Lorg/checkerframework/framework/util/CheckerMain;->compilationBootclasspath:Ljava/util/List;

    .line 443
    invoke-static {v3, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    const-string v2, "-source"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    const-string v2, "8"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    const-string v3, "-target"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_3
    iget-object v2, p0, Lorg/checkerframework/framework/util/CheckerMain;->toolOpts:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 454
    return-object v0
.end method

.method public invokeCompiler()I
    .locals 4

    .line 501
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/CheckerMain;->getExecArguments()Ljava/util/List;

    move-result-object v0

    .line 503
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 504
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 506
    .local v2, "arg":Ljava/lang/String;
    const-string v3, "-AoutputArgsToFile="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 507
    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 508
    .local v3, "fileName":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 509
    invoke-static {v3, v0}, Lorg/checkerframework/framework/util/CheckerMain;->outputArgumentsToFile(Ljava/lang/String;Ljava/util/List;)V

    .line 510
    goto :goto_1

    .line 503
    .end local v2    # "arg":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v1, v2, v3}, Lorg/checkerframework/framework/util/ExecUtil;->execute([Ljava/lang/String;Ljava/io/OutputStream;Ljava/io/OutputStream;)I

    move-result v1

    return v1
.end method

.method protected replaceShorthandProcessor(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 754
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 755
    add-int/lit8 v1, v0, 0x1

    .line 756
    .local v1, "nextIndex":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 757
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "-processor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 758
    nop

    .line 760
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0}, Lorg/checkerframework/framework/util/CheckerMain;->getAllCheckerClassNames()Ljava/util/List;

    move-result-object v3

    .line 759
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/checkerframework/framework/util/CheckerMain;->unshorthandProcessorNames(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v2

    .line 761
    .local v2, "replacement":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 762
    invoke-interface {p1, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 754
    .end local v1    # "nextIndex":I
    .end local v2    # "replacement":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 766
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
