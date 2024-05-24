.class public Lannotator/specification/IndexFileSpecification;
.super Ljava/lang/Object;
.source "IndexFileSpecification.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static debug:Z

.field public static noAsm:Z


# instance fields
.field private constructorInsertion:Lannotator/find/ConstructorInsertion;

.field private final indexFileName:Ljava/lang/String;

.field private final insertionSources:Lorg/checkerframework/com/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "Lannotator/find/Insertion;",
            "Lscenelib/annotations/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final insertions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lannotator/find/Insertion;",
            ">;"
        }
    .end annotation
.end field

.field private final scene:Lscenelib/annotations/el/AScene;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    nop

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lannotator/specification/IndexFileSpecification;->noAsm:Z

    .line 66
    sput-boolean v0, Lannotator/specification/IndexFileSpecification;->debug:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "indexFileName"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    nop

    .line 55
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap;->create()Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap;

    move-result-object v0

    iput-object v0, p0, Lannotator/specification/IndexFileSpecification;->insertionSources:Lorg/checkerframework/com/google/common/collect/Multimap;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lannotator/specification/IndexFileSpecification;->insertions:Ljava/util/List;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lannotator/specification/IndexFileSpecification;->constructorInsertion:Lannotator/find/ConstructorInsertion;

    .line 69
    iput-object p1, p0, Lannotator/specification/IndexFileSpecification;->indexFileName:Ljava/lang/String;

    .line 70
    new-instance v0, Lscenelib/annotations/el/AScene;

    invoke-direct {v0}, Lscenelib/annotations/el/AScene;-><init>()V

    iput-object v0, p0, Lannotator/specification/IndexFileSpecification;->scene:Lscenelib/annotations/el/AScene;

    .line 71
    return-void
.end method

