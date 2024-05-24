.class public Lorg/checkerframework/javacutil/InternalUtils;
.super Ljava/lang/Object;
.source "InternalUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Class InternalUtils cannot be instantiated."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static compareDiagnosticPosition(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)I
    .locals 5
    .param p0, "tree1"    # Lcom/sun/source/tree/Tree;
    .param p1, "tree2"    # Lcom/sun/source/tree/Tree;

    .line 45
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    .line 46
    .local v0, "pos1":Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    move-object v1, p1

    check-cast v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    .line 48
    .local v1, "pos2":Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    invoke-interface {v0}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getPreferredPosition()I

    move-result v2

    invoke-interface {v1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getPreferredPosition()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    .line 49
    .local v2, "preferred":I
    if-eqz v2, :cond_0

    .line 50
    return v2

    .line 53
    :cond_0
    invoke-interface {v0}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getStartPosition()I

    move-result v3

    invoke-interface {v1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getStartPosition()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Integer;->compare(II)I

    move-result v3

    return v3
.end method

.method public static getClassLoaderForClass(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 36
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 37
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static getJavacContext(Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/util/Context;
    .locals 1
    .param p0, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 24
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v0

    return-object v0
.end method
