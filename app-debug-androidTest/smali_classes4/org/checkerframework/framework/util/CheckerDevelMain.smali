.class public Lorg/checkerframework/framework/util/CheckerDevelMain;
.super Lorg/checkerframework/framework/util/CheckerMain;
.source "CheckerDevelMain.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BINARY_PROP:Ljava/lang/String; = "CheckerDevelMain.binary"

.field private static final COMPILE_BCP_PROP:Ljava/lang/String; = "CheckerDevelMain.compile.bcp"

.field private static final CP_PROP:Ljava/lang/String; = "CheckerDevelMain.cp"

.field private static final PP_PROP:Ljava/lang/String; = "CheckerDevelMain.pp"

.field private static final PROP_PREFIX:Ljava/lang/String; = "CheckerDevelMain"

.field private static final RUNTIME_CP_PROP:Ljava/lang/String; = "CheckerDevelMain.runtime.cp"

.field private static final VERBOSE_PROP:Ljava/lang/String; = "CheckerDevelMain.verbose"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/util/List;)V
    .locals 0
    .param p1, "searchPath"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p2, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/util/CheckerMain;-><init>(Ljava/io/File;Ljava/util/List;)V

    .line 79
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .param p0, "args"    # [Ljava/lang/String;

    .line 21
    const-string v0, "CheckerDevelMain.cp"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "cp":Ljava/lang/String;
    const-string v1, "CheckerDevelMain.pp"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "pp":Ljava/lang/String;
    const-string v2, "CheckerDevelMain.runtime.cp"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "runtimeCp":Ljava/lang/String;
    const-string v3, "CheckerDevelMain.compile.bcp"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, "compileBcp":Ljava/lang/String;
    const-string v4, "CheckerDevelMain.binary"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 26
    .local v4, "binDir":Ljava/lang/String;
    const-string v5, "CheckerDevelMain.verbose"

    invoke-static {v5}, Lorg/checkerframework/javacutil/PluginUtil;->getBooleanSystemProperty(Ljava/lang/String;)Z

    move-result v5

    .line 28
    .local v5, "verbose":Z
    if-eqz v5, :cond_0

    .line 29
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CheckerDevelMain:\nPrepended to classpath:     "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Prepended to processor classpath:     "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nPrepended to compile bootclasspath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nPrepended to runtime classpath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nBinary Dir:                 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 47
    :cond_0
    if-eqz v4, :cond_5

    .line 52
    if-eqz v0, :cond_4

    .line 53
    if-eqz v1, :cond_3

    .line 56
    if-eqz v2, :cond_2

    .line 59
    if-eqz v3, :cond_1

    .line 64
    new-instance v6, Ljava/io/File;

    const-string v7, "checker.jar"

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v6, "checkersLoc":Ljava/io/File;
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, p0

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .local v7, "argsPlusEa":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 67
    const-string v8, "-J-ea"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v8, Lorg/checkerframework/framework/util/CheckerDevelMain;

    invoke-direct {v8, v6, v7}, Lorg/checkerframework/framework/util/CheckerDevelMain;-><init>(Ljava/io/File;Ljava/util/List;)V

    .line 69
    .local v8, "program":Lorg/checkerframework/framework/util/CheckerDevelMain;
    invoke-virtual {v8}, Lorg/checkerframework/framework/util/CheckerDevelMain;->invokeCompiler()I

    move-result v9

    .line 70
    .local v9, "exitStatus":I
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    .line 71
    return-void

    .line 59
    .end local v6    # "checkersLoc":Ljava/io/File;
    .end local v7    # "argsPlusEa":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "program":Lorg/checkerframework/framework/util/CheckerDevelMain;
    .end local v9    # "exitStatus":I
    :cond_1
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "CheckerDevelMain.compile.bcp must specify a path entry to prepend to the compiler bootclasspath"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 56
    :cond_2
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "CheckerDevelMain.runtime.cp must specify a path entry to prepend to the Java classpath when running javac"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 53
    :cond_3
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "CheckerDevelMain.pp must specify a path entry to prepend to the processor path"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 52
    :cond_4
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "CheckerDevelMain.cp must specify a path entry to prepend to the CLASSPATH"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 47
    :cond_5
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "CheckerDevelMain.binary must specify a binary directory in which checker.jar, etc... are usually built"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
.end method

.method private static varargs prependPathOpts(Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "pathProp"    # Ljava/lang/String;
    .param p2, "otherPaths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    .local p1, "pathOpts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "cp":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v1, "newPathOpts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    return-object v1
.end method


# virtual methods
.method public assertValidState()V
    .locals 0

    .line 82
    return-void
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

    .line 91
    .local p1, "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/framework/util/CheckerMain;->createCompilationBootclasspath(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "CheckerDevelMain.compile.bcp"

    invoke-static {v2, v0, v1}, Lorg/checkerframework/framework/util/CheckerDevelMain;->prependPathOpts(Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

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

    .line 96
    .local p1, "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/framework/util/CheckerMain;->createCpOpts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "CheckerDevelMain.cp"

    invoke-static {v2, v0, v1}, Lorg/checkerframework/framework/util/CheckerDevelMain;->prependPathOpts(Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

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

    .line 101
    .local p1, "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/framework/util/CheckerMain;->createPpOpts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "CheckerDevelMain.pp"

    invoke-static {v2, v0, v1}, Lorg/checkerframework/framework/util/CheckerDevelMain;->prependPathOpts(Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected createRuntimeClasspath(Ljava/util/List;)Ljava/util/List;
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

    .line 86
    .local p1, "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "CheckerDevelMain.runtime.cp"

    invoke-static {v2, v0, v1}, Lorg/checkerframework/framework/util/CheckerDevelMain;->prependPathOpts(Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
