.class public Lorg/checkerframework/dataflow/util/PurityUtils;
.super Ljava/lang/Object;
.source "PurityUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPurityKinds(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/MethodTree;)Ljava/util/List;
    .locals 4
    .param p0, "provider"    # Lorg/checkerframework/javacutil/AnnotationProvider;
    .param p1, "tree"    # Lcom/sun/source/tree/MethodTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/javacutil/AnnotationProvider;",
            "Lcom/sun/source/tree/MethodTree;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/qual/Pure$Kind;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 69
    .local v0, "methodElement":Ljavax/lang/model/element/Element;
    if-eqz v0, :cond_0

    .line 72
    invoke-static {p0, v0}, Lorg/checkerframework/dataflow/util/PurityUtils;->getPurityKinds(Lorg/checkerframework/javacutil/AnnotationProvider;Ljavax/lang/model/element/Element;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 70
    :cond_0
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find element for tree: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getPurityKinds(Lorg/checkerframework/javacutil/AnnotationProvider;Ljavax/lang/model/element/Element;)Ljava/util/List;
    .locals 5
    .param p0, "provider"    # Lorg/checkerframework/javacutil/AnnotationProvider;
    .param p1, "methodElement"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/javacutil/AnnotationProvider;",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/qual/Pure$Kind;",
            ">;"
        }
    .end annotation

    .line 81
    const-class v0, Lorg/checkerframework/dataflow/qual/Pure;

    invoke-interface {p0, p1, v0}, Lorg/checkerframework/javacutil/AnnotationProvider;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 82
    .local v0, "pureAnnotation":Ljavax/lang/model/element/AnnotationMirror;
    const-class v1, Lorg/checkerframework/dataflow/qual/SideEffectFree;

    .line 83
    invoke-interface {p0, p1, v1}, Lorg/checkerframework/javacutil/AnnotationProvider;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 84
    .local v1, "sefAnnotation":Ljavax/lang/model/element/AnnotationMirror;
    const-class v2, Lorg/checkerframework/dataflow/qual/Deterministic;

    .line 85
    invoke-interface {p0, p1, v2}, Lorg/checkerframework/javacutil/AnnotationProvider;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 87
    .local v2, "detAnnotation":Ljavax/lang/model/element/AnnotationMirror;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v3, "kinds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/qual/Pure$Kind;>;"
    if-eqz v0, :cond_0

    .line 89
    sget-object v4, Lorg/checkerframework/dataflow/qual/Pure$Kind;->DETERMINISTIC:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v4, Lorg/checkerframework/dataflow/qual/Pure$Kind;->SIDE_EFFECT_FREE:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    if-eqz v1, :cond_1

    .line 93
    sget-object v4, Lorg/checkerframework/dataflow/qual/Pure$Kind;->SIDE_EFFECT_FREE:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_1
    if-eqz v2, :cond_2

    .line 96
    sget-object v4, Lorg/checkerframework/dataflow/qual/Pure$Kind;->DETERMINISTIC:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_2
    return-object v3
.end method

.method public static hasPurityAnnotation(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/MethodTree;)Z
    .locals 1
    .param p0, "provider"    # Lorg/checkerframework/javacutil/AnnotationProvider;
    .param p1, "tree"    # Lcom/sun/source/tree/MethodTree;

    .line 28
    invoke-static {p0, p1}, Lorg/checkerframework/dataflow/util/PurityUtils;->getPurityKinds(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/MethodTree;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static hasPurityAnnotation(Lorg/checkerframework/javacutil/AnnotationProvider;Ljavax/lang/model/element/Element;)Z
    .locals 1
    .param p0, "provider"    # Lorg/checkerframework/javacutil/AnnotationProvider;
    .param p1, "methodElement"    # Ljavax/lang/model/element/Element;

    .line 33
    invoke-static {p0, p1}, Lorg/checkerframework/dataflow/util/PurityUtils;->getPurityKinds(Lorg/checkerframework/javacutil/AnnotationProvider;Ljavax/lang/model/element/Element;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isDeterministic(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/MethodTree;)Z
    .locals 4
    .param p0, "provider"    # Lorg/checkerframework/javacutil/AnnotationProvider;
    .param p1, "tree"    # Lcom/sun/source/tree/MethodTree;

    .line 38
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 39
    .local v0, "methodElement":Ljavax/lang/model/element/Element;
    if-eqz v0, :cond_0

    .line 42
    invoke-static {p0, v0}, Lorg/checkerframework/dataflow/util/PurityUtils;->isDeterministic(Lorg/checkerframework/javacutil/AnnotationProvider;Ljavax/lang/model/element/Element;)Z

    move-result v1

    return v1

    .line 40
    :cond_0
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find element for tree: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isDeterministic(Lorg/checkerframework/javacutil/AnnotationProvider;Ljavax/lang/model/element/Element;)Z
    .locals 2
    .param p0, "provider"    # Lorg/checkerframework/javacutil/AnnotationProvider;
    .param p1, "methodElement"    # Ljavax/lang/model/element/Element;

    .line 47
    invoke-static {p0, p1}, Lorg/checkerframework/dataflow/util/PurityUtils;->getPurityKinds(Lorg/checkerframework/javacutil/AnnotationProvider;Ljavax/lang/model/element/Element;)Ljava/util/List;

    move-result-object v0

    .line 48
    .local v0, "kinds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/qual/Pure$Kind;>;"
    sget-object v1, Lorg/checkerframework/dataflow/qual/Pure$Kind;->DETERMINISTIC:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isSideEffectFree(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/MethodTree;)Z
    .locals 4
    .param p0, "provider"    # Lorg/checkerframework/javacutil/AnnotationProvider;
    .param p1, "tree"    # Lcom/sun/source/tree/MethodTree;

    .line 53
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 54
    .local v0, "methodElement":Ljavax/lang/model/element/Element;
    if-eqz v0, :cond_0

    .line 57
    invoke-static {p0, v0}, Lorg/checkerframework/dataflow/util/PurityUtils;->isSideEffectFree(Lorg/checkerframework/javacutil/AnnotationProvider;Ljavax/lang/model/element/Element;)Z

    move-result v1

    return v1

    .line 55
    :cond_0
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find element for tree: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isSideEffectFree(Lorg/checkerframework/javacutil/AnnotationProvider;Ljavax/lang/model/element/Element;)Z
    .locals 2
    .param p0, "provider"    # Lorg/checkerframework/javacutil/AnnotationProvider;
    .param p1, "methodElement"    # Ljavax/lang/model/element/Element;

    .line 62
    invoke-static {p0, p1}, Lorg/checkerframework/dataflow/util/PurityUtils;->getPurityKinds(Lorg/checkerframework/javacutil/AnnotationProvider;Ljavax/lang/model/element/Element;)Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, "kinds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/qual/Pure$Kind;>;"
    sget-object v1, Lorg/checkerframework/dataflow/qual/Pure$Kind;->SIDE_EFFECT_FREE:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
