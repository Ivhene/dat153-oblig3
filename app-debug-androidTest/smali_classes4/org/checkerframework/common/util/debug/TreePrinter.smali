.class public Lorg/checkerframework/common/util/debug/TreePrinter;
.super Lorg/checkerframework/javacutil/AbstractTypeProcessor;
.source "TreePrinter.java"


# annotations
.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "*"
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedSourceVersion;
    value = .enum Ljavax/lang/model/SourceVersion;->RELEASE_8:Ljavax/lang/model/SourceVersion;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    array-length v0, p0

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 58
    .local v0, "newArgs":[Ljava/lang/String;
    const-string v2, "-processor"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 59
    const/4 v2, 0x1

    const-string v4, "org.checkerframework.common.util.debug.TreePrinter"

    aput-object v4, v0, v2

    .line 60
    const/4 v2, 0x2

    const-string v4, "-proc:only"

    aput-object v4, v0, v2

    .line 61
    array-length v2, p0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    invoke-static {v0}, Lcom/sun/tools/javac/Main;->compile([Ljava/lang/String;)I

    .line 63
    return-void
.end method


# virtual methods
.method public typeProcess(Ljavax/lang/model/element/TypeElement;Lcom/sun/source/util/TreePath;)V
    .locals 4
    .param p1, "element"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "tree"    # Lcom/sun/source/util/TreePath;

    .line 45
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 46
    .local v0, "out":Ljava/io/StringWriter;
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/sun/tools/javac/tree/Pretty;-><init>(Ljava/io/Writer;Z)V

    .line 49
    .local v1, "pretty":Lcom/sun/tools/javac/tree/Pretty;
    :try_start_0
    invoke-virtual {p2}, Lcom/sun/source/util/TreePath;->getCompilationUnit()Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/tree/Pretty;->printUnit(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    nop

    .line 53
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    return-void

    .line 50
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
