.class public Lorg/checkerframework/checker/nullness/KeyForValue;
.super Lorg/checkerframework/framework/flow/CFAbstractValue;
.source "KeyForValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/flow/CFAbstractValue<",
        "Lorg/checkerframework/checker/nullness/KeyForValue;",
        ">;"
    }
.end annotation


# instance fields
.field private keyForMaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)V
    .locals 4
    .param p3, "underlyingType"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "Lorg/checkerframework/checker/nullness/KeyForValue;",
            "**>;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")V"
        }
    .end annotation

    .line 48
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<Lorg/checkerframework/checker/nullness/KeyForValue;**>;"
    .local p2, "annotations":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/flow/CFAbstractValue;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)V

    .line 49
    nop

    .line 50
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    const-class v1, Lorg/checkerframework/checker/nullness/qual/KeyFor;

    invoke-virtual {v0, p2, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotationByClass(Ljava/util/Collection;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 51
    .local v0, "keyfor":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v0, :cond_1

    .line 52
    invoke-interface {p3}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_0

    .line 53
    invoke-interface {p3}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    .line 54
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/checker/nullness/KeyForValue;->keyForMaps:Ljava/util/Set;

    .line 55
    const-class v1, Ljava/lang/String;

    .line 56
    const-string v2, "value"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    .line 57
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/checkerframework/checker/nullness/KeyForValue;->keyForMaps:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 58
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 59
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/checkerframework/checker/nullness/KeyForValue;->keyForMaps:Ljava/util/Set;

    .line 61
    :goto_0
    return-void
.end method

.method private addKeyFor(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p1, "newKeyForMaps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForValue;->keyForMaps:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForValue;->keyForMaps:Ljava/util/Set;

    .line 122
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForValue;->keyForMaps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 123
    return-void

    .line 117
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getKeyForMaps()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForValue;->keyForMaps:Ljava/util/Set;

    return-object v0
.end method

.method public leastUpperBound(Lorg/checkerframework/checker/nullness/KeyForValue;)Lorg/checkerframework/checker/nullness/KeyForValue;
    .locals 3
    .param p1, "other"    # Lorg/checkerframework/checker/nullness/KeyForValue;

    .line 73
    invoke-super {p0, p1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->leastUpperBound(Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/nullness/KeyForValue;

    .line 74
    .local v0, "lub":Lorg/checkerframework/checker/nullness/KeyForValue;
    if-eqz p1, :cond_2

    iget-object v1, p1, Lorg/checkerframework/checker/nullness/KeyForValue;->keyForMaps:Ljava/util/Set;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/checkerframework/checker/nullness/KeyForValue;->keyForMaps:Ljava/util/Set;

    if-nez v1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lorg/checkerframework/checker/nullness/KeyForValue;->keyForMaps:Ljava/util/Set;

    .line 79
    iget-object v2, p0, Lorg/checkerframework/checker/nullness/KeyForValue;->keyForMaps:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 80
    iget-object v1, v0, Lorg/checkerframework/checker/nullness/KeyForValue;->keyForMaps:Ljava/util/Set;

    iget-object v2, p1, Lorg/checkerframework/checker/nullness/KeyForValue;->keyForMaps:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 81
    iget-object v1, v0, Lorg/checkerframework/checker/nullness/KeyForValue;->keyForMaps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/checkerframework/checker/nullness/KeyForValue;->keyForMaps:Ljava/util/Set;

    .line 84
    :cond_1
    return-object v0

    .line 75
    :cond_2
    :goto_0
    return-object v0
.end method

.method public bridge synthetic leastUpperBound(Lorg/checkerframework/dataflow/analysis/AbstractValue;)Lorg/checkerframework/dataflow/analysis/AbstractValue;
    .locals 0

    .line 35
    check-cast p1, Lorg/checkerframework/checker/nullness/KeyForValue;

    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/nullness/KeyForValue;->leastUpperBound(Lorg/checkerframework/checker/nullness/KeyForValue;)Lorg/checkerframework/checker/nullness/KeyForValue;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic leastUpperBound(Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 0

    .line 35
    check-cast p1, Lorg/checkerframework/checker/nullness/KeyForValue;

    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/nullness/KeyForValue;->leastUpperBound(Lorg/checkerframework/checker/nullness/KeyForValue;)Lorg/checkerframework/checker/nullness/KeyForValue;

    move-result-object p1

    return-object p1
.end method

.method public mostSpecific(Lorg/checkerframework/checker/nullness/KeyForValue;Lorg/checkerframework/checker/nullness/KeyForValue;)Lorg/checkerframework/checker/nullness/KeyForValue;
    .locals 2
    .param p1, "other"    # Lorg/checkerframework/checker/nullness/KeyForValue;
    .param p2, "backup"    # Lorg/checkerframework/checker/nullness/KeyForValue;

    .line 89
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractValue;->mostSpecific(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/nullness/KeyForValue;

    .line 90
    .local v0, "mostSpecific":Lorg/checkerframework/checker/nullness/KeyForValue;
    if-nez v0, :cond_3

    .line 91
    if-nez p1, :cond_0

    .line 92
    return-object p0

    .line 98
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/checker/nullness/KeyForValue;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lorg/checkerframework/checker/nullness/KeyForValue;->keyForMaps:Ljava/util/Set;

    invoke-direct {p1, v1}, Lorg/checkerframework/checker/nullness/KeyForValue;->addKeyFor(Ljava/util/Set;)V

    .line 100
    return-object p1

    .line 101
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/checker/nullness/KeyForValue;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    iget-object v1, p1, Lorg/checkerframework/checker/nullness/KeyForValue;->keyForMaps:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/checkerframework/checker/nullness/KeyForValue;->addKeyFor(Ljava/util/Set;)V

    .line 103
    return-object p0

    .line 105
    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 108
    :cond_3
    iget-object v1, p0, Lorg/checkerframework/checker/nullness/KeyForValue;->keyForMaps:Ljava/util/Set;

    invoke-direct {v0, v1}, Lorg/checkerframework/checker/nullness/KeyForValue;->addKeyFor(Ljava/util/Set;)V

    .line 109
    if-eqz p1, :cond_4

    .line 110
    iget-object v1, p1, Lorg/checkerframework/checker/nullness/KeyForValue;->keyForMaps:Ljava/util/Set;

    invoke-direct {v0, v1}, Lorg/checkerframework/checker/nullness/KeyForValue;->addKeyFor(Ljava/util/Set;)V

    .line 112
    :cond_4
    return-object v0
.end method

.method public bridge synthetic mostSpecific(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 0

    .line 35
    check-cast p1, Lorg/checkerframework/checker/nullness/KeyForValue;

    check-cast p2, Lorg/checkerframework/checker/nullness/KeyForValue;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/KeyForValue;->mostSpecific(Lorg/checkerframework/checker/nullness/KeyForValue;Lorg/checkerframework/checker/nullness/KeyForValue;)Lorg/checkerframework/checker/nullness/KeyForValue;

    move-result-object p1

    return-object p1
.end method
