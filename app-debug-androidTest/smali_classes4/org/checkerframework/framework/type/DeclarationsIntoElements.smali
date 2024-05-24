.class public Lorg/checkerframework/framework/type/DeclarationsIntoElements;
.super Ljava/lang/Object;
.source "DeclarationsIntoElements.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static store(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/ClassTree;)V
    .locals 4
    .param p0, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "tree"    # Lcom/sun/source/tree/ClassTree;

    .line 35
    invoke-interface {p2}, Lcom/sun/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    .line 36
    .local v1, "mem":Lcom/sun/source/tree/Tree;
    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_0

    .line 37
    move-object v2, v1

    check-cast v2, Lcom/sun/source/tree/MethodTree;

    invoke-static {p0, p1, v2}, Lorg/checkerframework/framework/type/DeclarationsIntoElements;->storeMethod(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/MethodTree;)V

    .line 39
    .end local v1    # "mem":Lcom/sun/source/tree/Tree;
    :cond_0
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method private static storeMethod(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/MethodTree;)V
    .locals 8
    .param p0, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "meth"    # Lcom/sun/source/tree/MethodTree;

    .line 52
    invoke-static {p2}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 53
    .local v0, "element":Ljavax/lang/model/element/ExecutableElement;
    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 54
    .local v1, "sym":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v2

    .line 56
    .local v2, "elementAnnos":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotations(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v3

    .line 57
    .local v3, "declAnnotations":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 59
    .local v4, "tcs":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$Compound;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/AnnotationMirror;

    .line 61
    .local v6, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v2, v6}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 62
    invoke-static {v6, p0}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->createCompoundFromAnnotationMirror(Ljavax/lang/model/element/AnnotationMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/code/Attribute$Compound;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 64
    .end local v6    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v1, v4}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->appendAttributes(Lcom/sun/tools/javac/util/List;)V

    .line 67
    return-void
.end method
