.class public Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;
.super Lorg/checkerframework/framework/type/QualifierHierarchy;
.source "MultiGraphQualifierHierarchy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;,
        Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final bottoms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field

.field private glbs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field

.field private lubs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field

.field protected final polyQualifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field

.field protected final polymorphicQualifier:Ljavax/lang/model/element/AnnotationMirror;

.field protected final supertypesDirect:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final supertypesTransitive:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final tops:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field

.field private final typeQualifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V
    .locals 2
    .param p1, "f"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 176
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;[Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public varargs constructor <init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "f"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 182
    invoke-direct {p0}, Lorg/checkerframework/framework/type/QualifierHierarchy;-><init>()V

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->lubs:Ljava/util/Map;

    .line 413
    iput-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->glbs:Ljava/util/Map;

    .line 185
    iget-object v0, p1, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->supertypesDirect:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->supertypesDirect:Ljava/util/Map;

    .line 188
    iget-object v0, p1, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->supertypesDirect:Ljava/util/Map;

    .line 189
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->transitiveClosure(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 191
    .local v0, "supertypesTransitive":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->findTops(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v8

    .line 192
    .local v8, "newtops":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->findBottoms(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v9

    .line 194
    .local v9, "newbottoms":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v1, p1, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 196
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v1

    const-class v2, Lorg/checkerframework/framework/qual/PolymorphicQualifier;

    .line 195
    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->polymorphicQualifier:Ljavax/lang/model/element/AnnotationMirror;

    .line 197
    iget-object v7, p1, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->polyQualifiers:Ljava/util/Map;

    iput-object v7, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->polyQualifiers:Ljava/util/Map;

    .line 199
    move-object v1, p0

    move-object v2, p0

    move-object v3, v0

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->addPolyRelations(Lorg/checkerframework/framework/type/QualifierHierarchy;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 201
    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->finish(Lorg/checkerframework/framework/type/QualifierHierarchy;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;[Ljava/lang/Object;)V

    .line 203
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->tops:Ljava/util/Set;

    .line 204
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->bottoms:Ljava/util/Set;

    .line 207
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->supertypesTransitive:Ljava/util/Map;

    .line 208
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v1

    .line 209
    .local v1, "typeQualifiers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 210
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->typeQualifiers:Ljava/util/Set;

    .line 212
    return-void
.end method

.method private calculateGlbs()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 776
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 777
    .local v0, "newglbs":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->typeQualifiers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 778
    .local v2, "a1":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v3, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->typeQualifiers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    .line 779
    .local v4, "a2":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v2, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 780
    goto :goto_1

    .line 782
    :cond_0
    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    invoke-virtual {p0, v4}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 783
    goto :goto_1

    .line 785
    :cond_1
    new-instance v5, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;

    invoke-direct {v5, v2, v4}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;-><init>(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 786
    .local v5, "pair":Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 787
    goto :goto_1

    .line 789
    :cond_2
    invoke-direct {p0, v2, v4}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->findGlb(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    .line 790
    .local v6, "glb":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    .end local v4    # "a2":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "pair":Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;
    .end local v6    # "glb":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_1

    .line 792
    .end local v2    # "a1":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    goto :goto_0

    .line 793
    :cond_4
    return-object v0
.end method

.method private calculateLubs()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 653
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 654
    .local v0, "newlubs":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->typeQualifiers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 655
    .local v2, "a1":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v3, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->typeQualifiers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    .line 656
    .local v4, "a2":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v2, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 657
    goto :goto_1

    .line 659
    :cond_0
    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    invoke-virtual {p0, v4}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 660
    goto :goto_1

    .line 662
    :cond_1
    new-instance v5, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;

    invoke-direct {v5, v2, v4}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;-><init>(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 663
    .local v5, "pair":Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 664
    goto :goto_1

    .line 666
    :cond_2
    invoke-virtual {p0, v2, v4}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->findLub(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    .line 667
    .local v6, "lub":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    .end local v4    # "a2":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "pair":Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;
    .end local v6    # "lub":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_1

    .line 669
    .end local v2    # "a1":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    goto :goto_0

    .line 670
    :cond_4
    return-object v0
.end method

.method private final checkAnnoInGraph(Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 3
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 487
    iget-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->supertypesTransitive:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->polyQualifiers:Ljava/util/Map;

    .line 488
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    if-nez p1, :cond_1

    .line 493
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "MultiGraphQualifierHierarchy found an unqualified type.  Please ensure that your defaulting rules cover all cases and/or use a @DefaultQualifierInHierarchy annotation.  Also ensure that overrides of addComputedTypeAnnotations call super."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_1
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiGraphQualifierHierarchy found the unrecognized qualifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Please ensure that the qualifier is correctly included in the subtype hierarchy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_2
    :goto_0
    return-void
.end method

.method private static findAllSupers(Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Set;
    .locals 4
    .param p0, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;)",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 763
    .local p1, "supertypes":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    .local p2, "allSupersSoFar":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    .line 764
    .local v0, "supers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 766
    .local v2, "superAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 768
    invoke-static {v2, p1, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->findAllSupers(Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 769
    .end local v2    # "superAnno":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 770
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    return-object v0
.end method

.method private findGlb(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 797
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    return-object p1

    .line 800
    :cond_0
    invoke-virtual {p0, p2, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    return-object p2

    .line 804
    :cond_1
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 816
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->isPolymorphicQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 817
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->findGlbWithPoly(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 818
    :cond_2
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->isPolymorphicQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 819
    invoke-direct {p0, p2, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->findGlbWithPoly(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 822
    :cond_3
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    .line 823
    .local v0, "outset":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->supertypesDirect:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 824
    .local v2, "a1Sub":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v2, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 825
    invoke-direct {p0, v2, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->findGlb(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 826
    .local v3, "a1lb":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v3, :cond_4

    .line 827
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 830
    .end local v2    # "a1Sub":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "a1lb":Ljavax/lang/model/element/AnnotationMirror;
    :cond_4
    goto :goto_0

    .line 831
    :cond_5
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->requireSingleton(Ljava/util/Set;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Z)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 804
    .end local v0    # "outset":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiGraphQualifierHierarchy.findGlb: this method may only be called with qualifiers from the same hierarchy. Found a1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [top: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 809
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], a2: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 813
    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private findGlbWithPoly(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "poly"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "other"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 835
    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 836
    .local v0, "top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v0, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 837
    return-object p1

    .line 840
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getBottomAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method private findGreatestTypes(Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 845
    .local p1, "inset":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    .line 846
    .local v0, "outset":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 848
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 849
    .local v2, "a1":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 850
    .local v3, "outit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/lang/model/element/AnnotationMirror;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 851
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    .line 852
    .local v4, "a2":Ljavax/lang/model/element/AnnotationMirror;
    if-eq v2, v4, :cond_0

    invoke-virtual {p0, v4, v2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 853
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 855
    .end local v4    # "a2":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_1

    .line 856
    .end local v2    # "a1":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "outit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_1
    goto :goto_0

    .line 857
    :cond_2
    return-object v0
.end method

.method private findLubWithPoly(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "poly"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "other"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 728
    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getBottomAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 729
    .local v0, "bottom":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v0, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    return-object p1

    .line 733
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method private findSmallestTypes(Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 743
    .local p1, "inset":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    .line 744
    .local v0, "outset":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 746
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 747
    .local v2, "a1":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 748
    .local v3, "outit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/lang/model/element/AnnotationMirror;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 749
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    .line 750
    .local v4, "a2":Ljavax/lang/model/element/AnnotationMirror;
    if-eq v2, v4, :cond_0

    invoke-virtual {p0, v2, v4}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 751
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 753
    .end local v4    # "a2":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_1

    .line 754
    .end local v2    # "a1":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "outit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_1
    goto :goto_0

    .line 755
    :cond_2
    return-object v0
.end method

.method private isPolymorphicQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "qual"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 738
    iget-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->polyQualifiers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method private requireSingleton(Ljava/util/Set;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Z)Ljavax/lang/model/element/AnnotationMirror;
    .locals 5
    .param p2, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "a2"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p4, "lub"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Z)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 872
    .local p1, "outset":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 873
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiGraphQualifierHierarchy could not determine "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 875
    if-eqz p4, :cond_0

    const-string v2, "LUB"

    goto :goto_0

    :cond_0
    const-string v2, "GLB"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Please ensure that the checker knows about all type qualifiers."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 882
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 886
    :cond_2
    if-eqz p4, :cond_3

    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->findSmallestTypes(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->findGreatestTypes(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_1
    move-object p1, v0

    .line 888
    const/4 v0, 0x0

    .line 889
    .local v0, "result":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 890
    .local v2, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->isPolymorphicQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 891
    goto :goto_2

    .line 892
    :cond_4
    if-nez v0, :cond_5

    .line 893
    move-object v0, v2

    .line 907
    .end local v2    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_2

    .line 895
    .restart local v2    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_5
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bug in checker implementation:  type hierarchy is not a lattice.%nThere is no unique "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 899
    if-eqz p4, :cond_6

    const-string v4, "lub"

    goto :goto_3

    :cond_6
    const-string v4, "glb"

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(%s, %s).%nTwo incompatible candidates are: %s %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {p2, p3, v0, v2}, [Ljava/lang/Object;

    move-result-object v4

    .line 896
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1

    .line 908
    .end local v2    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_7
    return-object v0
.end method


# virtual methods
.method protected addPolyRelations(Lorg/checkerframework/framework/type/QualifierHierarchy;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
    .locals 16
    .param p1, "qualHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/QualifierHierarchy;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 573
    .local p2, "fullMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    .local p3, "polyQualifiers":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p4, "tops":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p5, "bottoms":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    return-void

    .line 577
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 578
    .local v3, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    .line 579
    .local v4, "declTop":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/AnnotationMirror;

    .line 580
    .local v5, "polyQualifier":Ljavax/lang/model/element/AnnotationMirror;
    move-object/from16 v6, p0

    iget-object v7, v6, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->polymorphicQualifier:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v4, v7}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    .line 581
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->size()I

    move-result v7

    if-ne v7, v8, :cond_2

    .line 582
    invoke-static {v0, v5, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->updateMappingToImmutableSet(Ljava/util/Map;Ljava/lang/Object;Ljava/util/Set;)V

    .line 583
    invoke-interface/range {p5 .. p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/AnnotationMirror;

    .line 586
    .local v8, "bottom":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 587
    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    .line 586
    invoke-static {v0, v8, v9}, Lorg/checkerframework/javacutil/AnnotationUtils;->updateMappingToImmutableSet(Ljava/util/Map;Ljava/lang/Object;Ljava/util/Set;)V

    .line 588
    .end local v8    # "bottom":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_1

    :cond_1
    goto/16 :goto_8

    .line 590
    :cond_2
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MultiGraphQualifierHierarchy.addPolyRelations: incorrect or missing top qualifier given in polymorphic qualifier "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; declTop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; possible top qualifiers: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 601
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 602
    .local v7, "declSupers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    const/4 v9, 0x0

    .line 603
    .local v9, "polyTop":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 604
    move-object v9, v4

    goto :goto_3

    .line 606
    :cond_4
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/lang/model/element/AnnotationMirror;

    .line 607
    .local v11, "ds":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v1, v11}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSameByName(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 608
    move-object v9, v11

    .line 610
    .end local v11    # "ds":Ljavax/lang/model/element/AnnotationMirror;
    :cond_5
    goto :goto_2

    .line 612
    :cond_6
    :goto_3
    if-eqz v9, :cond_7

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    .line 613
    .local v8, "found":Z
    :goto_4
    if-eqz v8, :cond_c

    .line 614
    nop

    .line 615
    invoke-static {v9}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    .line 614
    invoke-static {v0, v5, v10}, Lorg/checkerframework/javacutil/AnnotationUtils;->updateMappingToImmutableSet(Ljava/util/Map;Ljava/lang/Object;Ljava/util/Set;)V

    .line 625
    const/4 v8, 0x0

    .line 626
    const/4 v10, 0x0

    .line 628
    .local v10, "bottom":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface/range {p5 .. p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavax/lang/model/element/AnnotationMirror;

    .line 629
    .local v12, "btm":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavax/lang/model/element/AnnotationMirror;

    .line 630
    .local v14, "btmsuper":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v14, v9}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 631
    const/4 v8, 0x1

    .line 632
    move-object v10, v12

    .line 633
    goto :goto_7

    .line 635
    .end local v14    # "btmsuper":Ljavax/lang/model/element/AnnotationMirror;
    :cond_8
    goto :goto_6

    .line 636
    .end local v12    # "btm":Ljavax/lang/model/element/AnnotationMirror;
    :cond_9
    goto :goto_5

    .line 637
    :cond_a
    :goto_7
    if-eqz v8, :cond_b

    .line 638
    nop

    .line 639
    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v11

    .line 638
    invoke-static {v0, v10, v11}, Lorg/checkerframework/javacutil/AnnotationUtils;->updateMappingToImmutableSet(Ljava/util/Map;Ljava/lang/Object;Ljava/util/Set;)V

    .line 649
    .end local v3    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v4    # "declTop":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "polyQualifier":Ljavax/lang/model/element/AnnotationMirror;
    .end local v7    # "declSupers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v8    # "found":Z
    .end local v9    # "polyTop":Ljavax/lang/model/element/AnnotationMirror;
    .end local v10    # "bottom":Ljavax/lang/model/element/AnnotationMirror;
    :cond_b
    :goto_8
    goto/16 :goto_0

    .line 617
    .restart local v3    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;"
    .restart local v4    # "declTop":Ljavax/lang/model/element/AnnotationMirror;
    .restart local v5    # "polyQualifier":Ljavax/lang/model/element/AnnotationMirror;
    .restart local v7    # "declSupers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .restart local v8    # "found":Z
    .restart local v9    # "polyTop":Ljavax/lang/model/element/AnnotationMirror;
    :cond_c
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MultiGraphQualifierHierarchy.addPolyRelations: incorrect top qualifier given in polymorphic qualifier: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " could not find: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 650
    .end local v3    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v4    # "declTop":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "polyQualifier":Ljavax/lang/model/element/AnnotationMirror;
    .end local v7    # "declSupers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v8    # "found":Z
    .end local v9    # "polyTop":Ljavax/lang/model/element/AnnotationMirror;
    :cond_d
    move-object/from16 v6, p0

    return-void
.end method

.method protected findBottoms(Ljava/util/Map;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;)",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 529
    .local p1, "supertypes":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    .line 530
    .local v0, "possibleBottoms":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 531
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 532
    .local v2, "supers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 533
    .end local v2    # "supers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    goto :goto_0

    .line 534
    :cond_0
    return-object v0
.end method

.method protected findLub(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 6
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 683
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    return-object p2

    .line 686
    :cond_0
    invoke-virtual {p0, p2, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    return-object p1

    .line 690
    :cond_1
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 702
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->isPolymorphicQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 703
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->findLubWithPoly(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 704
    :cond_2
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->isPolymorphicQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 705
    invoke-direct {p0, p2, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->findLubWithPoly(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 708
    :cond_3
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    .line 709
    .local v0, "outset":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->supertypesDirect:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 712
    .local v2, "a1Super":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->findLub(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 713
    .local v3, "a1Lub":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v3, :cond_4

    .line 714
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 723
    .end local v2    # "a1Super":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "a1Lub":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 716
    .restart local v2    # "a1Super":Ljavax/lang/model/element/AnnotationMirror;
    .restart local v3    # "a1Lub":Ljavax/lang/model/element/AnnotationMirror;
    :cond_4
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GraphQualifierHierarchy could not determine LUB for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Please ensure that the checker knows about all type qualifiers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1

    .line 724
    .end local v2    # "a1Super":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "a1Lub":Ljavax/lang/model/element/AnnotationMirror;
    :cond_5
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->requireSingleton(Ljava/util/Set;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Z)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 690
    .end local v0    # "outset":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiGraphQualifierHierarchy.findLub: this method may only be called with qualifiers from the same hierarchy. Found a1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [top: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 695
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], a2: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 699
    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected findTops(Ljava/util/Map;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;)",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 513
    .local p1, "supertypes":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    .line 514
    .local v0, "possibleTops":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 515
    .local v2, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 516
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 518
    .end local v2    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 519
    :cond_1
    return-object v0
.end method

.method protected varargs finish(Lorg/checkerframework/framework/type/QualifierHierarchy;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "qualHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .param p6, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/QualifierHierarchy;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 224
    .local p2, "supertypesTransitive":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    .local p3, "polyQualifiers":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p4, "tops":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p5, "bottoms":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    return-void
.end method

.method public getBottomAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "start"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 304
    iget-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->bottoms:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 305
    .local v1, "bot":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {p1, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 308
    .end local v1    # "bot":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 306
    .restart local v1    # "bot":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    :goto_1
    return-object v1

    .line 309
    .end local v1    # "bot":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiGraphQualifierHierarchy: did not find the bottom corresponding to qualifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; all bottoms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->bottoms:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBottomAnnotations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->bottoms:Ljava/util/Set;

    return-object v0
.end method

.method public getPolymorphicAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "start"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 320
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 321
    .local v0, "top":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->polyQualifiers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 322
    .local v2, "key":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v2, :cond_1

    .line 323
    invoke-static {v2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->polymorphicQualifier:Ljavax/lang/model/element/AnnotationMirror;

    .line 324
    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->polyQualifiers:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    return-object v1

    .line 327
    .end local v2    # "key":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    goto :goto_0

    .line 329
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "start"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 285
    iget-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->tops:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 286
    .local v1, "top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {p1, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1, v1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 289
    .end local v1    # "top":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 287
    .restart local v1    # "top":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    :goto_1
    return-object v1

    .line 290
    .end local v1    # "top":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiGraphQualifierHierarchy: did not find the top corresponding to qualifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " all tops: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->tops:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTopAnnotations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->tops:Ljava/util/Set;

    return-object v0
.end method

.method public getTypeQualifiers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 379
    iget-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->typeQualifiers:Ljava/util/Set;

    return-object v0
.end method

.method public greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 417
    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->sameElementValues(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getBottomAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    :goto_0
    return-object v0

    .line 420
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->glbs:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 421
    invoke-direct {p0}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->calculateGlbs()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->glbs:Ljava/util/Map;

    .line 423
    :cond_2
    new-instance v0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;

    invoke-direct {v0, p1, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;-><init>(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 424
    .local v0, "pair":Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;
    iget-object v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->glbs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    return-object v1
.end method

.method public greatestLowerBoundTypeVariable(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 430
    if-nez p1, :cond_0

    .line 432
    return-object p2

    .line 434
    :cond_0
    if-nez p2, :cond_1

    .line 436
    return-object p1

    .line 438
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method public isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)Z"
        }
    .end annotation

    .line 336
    .local p1, "rhs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p2, "lhs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 343
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "valid":I
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 352
    .local v2, "lhsAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    .line 353
    .local v4, "rhsAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    invoke-virtual {p0, v4}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 354
    invoke-virtual {p0, v4, v2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 355
    add-int/lit8 v0, v0, 0x1

    .line 357
    .end local v4    # "rhsAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_1

    .line 358
    .end local v2    # "lhsAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    goto :goto_0

    .line 359
    :cond_2
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v1, v0, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 344
    .end local v0    # "valid":I
    :cond_4
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiGraphQualifierHierarchy: mismatched number of annotations in lhs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and rhs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_5
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiGraphQualifierHierarchy: empty annotations in lhs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or rhs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 2
    .param p1, "subAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "superAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 455
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->checkAnnoInGraph(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 456
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->checkAnnoInGraph(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 466
    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->sameElementValues(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0

    .line 469
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->supertypesTransitive:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 470
    .local v0, "supermap1":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-static {v0, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    return v1
.end method

.method public isSubtypeTypeVariable(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)Z"
        }
    .end annotation

    .line 366
    .local p1, "subAnnos":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p2, "superAnnos":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 367
    .local v1, "top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, p1, v1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 368
    .local v2, "rhsForTop":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, p2, v1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 369
    .local v3, "lhsForTop":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->isSubtypeTypeVariable(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 370
    const/4 v0, 0x0

    return v0

    .line 372
    .end local v1    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v2    # "rhsForTop":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "lhsForTop":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 373
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isSubtypeTypeVariable(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "subAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "superAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 475
    if-nez p2, :cond_0

    .line 477
    const/4 v0, 0x1

    return v0

    .line 479
    :cond_0
    if-nez p1, :cond_1

    .line 481
    const/4 v0, 0x0

    return v0

    .line 483
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method public leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 387
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    const/4 v0, 0x0

    return-object v0

    .line 389
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    return-object p2

    .line 391
    :cond_1
    invoke-virtual {p0, p2, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    return-object p1

    .line 393
    :cond_2
    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 394
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 396
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->lubs:Ljava/util/Map;

    if-nez v0, :cond_4

    .line 397
    invoke-direct {p0}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->calculateLubs()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->lubs:Ljava/util/Map;

    .line 399
    :cond_4
    new-instance v0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;

    invoke-direct {v0, p1, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;-><init>(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 400
    .local v0, "pair":Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$AnnotationPair;
    iget-object v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->lubs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    return-object v1
.end method

.method public leastUpperBoundTypeVariable(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 405
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 407
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Supertypes Graph: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-object v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->supertypesDirect:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n\t"

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 233
    .local v2, "qual":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .end local v2    # "qual":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    goto :goto_0

    .line 239
    :cond_0
    const-string v1, "\nSupertypes Map: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->supertypesTransitive:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 243
    .restart local v2    # "qual":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    const-string v4, " = ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 249
    .local v4, "supertypes":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 252
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 255
    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 256
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/lang/model/element/AnnotationMirror;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "\n\t\t"

    if-eqz v6, :cond_3

    .line 258
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, ", "

    goto :goto_3

    :cond_2
    const-string v6, ""

    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 264
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_3
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :goto_4
    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .end local v2    # "qual":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    .end local v4    # "supertypes":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    goto :goto_1

    .line 270
    :cond_4
    const-string v1, "\nTops: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->tops:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    const-string v1, "\nBottoms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-object v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->bottoms:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected transitiveClosure(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;"
        }
    .end annotation

    .line 543
    .local p1, "supertypes":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationMap()Ljava/util/Map;

    move-result-object v0

    .line 544
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 547
    .local v2, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v2, p1, v0}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->findAllSupers(Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Set;

    .line 548
    .end local v2    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 549
    :cond_0
    return-object v0
.end method