.method private addInsertionSource(Lannotator/find/Insertion;Lscenelib/annotations/Annotation;)V
    .locals 1
    .param p1, "ins"    # Lannotator/find/Insertion;
    .param p2, "anno"    # Lscenelib/annotations/Annotation;

    .line 116
    iget-object v0, p0, Lannotator/specification/IndexFileSpecification;->insertionSources:Lorg/checkerframework/com/google/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method private createCastInsertion(Lscenelib/type/Type;Ljava/lang/String;Ljava/util/List;Lannotator/find/Criteria;)Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 3
    .param p1, "type"    # Lscenelib/type/Type;
    .param p2, "annotationString"    # Ljava/lang/String;
    .param p4, "criteria"    # Lannotator/find/Criteria;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/type/Type;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lannotator/find/Insertion;",
            ">;",
            "Lannotator/find/Criteria;",
            ")",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Lannotator/find/CastInsertion;",
            "Lannotator/find/CloseParenthesisInsertion;",
            ">;"
        }
    .end annotation

    .line 531
    .local p3, "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    if-eqz p2, :cond_0

    .line 532
    invoke-virtual {p1, p2}, Lscenelib/type/Type;->addAnnotation(Ljava/lang/String;)V

    .line 534
    :cond_0
    invoke-virtual {p4}, Lannotator/find/Criteria;->getASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    invoke-static {p3, p1, v0}, Lannotator/find/Insertion;->decorateType(Ljava/util/List;Lscenelib/type/Type;Lscenelib/annotations/io/ASTPath;)V

    .line 535
    new-instance v0, Lannotator/find/CastInsertion;

    invoke-direct {v0, p4, p1}, Lannotator/find/CastInsertion;-><init>(Lannotator/find/Criteria;Lscenelib/type/Type;)V

    .line 536
    .local v0, "cast":Lannotator/find/CastInsertion;
    new-instance v1, Lannotator/find/CloseParenthesisInsertion;

    .line 537
    invoke-virtual {v0}, Lannotator/find/CastInsertion;->isSeparateLine()Z

    move-result v2

    invoke-direct {v1, p4, v2}, Lannotator/find/CloseParenthesisInsertion;-><init>(Lannotator/find/Criteria;Z)V

    .line 538
    .local v1, "closeParen":Lannotator/find/CloseParenthesisInsertion;
    new-instance v2, Lorg/checkerframework/org/plumelib/util/Pair;

    invoke-direct {v2, v0, v1}, Lorg/checkerframework/org/plumelib/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static debug(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 120
    sget-boolean v0, Lannotator/specification/IndexFileSpecification;->debug:Z

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method private formatFieldValue(Lscenelib/annotations/Annotation;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "a"    # Lscenelib/annotations/Annotation;
    .param p2, "field"    # Ljava/lang/String;

    .line 606
    iget-object v0, p1, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    iget-object v0, v0, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/field/AnnotationFieldType;

    .line 607
    .local v0, "fieldType":Lscenelib/annotations/field/AnnotationFieldType;
    if-eqz v0, :cond_0

    .line 608
    iget-object v1, p1, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/field/AnnotationFieldType;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 607
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private getElementAnnotations(Lscenelib/annotations/el/AElement;)Ljava/util/Set;
    .locals 11
    .param p1, "element"    # Lscenelib/annotations/el/AElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/AElement;",
            ")",
            "Ljava/util/Set<",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/Annotation;",
            ">;>;"
        }
    .end annotation

    .line 577
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p1, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 579
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 580
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/String;Lscenelib/annotations/Annotation;>;>;"
    iget-object v1, p1, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/Annotation;

    .line 581
    .local v2, "a":Lscenelib/annotations/Annotation;
    iget-object v3, v2, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    .line 582
    .local v3, "adef":Lscenelib/annotations/el/AnnotationDef;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 584
    .local v4, "annotationString":Ljava/lang/String;
    iget-object v5, v2, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x1

    const-string v7, ")"

    const-string v8, "("

    if-ne v5, v6, :cond_0

    iget-object v5, v2, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    const-string v6, "value"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 585
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v2, v6}, Lannotator/specification/IndexFileSpecification;->formatFieldValue(Lscenelib/annotations/Annotation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 586
    :cond_0
    iget-object v5, v2, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 587
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 588
    const/4 v5, 0x1

    .line 589
    .local v5, "first":Z
    iget-object v6, v2, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 591
    .local v8, "field":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 592
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 594
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v2, v8}, Lannotator/specification/IndexFileSpecification;->formatFieldValue(Lscenelib/annotations/Annotation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 595
    const/4 v5, 0x0

    .line 596
    .end local v8    # "field":Ljava/lang/String;
    goto :goto_1

    .line 597
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 600
    .end local v5    # "first":Z
    :cond_3
    :goto_2
    new-instance v5, Lorg/checkerframework/org/plumelib/util/Pair;

    invoke-direct {v5, v4, v2}, Lorg/checkerframework/org/plumelib/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 601
    .end local v2    # "a":Lscenelib/annotations/Annotation;
    .end local v3    # "adef":Lscenelib/annotations/el/AnnotationDef;
    .end local v4    # "annotationString":Ljava/lang/String;
    goto/16 :goto_0

    .line 602
    :cond_4
    return-object v0
.end method

.method public static isOnNew(Lannotator/find/Criteria;)Z
    .locals 4
    .param p0, "criteria"    # Lannotator/find/Criteria;

    .line 491
    invoke-virtual {p0}, Lannotator/find/Criteria;->getASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    .line 492
    .local v0, "astPath":Lscenelib/annotations/io/ASTPath;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lscenelib/annotations/io/ASTPath;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 493
    :cond_0
    invoke-virtual {v0}, Lscenelib/annotations/io/ASTPath;->getLast()Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    .line 494
    .local v1, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    .line 495
    .local v2, "kind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_1

    .line 496
    const-string v3, "type"

    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 497
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_3

    .line 499
    const-string v3, "identifier"

    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 495
    :goto_0
    return v3

    .line 492
    .end local v1    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v2    # "kind":Lcom/sun/source/tree/Tree$Kind;
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lannotator/find/Criteria;->isOnNew()Z

    move-result v1

    return v1
.end method

.method private static isOnNullaryConstructor(Lannotator/find/Criteria;)Z
    .locals 6
    .param p0, "criteria"    # Lannotator/find/Criteria;

    .line 503
    const-string v0, "<init>()V"

    invoke-virtual {p0, v0}, Lannotator/find/Criteria;->isOnMethod(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 504
    invoke-virtual {p0}, Lannotator/find/Criteria;->getASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    .line 505
    .local v0, "astPath":Lscenelib/annotations/io/ASTPath;
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lscenelib/annotations/io/ASTPath;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 508
    :cond_0
    invoke-virtual {v0, v1}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 509
    .local v3, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    invoke-virtual {v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_2

    .line 510
    const-string v4, "type"

    invoke-virtual {v3, v4}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p0}, Lannotator/specification/IndexFileSpecification;->isOnReceiver(Lannotator/find/Criteria;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    nop

    .line 509
    :goto_0
    return v1

    .line 506
    .end local v3    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lannotator/find/Criteria;->isOnNew()Z

    move-result v1

    xor-int/2addr v1, v2

    return v1

    .line 512
    .end local v0    # "astPath":Lscenelib/annotations/io/ASTPath;
    :cond_4
    return v1
.end method

.method public static isOnReceiver(Lannotator/find/Criteria;)Z
    .locals 4
    .param p0, "criteria"    # Lannotator/find/Criteria;

    .line 482
    invoke-virtual {p0}, Lannotator/find/Criteria;->getASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    .line 483
    .local v0, "astPath":Lscenelib/annotations/io/ASTPath;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lannotator/find/Criteria;->isOnReceiver()Z

    move-result v1

    return v1

    .line 484
    :cond_0
    invoke-virtual {v0}, Lscenelib/annotations/io/ASTPath;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 485
    :cond_1
    invoke-virtual {v0}, Lscenelib/annotations/io/ASTPath;->getLast()Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    .line 486
    .local v1, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    const-string v3, "parameter"

    invoke-virtual {v1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 487
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v3

    if-gez v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 486
    :goto_0
    return v2
.end method

.method private noTypePath(Lannotator/find/Criteria;)Z
    .locals 2
    .param p1, "criteria"    # Lannotator/find/Criteria;

    .line 476
    nop

    .line 477
    invoke-virtual {p1}, Lannotator/find/Criteria;->getGenericArrayLocation()Lannotator/find/GenericArrayLocationCriterion;

    move-result-object v0

    .line 478
    .local v0, "galc":Lannotator/find/GenericArrayLocationCriterion;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lannotator/find/GenericArrayLocationCriterion;->getLocation()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private parseASTInsertions(Lannotator/specification/CriterionList;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V
    .locals 6
    .param p1, "clist"    # Lannotator/specification/CriterionList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lannotator/specification/CriterionList;",
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Lscenelib/annotations/io/ASTPath;",
            "Lscenelib/annotations/el/ATypeElement;",
            ">;",
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Lscenelib/annotations/io/ASTPath;",
            "Lscenelib/annotations/el/ATypeElementWithType;",
            ">;)V"
        }
    .end annotation

    .line 734
    .local p2, "insertAnnotations":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElement;>;"
    .local p3, "insertTypecasts":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElementWithType;>;"
    invoke-virtual {p2}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 735
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/io/ASTPath;

    .line 736
    .local v3, "astPath":Lscenelib/annotations/io/ASTPath;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/ATypeElement;

    .line 737
    .local v4, "insertAnnotation":Lscenelib/annotations/el/ATypeElement;
    nop

    .line 738
    invoke-static {v3}, Lannotator/find/Criteria;->astPath(Lscenelib/annotations/io/ASTPath;)Lannotator/find/Criterion;

    move-result-object v5

    invoke-virtual {p1, v5}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v5

    .line 739
    .local v5, "insertAnnotationClist":Lannotator/specification/CriterionList;
    invoke-direct {p0, v5, v4, v2}, Lannotator/specification/IndexFileSpecification;->parseInnerAndOuterElements(Lannotator/specification/CriterionList;Lscenelib/annotations/el/ATypeElement;Z)V

    .line 741
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v3    # "astPath":Lscenelib/annotations/io/ASTPath;
    .end local v4    # "insertAnnotation":Lscenelib/annotations/el/ATypeElement;
    .end local v5    # "insertAnnotationClist":Lannotator/specification/CriterionList;
    goto :goto_0

    .line 742
    :cond_0
    invoke-virtual {p3}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 743
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElementWithType;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/io/ASTPath;

    .line 744
    .restart local v3    # "astPath":Lscenelib/annotations/io/ASTPath;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/ATypeElementWithType;

    .line 745
    .local v4, "insertTypecast":Lscenelib/annotations/el/ATypeElementWithType;
    invoke-static {v3}, Lannotator/find/Criteria;->astPath(Lscenelib/annotations/io/ASTPath;)Lannotator/find/Criterion;

    move-result-object v5

    invoke-virtual {p1, v5}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v5

    .line 746
    .local v5, "insertTypecastClist":Lannotator/specification/CriterionList;
    invoke-direct {p0, v5, v4, v2}, Lannotator/specification/IndexFileSpecification;->parseInnerAndOuterElements(Lannotator/specification/CriterionList;Lscenelib/annotations/el/ATypeElement;Z)V

    .line 747
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElementWithType;>;"
    .end local v3    # "astPath":Lscenelib/annotations/io/ASTPath;
    .end local v4    # "insertTypecast":Lscenelib/annotations/el/ATypeElementWithType;
    .end local v5    # "insertTypecastClist":Lannotator/specification/CriterionList;
    goto :goto_1

    .line 748
    :cond_1
    return-void
.end method

.method private parseBlock(Lannotator/specification/CriterionList;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/ABlock;)V
    .locals 6
    .param p1, "clist"    # Lannotator/specification/CriterionList;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "block"    # Lscenelib/annotations/el/ABlock;

    .line 655
    iget-object v0, p4, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 656
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/LocalLocation;Lscenelib/annotations/el/AField;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/LocalLocation;

    .line 657
    .local v2, "loc":Lscenelib/annotations/el/LocalLocation;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/AElement;

    .line 658
    .local v3, "var":Lscenelib/annotations/el/AElement;
    invoke-static {p3, v2}, Lannotator/find/Criteria;->local(Ljava/lang/String;Lscenelib/annotations/el/LocalLocation;)Lannotator/find/Criterion;

    move-result-object v4

    invoke-virtual {p1, v4}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v4

    .line 660
    .local v4, "varClist":Lannotator/specification/CriterionList;
    invoke-direct {p0, v4, v3}, Lannotator/specification/IndexFileSpecification;->parseElement(Lannotator/specification/CriterionList;Lscenelib/annotations/el/AElement;)Ljava/util/List;

    .line 661
    iget-object v5, v3, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v4, v5}, Lannotator/specification/IndexFileSpecification;->parseInnerAndOuterElements(Lannotator/specification/CriterionList;Lscenelib/annotations/el/ATypeElement;)V

    .line 662
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/LocalLocation;Lscenelib/annotations/el/AField;>;"
    .end local v2    # "loc":Lscenelib/annotations/el/LocalLocation;
    .end local v3    # "var":Lscenelib/annotations/el/AElement;
    .end local v4    # "varClist":Lannotator/specification/CriterionList;
    goto :goto_0

    .line 664
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lannotator/specification/IndexFileSpecification;->parseExpression(Lannotator/specification/CriterionList;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AExpression;)V

    .line 665
    return-void
.end method

.method private parseClass(Lannotator/specification/CriterionList;Ljava/lang/String;Lscenelib/annotations/el/AClass;)V
    .locals 19
    .param p1, "clist"    # Lannotator/specification/CriterionList;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "clazz"    # Lscenelib/annotations/el/AClass;

    .line 174
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "IndexFileSpecification had a problem reading class: "

    const/4 v0, 0x0

    iput-object v0, v1, Lannotator/specification/IndexFileSpecification;->constructorInsertion:Lannotator/find/ConstructorInsertion;

    .line 175
    sget-boolean v0, Lannotator/specification/IndexFileSpecification;->noAsm:Z

    const/4 v5, 0x0

    const-string v6, "parseClass("

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lannotator/specification/IndexFileSpecification;->debug(Ljava/lang/String;)V

    .line 179
    :try_start_0
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    invoke-direct {v0, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "classReader":Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    new-instance v7, Lannotator/scanner/MethodOffsetClassVisitor;

    invoke-direct {v7, v0}, Lannotator/scanner/MethodOffsetClassVisitor;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassReader;)V

    .line 181
    .local v7, "cv":Lannotator/scanner/MethodOffsetClassVisitor;
    invoke-virtual {v0, v7, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;Z)V

    .line 182
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Done reading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".class"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lannotator/specification/IndexFileSpecification;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "classReader":Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    .end local v7    # "cv":Lannotator/scanner/MethodOffsetClassVisitor;
    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Error;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    throw v0

    .line 192
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    throw v0

    .line 183
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Warning: IndexFileSpecification did not find classfile for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 201
    :cond_0
    move-object/from16 v0, p1

    .line 203
    .local v0, "clistSansClass":Lannotator/specification/CriterionList;
    const/4 v4, 0x1

    invoke-static {v2, v4}, Lannotator/find/Criteria;->inClass(Ljava/lang/String;Z)Lannotator/find/Criterion;

    move-result-object v4

    move-object/from16 v7, p1

    invoke-virtual {v7, v4}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v4

    .line 204
    .end local p1    # "clist":Lannotator/specification/CriterionList;
    .local v4, "clist":Lannotator/specification/CriterionList;
    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->CLASS:Lcom/sun/source/tree/Tree$Kind;

    invoke-static {v7, v2}, Lannotator/find/Criteria;->is(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)Lannotator/find/Criterion;

    move-result-object v7

    invoke-virtual {v0, v7}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v7

    .line 205
    .local v7, "classClist":Lannotator/specification/CriterionList;
    invoke-direct {v1, v7, v3}, Lannotator/specification/IndexFileSpecification;->parseElement(Lannotator/specification/CriterionList;Lscenelib/annotations/el/AElement;)Ljava/util/List;

    .line 207
    iget-object v8, v3, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 208
    .local v8, "bounds":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<Lscenelib/annotations/el/BoundLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-virtual {v8}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 209
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/BoundLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lscenelib/annotations/el/BoundLocation;

    .line 210
    .local v11, "boundLoc":Lscenelib/annotations/el/BoundLocation;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lscenelib/annotations/el/ATypeElement;

    .line 211
    .local v12, "bound":Lscenelib/annotations/el/ATypeElement;
    invoke-static {v2, v11}, Lannotator/find/Criteria;->classBound(Ljava/lang/String;Lscenelib/annotations/el/BoundLocation;)Lannotator/find/Criterion;

    move-result-object v13

    invoke-virtual {v4, v13}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v13

    .line 212
    .local v13, "boundList":Lannotator/specification/CriterionList;
    iget-object v14, v12, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v14}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 213
    .local v15, "innerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lscenelib/annotations/el/InnerTypeLocation;

    .line 214
    .local v16, "innerLoc":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Lscenelib/annotations/el/AElement;

    .line 215
    .local v5, "ae":Lscenelib/annotations/el/AElement;
    move-object/from16 v17, v0

    .end local v0    # "clistSansClass":Lannotator/specification/CriterionList;
    .local v17, "clistSansClass":Lannotator/specification/CriterionList;
    invoke-static/range {v16 .. v16}, Lannotator/find/Criteria;->atLocation(Lscenelib/annotations/el/InnerTypeLocation;)Lannotator/find/Criterion;

    move-result-object v0

    invoke-virtual {v13, v0}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v0

    .line 216
    .local v0, "innerBoundList":Lannotator/specification/CriterionList;
    invoke-direct {v1, v0, v5}, Lannotator/specification/IndexFileSpecification;->parseElement(Lannotator/specification/CriterionList;Lscenelib/annotations/el/AElement;)Ljava/util/List;

    .line 217
    .end local v0    # "innerBoundList":Lannotator/specification/CriterionList;
    .end local v5    # "ae":Lscenelib/annotations/el/AElement;
    .end local v15    # "innerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v16    # "innerLoc":Lscenelib/annotations/el/InnerTypeLocation;
    move-object/from16 v0, v17

    const/4 v5, 0x0

    goto :goto_2

    .line 218
    .end local v17    # "clistSansClass":Lannotator/specification/CriterionList;
    .local v0, "clistSansClass":Lannotator/specification/CriterionList;
    :cond_1
    move-object/from16 v17, v0

    .end local v0    # "clistSansClass":Lannotator/specification/CriterionList;
    .restart local v17    # "clistSansClass":Lannotator/specification/CriterionList;
    invoke-static {}, Lannotator/find/Criteria;->atLocation()Lannotator/find/Criterion;

    move-result-object v0

    invoke-virtual {v13, v0}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v0

    .line 219
    .local v0, "outerClist":Lannotator/specification/CriterionList;
    invoke-direct {v1, v0, v12}, Lannotator/specification/IndexFileSpecification;->parseElement(Lannotator/specification/CriterionList;Lscenelib/annotations/el/AElement;)Ljava/util/List;

    .line 220
    .end local v0    # "outerClist":Lannotator/specification/CriterionList;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/BoundLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v11    # "boundLoc":Lscenelib/annotations/el/BoundLocation;
    .end local v12    # "bound":Lscenelib/annotations/el/ATypeElement;
    .end local v13    # "boundList":Lannotator/specification/CriterionList;
    move-object/from16 v0, v17

    const/4 v5, 0x0

    goto :goto_1

    .line 222
    .end local v17    # "clistSansClass":Lannotator/specification/CriterionList;
    .local v0, "clistSansClass":Lannotator/specification/CriterionList;
    :cond_2
    move-object/from16 v17, v0

    .end local v0    # "clistSansClass":Lannotator/specification/CriterionList;
    .restart local v17    # "clistSansClass":Lannotator/specification/CriterionList;
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lannotator/find/Criteria;->inClass(Ljava/lang/String;Z)Lannotator/find/Criterion;

    move-result-object v0

    invoke-virtual {v4, v0}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v0

    .line 224
    .end local v4    # "clist":Lannotator/specification/CriterionList;
    .local v0, "clist":Lannotator/specification/CriterionList;
    iget-object v4, v3, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 225
    .local v4, "extimpl":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<Lscenelib/annotations/el/TypeIndexLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-virtual {v4}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 226
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/TypeIndexLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lscenelib/annotations/el/TypeIndexLocation;

    .line 227
    .local v10, "eiLoc":Lscenelib/annotations/el/TypeIndexLocation;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lscenelib/annotations/el/ATypeElement;

    .line 228
    .local v11, "ei":Lscenelib/annotations/el/ATypeElement;
    invoke-static {v2, v10}, Lannotator/find/Criteria;->atExtImplsLocation(Ljava/lang/String;Lscenelib/annotations/el/TypeIndexLocation;)Lannotator/find/Criterion;

    move-result-object v12

    invoke-virtual {v0, v12}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v12

    .line 230
    .local v12, "eiList":Lannotator/specification/CriterionList;
    iget-object v13, v11, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v13}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 231
    .local v14, "innerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lscenelib/annotations/el/InnerTypeLocation;

    .line 232
    .local v15, "innerLoc":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v4

    .end local v4    # "extimpl":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<Lscenelib/annotations/el/TypeIndexLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .local v18, "extimpl":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<Lscenelib/annotations/el/TypeIndexLocation;Lscenelib/annotations/el/ATypeElement;>;"
    move-object/from16 v4, v16

    check-cast v4, Lscenelib/annotations/el/AElement;

    .line 233
    .local v4, "ae":Lscenelib/annotations/el/AElement;
    move-object/from16 p1, v5

    invoke-static {v15}, Lannotator/find/Criteria;->atLocation(Lscenelib/annotations/el/InnerTypeLocation;)Lannotator/find/Criterion;

    move-result-object v5

    invoke-virtual {v12, v5}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v5

    .line 234
    .local v5, "innerBoundList":Lannotator/specification/CriterionList;
    invoke-direct {v1, v5, v4}, Lannotator/specification/IndexFileSpecification;->parseElement(Lannotator/specification/CriterionList;Lscenelib/annotations/el/AElement;)Ljava/util/List;

    .line 235
    .end local v4    # "ae":Lscenelib/annotations/el/AElement;
    .end local v5    # "innerBoundList":Lannotator/specification/CriterionList;
    .end local v14    # "innerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v15    # "innerLoc":Lscenelib/annotations/el/InnerTypeLocation;
    move-object/from16 v5, p1

    move-object/from16 v4, v18

    goto :goto_4

    .line 236
    .end local v18    # "extimpl":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<Lscenelib/annotations/el/TypeIndexLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .local v4, "extimpl":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<Lscenelib/annotations/el/TypeIndexLocation;Lscenelib/annotations/el/ATypeElement;>;"
    :cond_3
    move-object/from16 v18, v4

    move-object/from16 p1, v5

    .end local v4    # "extimpl":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<Lscenelib/annotations/el/TypeIndexLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .restart local v18    # "extimpl":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<Lscenelib/annotations/el/TypeIndexLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-direct {v1, v12, v11}, Lannotator/specification/IndexFileSpecification;->parseElement(Lannotator/specification/CriterionList;Lscenelib/annotations/el/AElement;)Ljava/util/List;

    .line 237
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/TypeIndexLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v10    # "eiLoc":Lscenelib/annotations/el/TypeIndexLocation;
    .end local v11    # "ei":Lscenelib/annotations/el/ATypeElement;
    .end local v12    # "eiList":Lannotator/specification/CriterionList;
    goto :goto_3

    .line 239
    .end local v18    # "extimpl":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<Lscenelib/annotations/el/TypeIndexLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .restart local v4    # "extimpl":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<Lscenelib/annotations/el/TypeIndexLocation;Lscenelib/annotations/el/ATypeElement;>;"
    :cond_4
    move-object/from16 v18, v4

    .end local v4    # "extimpl":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<Lscenelib/annotations/el/TypeIndexLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .restart local v18    # "extimpl":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<Lscenelib/annotations/el/TypeIndexLocation;Lscenelib/annotations/el/ATypeElement;>;"
    iget-object v4, v3, Lscenelib/annotations/el/AClass;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v5, v3, Lscenelib/annotations/el/AClass;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {v1, v0, v4, v5}, Lannotator/specification/IndexFileSpecification;->parseASTInsertions(Lannotator/specification/CriterionList;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 241
    iget-object v4, v3, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v4}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 243
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AField;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lscenelib/annotations/el/AField;

    invoke-direct {v1, v0, v9, v10}, Lannotator/specification/IndexFileSpecification;->parseField(Lannotator/specification/CriterionList;Ljava/lang/String;Lscenelib/annotations/el/AField;)V

    .line 244
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AField;>;"
    goto :goto_5

    .line 245
    :cond_5
    iget-object v4, v3, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v4}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 246
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AMethod;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lscenelib/annotations/el/AMethod;

    invoke-direct {v1, v0, v2, v9, v10}, Lannotator/specification/IndexFileSpecification;->parseMethod(Lannotator/specification/CriterionList;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AMethod;)V

    .line 247
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AMethod;>;"
    goto :goto_6

    .line 248
    :cond_6
    iget-object v4, v3, Lscenelib/annotations/el/AClass;->staticInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v4}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 249
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lscenelib/annotations/el/ABlock;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lscenelib/annotations/el/ABlock;

    invoke-direct {v1, v0, v2, v9, v10}, Lannotator/specification/IndexFileSpecification;->parseStaticInit(Lannotator/specification/CriterionList;Ljava/lang/String;ILscenelib/annotations/el/ABlock;)V

    .line 250
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lscenelib/annotations/el/ABlock;>;"
    goto :goto_7

    .line 251
    :cond_7
    iget-object v4, v3, Lscenelib/annotations/el/AClass;->instanceInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v4}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 252
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lscenelib/annotations/el/ABlock;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lscenelib/annotations/el/ABlock;

    invoke-direct {v1, v0, v2, v9, v10}, Lannotator/specification/IndexFileSpecification;->parseInstanceInit(Lannotator/specification/CriterionList;Ljava/lang/String;ILscenelib/annotations/el/ABlock;)V

    .line 253
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lscenelib/annotations/el/ABlock;>;"
    goto :goto_8

    .line 254
    :cond_8
    iget-object v4, v3, Lscenelib/annotations/el/AClass;->fieldInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v4}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 255
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AExpression;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lscenelib/annotations/el/AExpression;

    invoke-direct {v1, v0, v2, v9, v10}, Lannotator/specification/IndexFileSpecification;->parseFieldInit(Lannotator/specification/CriterionList;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AExpression;)V

    .line 256
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AExpression;>;"
    goto :goto_9

    .line 258
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "):  done"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lannotator/specification/IndexFileSpecification;->debug(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method private parseElement(Lannotator/specification/CriterionList;Lscenelib/annotations/el/AElement;)Ljava/util/List;
    .locals 2
    .param p1, "clist"    # Lannotator/specification/CriterionList;
    .param p2, "element"    # Lscenelib/annotations/el/AElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lannotator/specification/CriterionList;",
            "Lscenelib/annotations/el/AElement;",
            ")",
            "Ljava/util/List<",
            "Lannotator/find/Insertion;",
            ">;"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lannotator/specification/IndexFileSpecification;->parseElement(Lannotator/specification/CriterionList;Lscenelib/annotations/el/AElement;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private parseElement(Lannotator/specification/CriterionList;Lscenelib/annotations/el/AElement;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "clist"    # Lannotator/specification/CriterionList;
    .param p2, "element"    # Lscenelib/annotations/el/AElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lannotator/specification/CriterionList;",
            "Lscenelib/annotations/el/AElement;",
            "Ljava/util/List<",
            "Lannotator/find/Insertion;",
            ">;)",
            "Ljava/util/List<",
            "Lannotator/find/Insertion;",
            ">;"
        }
    .end annotation

    .line 326
    .local p3, "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lannotator/specification/IndexFileSpecification;->parseElement(Lannotator/specification/CriterionList;Lscenelib/annotations/el/AElement;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private parseElement(Lannotator/specification/CriterionList;Lscenelib/annotations/el/AElement;Ljava/util/List;Z)Ljava/util/List;
    .locals 18
    .param p1, "clist"    # Lannotator/specification/CriterionList;
    .param p2, "element"    # Lscenelib/annotations/el/AElement;
    .param p4, "isCastInsertion"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lannotator/specification/CriterionList;",
            "Lscenelib/annotations/el/AElement;",
            "Ljava/util/List<",
            "Lannotator/find/Insertion;",
            ">;Z)",
            "Ljava/util/List<",
            "Lannotator/find/Insertion;",
            ">;"
        }
    .end annotation

    .line 344
    .local p3, "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 345
    .local v3, "receiver":Lannotator/find/ReceiverInsertion;
    const/4 v4, 0x0

    .line 346
    .local v4, "neu":Lannotator/find/NewInsertion;
    const/4 v5, 0x0

    .line 347
    .local v5, "cast":Lannotator/find/CastInsertion;
    const/4 v6, 0x0

    .line 348
    .local v6, "closeParen":Lannotator/find/CloseParenthesisInsertion;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v7, "annotationInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    invoke-direct {v0, v1}, Lannotator/specification/IndexFileSpecification;->getElementAnnotations(Lscenelib/annotations/el/AElement;)Ljava/util/Set;

    move-result-object v8

    .line 350
    .local v8, "elementAnnotations":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/String;Lscenelib/annotations/Annotation;>;>;"
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 351
    invoke-virtual/range {p1 .. p1}, Lannotator/specification/CriterionList;->criteria()Lannotator/find/Criteria;

    move-result-object v9

    .line 352
    .local v9, "criteria":Lannotator/find/Criteria;
    instance-of v10, v1, Lscenelib/annotations/el/ATypeElementWithType;

    if-eqz v10, :cond_1

    .line 356
    move-object v10, v1

    check-cast v10, Lscenelib/annotations/el/ATypeElementWithType;

    .line 357
    invoke-virtual {v10}, Lscenelib/annotations/el/ATypeElementWithType;->getType()Lscenelib/type/Type;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v0, v10, v11, v2, v9}, Lannotator/specification/IndexFileSpecification;->createCastInsertion(Lscenelib/type/Type;Ljava/lang/String;Ljava/util/List;Lannotator/find/Criteria;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v10

    .line 359
    .local v10, "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lannotator/find/CastInsertion;Lannotator/find/CloseParenthesisInsertion;>;"
    iget-object v11, v10, Lorg/checkerframework/org/plumelib/util/Pair;->a:Ljava/lang/Object;

    move-object v5, v11

    check-cast v5, Lannotator/find/CastInsertion;

    .line 360
    iget-object v11, v10, Lorg/checkerframework/org/plumelib/util/Pair;->b:Ljava/lang/Object;

    move-object v6, v11

    check-cast v6, Lannotator/find/CloseParenthesisInsertion;

    .line 361
    .end local v10    # "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lannotator/find/CastInsertion;Lannotator/find/CloseParenthesisInsertion;>;"
    :cond_0
    goto :goto_0

    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 362
    invoke-static {v9}, Lannotator/specification/IndexFileSpecification;->isOnReceiver(Lannotator/find/Criteria;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 363
    new-instance v10, Lannotator/find/ReceiverInsertion;

    new-instance v11, Lscenelib/type/DeclaredType;

    invoke-direct {v11}, Lscenelib/type/DeclaredType;-><init>()V

    invoke-direct {v10, v11, v9, v2}, Lannotator/find/ReceiverInsertion;-><init>(Lscenelib/type/DeclaredType;Lannotator/find/Criteria;Ljava/util/List;)V

    move-object v3, v10

    goto :goto_0

    .line 365
    :cond_2
    invoke-static {v9}, Lannotator/specification/IndexFileSpecification;->isOnNew(Lannotator/find/Criteria;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 366
    new-instance v10, Lannotator/find/NewInsertion;

    new-instance v11, Lscenelib/type/DeclaredType;

    invoke-direct {v11}, Lscenelib/type/DeclaredType;-><init>()V

    invoke-direct {v10, v11, v9, v2}, Lannotator/find/NewInsertion;-><init>(Lscenelib/type/Type;Lannotator/find/Criteria;Ljava/util/List;)V

    move-object v4, v10

    .line 372
    .end local v9    # "criteria":Lannotator/find/Criteria;
    :cond_3
    :goto_0
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/checkerframework/org/plumelib/util/Pair;

    .line 373
    .local v10, "p":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/String;Lscenelib/annotations/Annotation;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v11, "elementInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    iget-object v12, v10, Lorg/checkerframework/org/plumelib/util/Pair;->a:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 375
    .local v12, "annotationString":Ljava/lang/String;
    iget-object v13, v10, Lorg/checkerframework/org/plumelib/util/Pair;->b:Ljava/lang/Object;

    check-cast v13, Lscenelib/annotations/Annotation;

    .line 376
    .local v13, "annotation":Lscenelib/annotations/Annotation;
    invoke-virtual/range {p1 .. p1}, Lannotator/specification/CriterionList;->criteria()Lannotator/find/Criteria;

    move-result-object v14

    .line 377
    .local v14, "criteria":Lannotator/find/Criteria;
    iget-object v15, v13, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    invoke-virtual {v15}, Lscenelib/annotations/el/AnnotationDef;->isOnlyTypeAnnotation()Z

    move-result v15

    .line 379
    .local v15, "isTypeAnnotationOnly":Z
    invoke-direct {v0, v14}, Lannotator/specification/IndexFileSpecification;->noTypePath(Lannotator/find/Criteria;)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-static {v14}, Lannotator/specification/IndexFileSpecification;->isOnReceiver(Lannotator/find/Criteria;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 380
    if-nez v3, :cond_4

    .line 381
    new-instance v16, Lscenelib/type/DeclaredType;

    invoke-direct/range {v16 .. v16}, Lscenelib/type/DeclaredType;-><init>()V

    move-object/from16 v17, v16

    .line 382
    .local v17, "type":Lscenelib/type/DeclaredType;
    move-object/from16 v16, v8

    move-object/from16 v8, v17

    .end local v17    # "type":Lscenelib/type/DeclaredType;
    .local v8, "type":Lscenelib/type/DeclaredType;
    .local v16, "elementAnnotations":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/String;Lscenelib/annotations/Annotation;>;>;"
    invoke-virtual {v8, v12}, Lscenelib/type/DeclaredType;->addAnnotation(Ljava/lang/String;)V

    .line 383
    move-object/from16 v17, v9

    new-instance v9, Lannotator/find/ReceiverInsertion;

    invoke-direct {v9, v8, v14, v2}, Lannotator/find/ReceiverInsertion;-><init>(Lscenelib/type/DeclaredType;Lannotator/find/Criteria;Ljava/util/List;)V

    move-object v3, v9

    .line 384
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    .end local v8    # "type":Lscenelib/type/DeclaredType;
    goto :goto_2

    .line 386
    .end local v16    # "elementAnnotations":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/String;Lscenelib/annotations/Annotation;>;>;"
    .local v8, "elementAnnotations":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/String;Lscenelib/annotations/Annotation;>;>;"
    :cond_4
    move-object/from16 v16, v8

    move-object/from16 v17, v9

    .end local v8    # "elementAnnotations":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/String;Lscenelib/annotations/Annotation;>;>;"
    .restart local v16    # "elementAnnotations":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/String;Lscenelib/annotations/Annotation;>;>;"
    invoke-virtual {v3}, Lannotator/find/ReceiverInsertion;->getType()Lscenelib/type/Type;

    move-result-object v8

    invoke-virtual {v8, v12}, Lscenelib/type/Type;->addAnnotation(Ljava/lang/String;)V

    .line 388
    :goto_2
    invoke-direct {v0, v3, v13}, Lannotator/specification/IndexFileSpecification;->addInsertionSource(Lannotator/find/Insertion;Lscenelib/annotations/Annotation;)V

    goto/16 :goto_5

    .line 379
    .end local v16    # "elementAnnotations":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/String;Lscenelib/annotations/Annotation;>;>;"
    .restart local v8    # "elementAnnotations":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/String;Lscenelib/annotations/Annotation;>;>;"
    :cond_5
    move-object/from16 v16, v8

    move-object/from16 v17, v9

    .line 389
    .end local v8    # "elementAnnotations":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/String;Lscenelib/annotations/Annotation;>;>;"
    .restart local v16    # "elementAnnotations":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/String;Lscenelib/annotations/Annotation;>;>;"
    invoke-direct {v0, v14}, Lannotator/specification/IndexFileSpecification;->noTypePath(Lannotator/find/Criteria;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v14}, Lannotator/specification/IndexFileSpecification;->isOnNew(Lannotator/find/Criteria;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 390
    if-nez v4, :cond_6

    .line 391
    new-instance v8, Lscenelib/type/DeclaredType;

    invoke-direct {v8}, Lscenelib/type/DeclaredType;-><init>()V

    .line 392
    .local v8, "type":Lscenelib/type/DeclaredType;
    invoke-virtual {v8, v12}, Lscenelib/type/DeclaredType;->addAnnotation(Ljava/lang/String;)V

    .line 393
    new-instance v9, Lannotator/find/NewInsertion;

    invoke-direct {v9, v8, v14, v2}, Lannotator/find/NewInsertion;-><init>(Lscenelib/type/Type;Lannotator/find/Criteria;Ljava/util/List;)V

    move-object v4, v9

    .line 394
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    .end local v8    # "type":Lscenelib/type/DeclaredType;
    goto :goto_3

    .line 396
    :cond_6
    invoke-virtual {v4}, Lannotator/find/NewInsertion;->getType()Lscenelib/type/Type;

    move-result-object v8

    invoke-virtual {v8, v12}, Lscenelib/type/Type;->addAnnotation(Ljava/lang/String;)V

    .line 398
    :goto_3
    invoke-direct {v0, v4, v13}, Lannotator/specification/IndexFileSpecification;->addInsertionSource(Lannotator/find/Insertion;Lscenelib/annotations/Annotation;)V

    goto :goto_5

    .line 399
    :cond_7
    instance-of v8, v1, Lscenelib/annotations/el/ATypeElementWithType;

    if-eqz v8, :cond_9

    .line 400
    if-nez v5, :cond_8

    .line 401
    move-object v8, v1

    check-cast v8, Lscenelib/annotations/el/ATypeElementWithType;

    .line 402
    invoke-virtual {v8}, Lscenelib/annotations/el/ATypeElementWithType;->getType()Lscenelib/type/Type;

    move-result-object v8

    .line 401
    invoke-direct {v0, v8, v12, v2, v14}, Lannotator/specification/IndexFileSpecification;->createCastInsertion(Lscenelib/type/Type;Ljava/lang/String;Ljava/util/List;Lannotator/find/Criteria;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v8

    .line 404
    .local v8, "insertions":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lannotator/find/CastInsertion;Lannotator/find/CloseParenthesisInsertion;>;"
    iget-object v9, v8, Lorg/checkerframework/org/plumelib/util/Pair;->a:Ljava/lang/Object;

    move-object v5, v9

    check-cast v5, Lannotator/find/CastInsertion;

    .line 405
    iget-object v9, v8, Lorg/checkerframework/org/plumelib/util/Pair;->b:Ljava/lang/Object;

    move-object v6, v9

    check-cast v6, Lannotator/find/CloseParenthesisInsertion;

    .line 406
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    .end local v8    # "insertions":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lannotator/find/CastInsertion;Lannotator/find/CloseParenthesisInsertion;>;"
    goto :goto_4

    .line 410
    :cond_8
    invoke-virtual {v5}, Lannotator/find/CastInsertion;->getType()Lscenelib/type/Type;

    move-result-object v8

    invoke-virtual {v8, v12}, Lscenelib/type/Type;->addAnnotation(Ljava/lang/String;)V

    .line 412
    :goto_4
    invoke-direct {v0, v5, v13}, Lannotator/specification/IndexFileSpecification;->addInsertionSource(Lannotator/find/Insertion;Lscenelib/annotations/Annotation;)V

    goto :goto_5

    .line 414
    :cond_9
    invoke-virtual {v14}, Lannotator/find/Criteria;->getCastRelativeLocation()Lscenelib/annotations/el/RelativeLocation;

    move-result-object v8

    .line 415
    .local v8, "loc":Lscenelib/annotations/el/RelativeLocation;
    if-eqz v8, :cond_a

    iget v9, v8, Lscenelib/annotations/el/RelativeLocation;->type_index:I

    if-lez v9, :cond_a

    .line 416
    new-instance v9, Lannotator/find/IntersectionTypeLocationCriterion;

    invoke-direct {v9, v8}, Lannotator/find/IntersectionTypeLocationCriterion;-><init>(Lscenelib/annotations/el/RelativeLocation;)V

    invoke-virtual {v14, v9}, Lannotator/find/Criteria;->add(Lannotator/find/Criterion;)V

    .line 418
    :cond_a
    new-instance v9, Lannotator/find/AnnotationInsertion;

    xor-int/lit8 v1, v15, 0x1

    invoke-direct {v9, v12, v14, v1, v13}, Lannotator/find/AnnotationInsertion;-><init>(Ljava/lang/String;Lannotator/find/Criteria;ZLscenelib/annotations/Annotation;)V

    move-object v1, v9

    .line 420
    .local v1, "ins":Lannotator/find/Insertion;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parsed: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lannotator/specification/IndexFileSpecification;->debug(Ljava/lang/String;)V

    .line 421
    if-nez p4, :cond_b

    .line 425
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_b
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-direct {v0, v1, v13}, Lannotator/specification/IndexFileSpecification;->addInsertionSource(Lannotator/find/Insertion;Lscenelib/annotations/Annotation;)V

    .line 430
    .end local v1    # "ins":Lannotator/find/Insertion;
    .end local v8    # "loc":Lscenelib/annotations/el/RelativeLocation;
    :goto_5
    iget-object v1, v0, Lannotator/specification/IndexFileSpecification;->insertions:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 433
    invoke-direct {v0, v14}, Lannotator/specification/IndexFileSpecification;->noTypePath(Lannotator/find/Criteria;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {v14}, Lannotator/specification/IndexFileSpecification;->isOnNullaryConstructor(Lannotator/find/Criteria;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 434
    iget-object v1, v0, Lannotator/specification/IndexFileSpecification;->constructorInsertion:Lannotator/find/ConstructorInsertion;

    if-nez v1, :cond_c

    .line 435
    new-instance v1, Lscenelib/type/DeclaredType;

    invoke-virtual {v14}, Lannotator/find/Criteria;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lscenelib/type/DeclaredType;-><init>(Ljava/lang/String;)V

    .line 436
    .local v1, "type":Lscenelib/type/DeclaredType;
    new-instance v2, Lannotator/find/ConstructorInsertion;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v1, v14, v8}, Lannotator/find/ConstructorInsertion;-><init>(Lscenelib/type/Type;Lannotator/find/Criteria;Ljava/util/List;)V

    iput-object v2, v0, Lannotator/specification/IndexFileSpecification;->constructorInsertion:Lannotator/find/ConstructorInsertion;

    .line 438
    iget-object v8, v0, Lannotator/specification/IndexFileSpecification;->insertions:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    .end local v1    # "type":Lscenelib/type/DeclaredType;
    goto :goto_6

    .line 440
    :cond_c
    sget-boolean v1, Lannotator/Main;->temporaryDebug:Z

    if-eqz v1, :cond_d

    .line 441
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, v0, Lannotator/specification/IndexFileSpecification;->constructorInsertion:Lannotator/find/ConstructorInsertion;

    filled-new-array {v14, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v8, "Ignoring criteria=%s because constructorInsertion=%s%n"

    invoke-virtual {v1, v8, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 445
    :cond_d
    :goto_6
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lannotator/find/Insertion;

    .line 446
    .local v2, "i":Lannotator/find/Insertion;
    invoke-virtual {v2}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v8

    sget-object v9, Lannotator/find/Insertion$Kind;->RECEIVER:Lannotator/find/Insertion$Kind;

    if-ne v8, v9, :cond_e

    .line 447
    iget-object v8, v0, Lannotator/specification/IndexFileSpecification;->constructorInsertion:Lannotator/find/ConstructorInsertion;

    move-object v9, v2

    check-cast v9, Lannotator/find/ReceiverInsertion;

    invoke-virtual {v8, v9}, Lannotator/find/ConstructorInsertion;->addReceiverInsertion(Lannotator/find/ReceiverInsertion;)V

    goto :goto_8

    .line 448
    :cond_e
    invoke-virtual {v14}, Lannotator/find/Criteria;->isOnReturnType()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 449
    iget-object v8, v0, Lannotator/specification/IndexFileSpecification;->constructorInsertion:Lannotator/find/ConstructorInsertion;

    invoke-virtual {v8}, Lannotator/find/ConstructorInsertion;->getType()Lscenelib/type/Type;

    move-result-object v8

    check-cast v8, Lscenelib/type/DeclaredType;

    invoke-virtual {v8, v12}, Lscenelib/type/DeclaredType;->addAnnotation(Ljava/lang/String;)V

    goto :goto_8

    .line 450
    :cond_f
    if-nez v15, :cond_10

    .line 451
    iget-object v8, v0, Lannotator/specification/IndexFileSpecification;->constructorInsertion:Lannotator/find/ConstructorInsertion;

    invoke-virtual {v8, v2}, Lannotator/find/ConstructorInsertion;->addDeclarationInsertion(Lannotator/find/Insertion;)V

    goto :goto_8

    .line 453
    :cond_10
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    .end local v2    # "i":Lannotator/find/Insertion;
    :goto_8
    goto :goto_7

    .line 457
    :cond_11
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 458
    .end local v10    # "p":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/String;Lscenelib/annotations/Annotation;>;"
    .end local v11    # "elementInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local v12    # "annotationString":Ljava/lang/String;
    .end local v13    # "annotation":Lscenelib/annotations/Annotation;
    .end local v14    # "criteria":Lannotator/find/Criteria;
    .end local v15    # "isTypeAnnotationOnly":Z
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    goto/16 :goto_1

    .line 459
    .end local v16    # "elementAnnotations":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/String;Lscenelib/annotations/Annotation;>;>;"
    .local v8, "elementAnnotations":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/String;Lscenelib/annotations/Annotation;>;>;"
    :cond_12
    move-object/from16 v16, v8

    .end local v8    # "elementAnnotations":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/String;Lscenelib/annotations/Annotation;>;>;"
    .restart local v16    # "elementAnnotations":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/String;Lscenelib/annotations/Annotation;>;>;"
    if-eqz v3, :cond_13

    .line 460
    iget-object v1, v0, Lannotator/specification/IndexFileSpecification;->insertions:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_13
    if-eqz v4, :cond_14

    .line 463
    iget-object v1, v0, Lannotator/specification/IndexFileSpecification;->insertions:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_14
    if-eqz v5, :cond_15

    .line 466
    iget-object v1, v0, Lannotator/specification/IndexFileSpecification;->insertions:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v1, v0, Lannotator/specification/IndexFileSpecification;->insertions:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_15
    iget-object v1, v0, Lannotator/specification/IndexFileSpecification;->constructorInsertion:Lannotator/find/ConstructorInsertion;

    if-eqz v1, :cond_16

    .line 470
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lannotator/find/ConstructorInsertion;->setInserted(Z)V

    .line 472
    :cond_16
    return-object v7
.end method

.method private parseElement(Lannotator/specification/CriterionList;Lscenelib/annotations/el/AElement;Z)Ljava/util/List;
    .locals 1
    .param p1, "clist"    # Lannotator/specification/CriterionList;
    .param p2, "element"    # Lscenelib/annotations/el/AElement;
    .param p3, "isCastInsertion"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lannotator/specification/CriterionList;",
            "Lscenelib/annotations/el/AElement;",
            "Z)",
            "Ljava/util/List<",
            "Lannotator/find/Insertion;",
            ">;"
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lannotator/specification/IndexFileSpecification;->parseElement(Lannotator/specification/CriterionList;Lscenelib/annotations/el/AElement;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private parseExpression(Lannotator/specification/CriterionList;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AExpression;)V
    .locals 5
    .param p1, "clist"    # Lannotator/specification/CriterionList;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "exp"    # Lscenelib/annotations/el/AExpression;

    .line 669
    iget-object v0, p4, Lscenelib/annotations/el/AExpression;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 670
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/RelativeLocation;

    .line 671
    .local v2, "loc":Lscenelib/annotations/el/RelativeLocation;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    .line 672
    .local v3, "cast":Lscenelib/annotations/el/ATypeElement;
    invoke-static {p3, v2}, Lannotator/find/Criteria;->cast(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)Lannotator/find/Criterion;

    move-result-object v4

    invoke-virtual {p1, v4}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v4

    .line 673
    .local v4, "castClist":Lannotator/specification/CriterionList;
    invoke-direct {p0, v4, v3}, Lannotator/specification/IndexFileSpecification;->parseInnerAndOuterElements(Lannotator/specification/CriterionList;Lscenelib/annotations/el/ATypeElement;)V

    .line 674
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v2    # "loc":Lscenelib/annotations/el/RelativeLocation;
    .end local v3    # "cast":Lscenelib/annotations/el/ATypeElement;
    .end local v4    # "castClist":Lannotator/specification/CriterionList;
    goto :goto_0

    .line 677
    :cond_0
    iget-object v0, p4, Lscenelib/annotations/el/AExpression;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 678
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/RelativeLocation;

    .line 679
    .restart local v2    # "loc":Lscenelib/annotations/el/RelativeLocation;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    .line 680
    .local v3, "newObject":Lscenelib/annotations/el/ATypeElement;
    invoke-static {p3, v2}, Lannotator/find/Criteria;->newObject(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)Lannotator/find/Criterion;

    move-result-object v4

    invoke-virtual {p1, v4}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v4

    .line 681
    .local v4, "newClist":Lannotator/specification/CriterionList;
    invoke-direct {p0, v4, v3}, Lannotator/specification/IndexFileSpecification;->parseInnerAndOuterElements(Lannotator/specification/CriterionList;Lscenelib/annotations/el/ATypeElement;)V

    .line 682
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v2    # "loc":Lscenelib/annotations/el/RelativeLocation;
    .end local v3    # "newObject":Lscenelib/annotations/el/ATypeElement;
    .end local v4    # "newClist":Lannotator/specification/CriterionList;
    goto :goto_1

    .line 685
    :cond_1
    iget-object v0, p4, Lscenelib/annotations/el/AExpression;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 686
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/RelativeLocation;

    .line 687
    .restart local v2    # "loc":Lscenelib/annotations/el/RelativeLocation;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    .line 688
    .local v3, "instanceOf":Lscenelib/annotations/el/ATypeElement;
    invoke-static {p3, v2}, Lannotator/find/Criteria;->instanceOf(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)Lannotator/find/Criterion;

    move-result-object v4

    invoke-virtual {p1, v4}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v4

    .line 689
    .local v4, "instanceOfClist":Lannotator/specification/CriterionList;
    invoke-direct {p0, v4, v3}, Lannotator/specification/IndexFileSpecification;->parseInnerAndOuterElements(Lannotator/specification/CriterionList;Lscenelib/annotations/el/ATypeElement;)V

    .line 690
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v2    # "loc":Lscenelib/annotations/el/RelativeLocation;
    .end local v3    # "instanceOf":Lscenelib/annotations/el/ATypeElement;
    .end local v4    # "instanceOfClist":Lannotator/specification/CriterionList;
    goto :goto_2

    .line 693
    :cond_2
    iget-object v0, p4, Lscenelib/annotations/el/AExpression;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 694
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/RelativeLocation;

    .line 695
    .restart local v2    # "loc":Lscenelib/annotations/el/RelativeLocation;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    .line 696
    .local v3, "ref":Lscenelib/annotations/el/ATypeElement;
    nop

    .line 697
    invoke-static {p3, v2}, Lannotator/find/Criteria;->memberReference(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)Lannotator/find/Criterion;

    move-result-object v4

    invoke-virtual {p1, v4}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v4

    .line 698
    .restart local v4    # "instanceOfClist":Lannotator/specification/CriterionList;
    invoke-direct {p0, v4, v3}, Lannotator/specification/IndexFileSpecification;->parseInnerAndOuterElements(Lannotator/specification/CriterionList;Lscenelib/annotations/el/ATypeElement;)V

    .line 699
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v2    # "loc":Lscenelib/annotations/el/RelativeLocation;
    .end local v3    # "ref":Lscenelib/annotations/el/ATypeElement;
    .end local v4    # "instanceOfClist":Lannotator/specification/CriterionList;
    goto :goto_3

    .line 702
    :cond_3
    iget-object v0, p4, Lscenelib/annotations/el/AExpression;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 703
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/RelativeLocation;

    .line 704
    .restart local v2    # "loc":Lscenelib/annotations/el/RelativeLocation;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    .line 705
    .local v3, "call":Lscenelib/annotations/el/ATypeElement;
    nop

    .line 706
    invoke-static {p3, v2}, Lannotator/find/Criteria;->methodCall(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)Lannotator/find/Criterion;

    move-result-object v4

    invoke-virtual {p1, v4}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v4

    .line 707
    .restart local v4    # "instanceOfClist":Lannotator/specification/CriterionList;
    invoke-direct {p0, v4, v3}, Lannotator/specification/IndexFileSpecification;->parseInnerAndOuterElements(Lannotator/specification/CriterionList;Lscenelib/annotations/el/ATypeElement;)V

    .line 708
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v2    # "loc":Lscenelib/annotations/el/RelativeLocation;
    .end local v3    # "call":Lscenelib/annotations/el/ATypeElement;
    .end local v4    # "instanceOfClist":Lannotator/specification/CriterionList;
    goto :goto_4

    .line 711
    :cond_4
    iget-object v0, p4, Lscenelib/annotations/el/AExpression;->funs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 712
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/AMethod;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/RelativeLocation;

    .line 713
    .restart local v2    # "loc":Lscenelib/annotations/el/RelativeLocation;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/AMethod;

    .line 714
    .local v3, "lambda":Lscenelib/annotations/el/AMethod;
    invoke-static {p3, v2}, Lannotator/find/Criteria;->lambda(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)Lannotator/find/Criterion;

    move-result-object v4

    invoke-virtual {p1, v4}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v4

    .line 715
    .local v4, "lambdaClist":Lannotator/specification/CriterionList;
    invoke-direct {p0, p2, p3, v3, v4}, Lannotator/specification/IndexFileSpecification;->parseLambdaExpression(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AMethod;Lannotator/specification/CriterionList;)V

    .line 716
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/AMethod;>;"
    .end local v2    # "loc":Lscenelib/annotations/el/RelativeLocation;
    .end local v3    # "lambda":Lscenelib/annotations/el/AMethod;
    .end local v4    # "lambdaClist":Lannotator/specification/CriterionList;
    goto :goto_5

    .line 717
    :cond_5
    return-void
.end method

.method private parseField(Lannotator/specification/CriterionList;Ljava/lang/String;Lscenelib/annotations/el/AField;)V
    .locals 2
    .param p1, "clist"    # Lannotator/specification/CriterionList;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "field"    # Lscenelib/annotations/el/AField;

    .line 264
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lannotator/find/Criteria;->field(Ljava/lang/String;Z)Lannotator/find/Criterion;

    move-result-object v0

    invoke-virtual {p1, v0}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lannotator/specification/IndexFileSpecification;->parseElement(Lannotator/specification/CriterionList;Lscenelib/annotations/el/AElement;)Ljava/util/List;

    .line 267
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lannotator/find/Criteria;->field(Ljava/lang/String;Z)Lannotator/find/Criterion;

    move-result-object v0

    invoke-virtual {p1, v0}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object p1

    .line 268
    iget-object v0, p3, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, p1, v0}, Lannotator/specification/IndexFileSpecification;->parseInnerAndOuterElements(Lannotator/specification/CriterionList;Lscenelib/annotations/el/ATypeElement;)V

    .line 269
    iget-object v0, p3, Lscenelib/annotations/el/AField;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p3, Lscenelib/annotations/el/AField;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, p1, v0, v1}, Lannotator/specification/IndexFileSpecification;->parseASTInsertions(Lannotator/specification/CriterionList;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 270
    return-void
.end method

.method private parseFieldInit(Lannotator/specification/CriterionList;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AExpression;)V
    .locals 2
    .param p1, "clist"    # Lannotator/specification/CriterionList;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "fieldName"    # Ljava/lang/String;
    .param p4, "exp"    # Lscenelib/annotations/el/AExpression;

    .line 289
    invoke-static {p3}, Lannotator/find/Criteria;->inFieldInit(Ljava/lang/String;)Lannotator/find/Criterion;

    move-result-object v0

    invoke-virtual {p1, v0}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object p1

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init for field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lannotator/specification/IndexFileSpecification;->parseExpression(Lannotator/specification/CriterionList;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AExpression;)V

    .line 291
    return-void
.end method

.method private parseInnerAndOuterElements(Lannotator/specification/CriterionList;Lscenelib/annotations/el/ATypeElement;)V
    .locals 1
    .param p1, "clist"    # Lannotator/specification/CriterionList;
    .param p2, "typeElement"    # Lscenelib/annotations/el/ATypeElement;

    .line 547
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lannotator/specification/IndexFileSpecification;->parseInnerAndOuterElements(Lannotator/specification/CriterionList;Lscenelib/annotations/el/ATypeElement;Z)V

    .line 548
    return-void
.end method

.method private parseInnerAndOuterElements(Lannotator/specification/CriterionList;Lscenelib/annotations/el/ATypeElement;Z)V
    .locals 7
    .param p1, "clist"    # Lannotator/specification/CriterionList;
    .param p2, "typeElement"    # Lscenelib/annotations/el/ATypeElement;
    .param p3, "isCastInsertion"    # Z

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v0, "innerInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    iget-object v1, p2, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 561
    .local v2, "innerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/InnerTypeLocation;

    .line 562
    .local v3, "innerLoc":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/AElement;

    .line 563
    .local v4, "innerElement":Lscenelib/annotations/el/AElement;
    invoke-static {v3}, Lannotator/find/Criteria;->atLocation(Lscenelib/annotations/el/InnerTypeLocation;)Lannotator/find/Criterion;

    move-result-object v5

    invoke-virtual {p1, v5}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v5

    .line 564
    .local v5, "innerClist":Lannotator/specification/CriterionList;
    invoke-direct {p0, v5, v4, p3}, Lannotator/specification/IndexFileSpecification;->parseElement(Lannotator/specification/CriterionList;Lscenelib/annotations/el/AElement;Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 565
    .end local v2    # "innerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v3    # "innerLoc":Lscenelib/annotations/el/InnerTypeLocation;
    .end local v4    # "innerElement":Lscenelib/annotations/el/AElement;
    .end local v5    # "innerClist":Lannotator/specification/CriterionList;
    goto :goto_0

    .line 566
    :cond_0
    move-object v1, p1

    .line 567
    .local v1, "outerClist":Lannotator/specification/CriterionList;
    if-nez p3, :cond_1

    .line 569
    invoke-static {}, Lannotator/find/Criteria;->atLocation()Lannotator/find/Criterion;

    move-result-object v2

    invoke-virtual {p1, v2}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v1

    .line 571
    :cond_1
    invoke-direct {p0, v1, p2, v0}, Lannotator/specification/IndexFileSpecification;->parseElement(Lannotator/specification/CriterionList;Lscenelib/annotations/el/AElement;Ljava/util/List;)Ljava/util/List;

    .line 572
    return-void
.end method

.method private parseInstanceInit(Lannotator/specification/CriterionList;Ljava/lang/String;ILscenelib/annotations/el/ABlock;)V
    .locals 2
    .param p1, "clist"    # Lannotator/specification/CriterionList;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "blockID"    # I
    .param p4, "block"    # Lscenelib/annotations/el/ABlock;

    .line 281
    invoke-static {p3}, Lannotator/find/Criteria;->inInstanceInit(I)Lannotator/find/Criterion;

    move-result-object v0

    invoke-virtual {p1, v0}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object p1

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instance init number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lannotator/specification/IndexFileSpecification;->parseBlock(Lannotator/specification/CriterionList;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/ABlock;)V

    .line 283
    return-void
.end method

.method private parseLambdaExpression(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AMethod;Lannotator/specification/CriterionList;)V
    .locals 7
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "lambda"    # Lscenelib/annotations/el/AMethod;
    .param p4, "clist"    # Lannotator/specification/CriterionList;

    .line 721
    iget-object v0, p3, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 722
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lscenelib/annotations/el/AField;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 723
    .local v2, "index":Ljava/lang/Integer;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/AField;

    .line 724
    .local v3, "param":Lscenelib/annotations/el/AField;
    const-string v4, "(anonymous)"

    invoke-static {v4, v2}, Lannotator/find/Criteria;->param(Ljava/lang/String;Ljava/lang/Integer;)Lannotator/find/Criterion;

    move-result-object v4

    invoke-virtual {p4, v4}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v4

    .line 725
    .local v4, "paramClist":Lannotator/specification/CriterionList;
    iget-object v5, v3, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v4, v5}, Lannotator/specification/IndexFileSpecification;->parseInnerAndOuterElements(Lannotator/specification/CriterionList;Lscenelib/annotations/el/ATypeElement;)V

    .line 726
    iget-object v5, v3, Lscenelib/annotations/el/AField;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v6, v3, Lscenelib/annotations/el/AField;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v4, v5, v6}, Lannotator/specification/IndexFileSpecification;->parseASTInsertions(Lannotator/specification/CriterionList;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 727
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lscenelib/annotations/el/AField;>;"
    .end local v2    # "index":Ljava/lang/Integer;
    .end local v3    # "param":Lscenelib/annotations/el/AField;
    .end local v4    # "paramClist":Lannotator/specification/CriterionList;
    goto :goto_0

    .line 728
    :cond_0
    iget-object v0, p3, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    invoke-direct {p0, p4, p1, p2, v0}, Lannotator/specification/IndexFileSpecification;->parseBlock(Lannotator/specification/CriterionList;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/ABlock;)V

    .line 729
    return-void
.end method

.method private parseMethod(Lannotator/specification/CriterionList;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AMethod;)V
    .locals 8
    .param p1, "clist"    # Lannotator/specification/CriterionList;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "method"    # Lscenelib/annotations/el/AMethod;

    .line 615
    invoke-static {p3}, Lannotator/find/Criteria;->inMethod(Ljava/lang/String;)Lannotator/find/Criterion;

    move-result-object v0

    invoke-virtual {p1, v0}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object p1

    .line 618
    invoke-direct {p0, p1, p4}, Lannotator/specification/IndexFileSpecification;->parseElement(Lannotator/specification/CriterionList;Lscenelib/annotations/el/AElement;)Ljava/util/List;

    .line 621
    invoke-static {p3}, Lannotator/find/Criteria;->receiver(Ljava/lang/String;)Lannotator/find/Criterion;

    move-result-object v0

    invoke-virtual {p1, v0}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v0

    .line 622
    .local v0, "receiverClist":Lannotator/specification/CriterionList;
    iget-object v1, p4, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    iget-object v1, v1, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v0, v1}, Lannotator/specification/IndexFileSpecification;->parseInnerAndOuterElements(Lannotator/specification/CriterionList;Lscenelib/annotations/el/ATypeElement;)V

    .line 625
    invoke-static {p2, p3}, Lannotator/find/Criteria;->returnType(Ljava/lang/String;Ljava/lang/String;)Lannotator/find/Criterion;

    move-result-object v1

    invoke-virtual {p1, v1}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v1

    .line 626
    .local v1, "returnClist":Lannotator/specification/CriterionList;
    iget-object v2, p4, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v1, v2}, Lannotator/specification/IndexFileSpecification;->parseInnerAndOuterElements(Lannotator/specification/CriterionList;Lscenelib/annotations/el/ATypeElement;)V

    .line 629
    iget-object v2, p4, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 630
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/BoundLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/BoundLocation;

    .line 631
    .local v4, "boundLoc":Lscenelib/annotations/el/BoundLocation;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/el/ATypeElement;

    .line 632
    .local v5, "bound":Lscenelib/annotations/el/ATypeElement;
    invoke-static {p3, v4}, Lannotator/find/Criteria;->methodBound(Ljava/lang/String;Lscenelib/annotations/el/BoundLocation;)Lannotator/find/Criterion;

    move-result-object v6

    invoke-virtual {p1, v6}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v6

    .line 633
    .local v6, "boundClist":Lannotator/specification/CriterionList;
    invoke-direct {p0, v6, v5}, Lannotator/specification/IndexFileSpecification;->parseInnerAndOuterElements(Lannotator/specification/CriterionList;Lscenelib/annotations/el/ATypeElement;)V

    .line 634
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/BoundLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v4    # "boundLoc":Lscenelib/annotations/el/BoundLocation;
    .end local v5    # "bound":Lscenelib/annotations/el/ATypeElement;
    .end local v6    # "boundClist":Lannotator/specification/CriterionList;
    goto :goto_0

    .line 637
    :cond_0
    iget-object v2, p4, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 638
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lscenelib/annotations/el/AField;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 639
    .local v4, "index":Ljava/lang/Integer;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/el/AField;

    .line 640
    .local v5, "param":Lscenelib/annotations/el/AField;
    invoke-static {p3, v4}, Lannotator/find/Criteria;->param(Ljava/lang/String;Ljava/lang/Integer;)Lannotator/find/Criterion;

    move-result-object v6

    invoke-virtual {p1, v6}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v6

    .line 643
    .local v6, "paramClist":Lannotator/specification/CriterionList;
    iget-object v7, v5, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v6, v7}, Lannotator/specification/IndexFileSpecification;->parseInnerAndOuterElements(Lannotator/specification/CriterionList;Lscenelib/annotations/el/ATypeElement;)V

    .line 644
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lscenelib/annotations/el/AField;>;"
    .end local v4    # "index":Ljava/lang/Integer;
    .end local v5    # "param":Lscenelib/annotations/el/AField;
    .end local v6    # "paramClist":Lannotator/specification/CriterionList;
    goto :goto_1

    .line 647
    :cond_1
    iget-object v2, p4, Lscenelib/annotations/el/AMethod;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, p4, Lscenelib/annotations/el/AMethod;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, p1, v2, v3}, Lannotator/specification/IndexFileSpecification;->parseASTInsertions(Lannotator/specification/CriterionList;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 650
    iget-object v2, p4, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    invoke-direct {p0, p1, p2, p3, v2}, Lannotator/specification/IndexFileSpecification;->parseBlock(Lannotator/specification/CriterionList;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/ABlock;)V

    .line 651
    return-void
.end method

.method private parsePackage(Lannotator/specification/CriterionList;Ljava/lang/String;Lscenelib/annotations/el/AElement;)V
    .locals 1
    .param p1, "clist"    # Lannotator/specification/CriterionList;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "element"    # Lscenelib/annotations/el/AElement;

    .line 164
    invoke-static {p2}, Lannotator/find/Criteria;->packageDecl(Ljava/lang/String;)Lannotator/find/Criterion;

    move-result-object v0

    invoke-virtual {p1, v0}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object v0

    .line 165
    .local v0, "packageClist":Lannotator/specification/CriterionList;
    invoke-direct {p0, v0, p3}, Lannotator/specification/IndexFileSpecification;->parseElement(Lannotator/specification/CriterionList;Lscenelib/annotations/el/AElement;)Ljava/util/List;

    .line 166
    return-void
.end method

.method private parseScene()V
    .locals 9

    .line 137
    const-string v0, "parseScene()"

    invoke-static {v0}, Lannotator/specification/IndexFileSpecification;->debug(Ljava/lang/String;)V

    .line 140
    new-instance v0, Lannotator/specification/CriterionList;

    invoke-direct {v0}, Lannotator/specification/CriterionList;-><init>()V

    .line 142
    .local v0, "clist":Lannotator/specification/CriterionList;
    iget-object v1, p0, Lannotator/specification/IndexFileSpecification;->scene:Lscenelib/annotations/el/AScene;

    iget-object v1, v1, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 143
    .local v1, "packages":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<Ljava/lang/String;Lscenelib/annotations/el/AElement;>;"
    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 144
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AElement;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/el/AElement;

    invoke-direct {p0, v0, v4, v5}, Lannotator/specification/IndexFileSpecification;->parsePackage(Lannotator/specification/CriterionList;Ljava/lang/String;Lscenelib/annotations/el/AElement;)V

    .line 145
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AElement;>;"
    goto :goto_0

    .line 147
    :cond_0
    iget-object v2, p0, Lannotator/specification/IndexFileSpecification;->scene:Lscenelib/annotations/el/AScene;

    iget-object v2, v2, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 148
    .local v2, "classes":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    invoke-virtual {v2}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 149
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 150
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscenelib/annotations/el/AClass;

    .line 151
    .local v6, "clazz":Lscenelib/annotations/el/AClass;
    const-string v7, ".package-info"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 153
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0xd

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v7, v6}, Lannotator/specification/IndexFileSpecification;->parsePackage(Lannotator/specification/CriterionList;Ljava/lang/String;Lscenelib/annotations/el/AElement;)V

    goto :goto_2

    .line 155
    :cond_1
    invoke-direct {p0, v0, v5, v6}, Lannotator/specification/IndexFileSpecification;->parseClass(Lannotator/specification/CriterionList;Ljava/lang/String;Lscenelib/annotations/el/AClass;)V

    .line 157
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "clazz":Lscenelib/annotations/el/AClass;
    :goto_2
    goto :goto_1

    .line 158
    :cond_2
    return-void
.end method

.method private parseStaticInit(Lannotator/specification/CriterionList;Ljava/lang/String;ILscenelib/annotations/el/ABlock;)V
    .locals 2
    .param p1, "clist"    # Lannotator/specification/CriterionList;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "blockID"    # I
    .param p4, "block"    # Lscenelib/annotations/el/ABlock;

    .line 273
    invoke-static {p3}, Lannotator/find/Criteria;->inStaticInit(I)Lannotator/find/Criterion;

    move-result-object v0

    invoke-virtual {p1, v0}, Lannotator/specification/CriterionList;->add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;

    move-result-object p1

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "static init number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lannotator/specification/IndexFileSpecification;->parseBlock(Lannotator/specification/CriterionList;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/ABlock;)V

    .line 278
    return-void
.end method


# virtual methods
.method public annotationImports()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lannotator/specification/IndexFileSpecification;->scene:Lscenelib/annotations/el/AScene;

    iget-object v0, v0, Lscenelib/annotations/el/AScene;->imports:Ljava/util/Map;

    return-object v0
.end method

.method public getScene()Lscenelib/annotations/el/AScene;
    .locals 1

    .line 133
    iget-object v0, p0, Lannotator/specification/IndexFileSpecification;->scene:Lscenelib/annotations/el/AScene;

    return-object v0
.end method

.method public insertionSources()Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "Lannotator/find/Insertion;",
            "Lscenelib/annotations/Annotation;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lannotator/specification/IndexFileSpecification;->insertionSources:Lorg/checkerframework/com/google/common/collect/Multimap;

    return-object v0
.end method

.method public parse()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lannotator/find/Insertion;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/plumelib/util/FileIOException;
        }
    .end annotation

    .line 75
    :try_start_0
    iget-object v0, p0, Lannotator/specification/IndexFileSpecification;->indexFileName:Ljava/lang/String;

    iget-object v1, p0, Lannotator/specification/IndexFileSpecification;->scene:Lscenelib/annotations/el/AScene;

    .line 76
    invoke-static {v0, v1}, Lscenelib/annotations/io/IndexFileParser;->parseFile(Ljava/lang/String;Lscenelib/annotations/el/AScene;)Ljava/util/Map;

    move-result-object v0

    .line 77
    .local v0, "annotationDefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lscenelib/annotations/el/AnnotationDef;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 78
    .local v1, "defKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 82
    .local v2, "ambiguous":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 83
    .local v4, "key":Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const-string v6, "$"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 84
    .local v5, "ix":I
    if-ltz v5, :cond_0

    .line 85
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "ix":I
    .end local v6    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 90
    :cond_1
    invoke-static {v2}, Lannotator/find/Insertion;->setAlwaysQualify(Ljava/util/Set;)V
    :try_end_0
    .catch Lorg/checkerframework/org/plumelib/util/FileIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "annotationDefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lscenelib/annotations/el/AnnotationDef;>;"
    .end local v1    # "defKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "ambiguous":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 97
    sget-boolean v0, Lannotator/specification/IndexFileSpecification;->debug:Z

    if-eqz v0, :cond_2

    .line 98
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lannotator/specification/IndexFileSpecification;->indexFileName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Scene parsed from %s:%n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 99
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lannotator/specification/IndexFileSpecification;->scene:Lscenelib/annotations/el/AScene;

    invoke-virtual {v1}, Lscenelib/annotations/el/AScene;->unparse()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    :cond_2
    invoke-direct {p0}, Lannotator/specification/IndexFileSpecification;->parseScene()V

    .line 104
    iget-object v0, p0, Lannotator/specification/IndexFileSpecification;->insertions:Ljava/util/List;

    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while parsing index file"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 92
    .local v0, "e":Lorg/checkerframework/org/plumelib/util/FileIOException;
    throw v0
.end method
