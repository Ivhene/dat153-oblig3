.class public Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
.super Lorg/checkerframework/checker/index/upperbound/UBQualifier;
.source "UBQualifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/index/upperbound/UBQualifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LessThanLengthOf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$OffsetEquationFunction;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/checker/index/upperbound/OffsetEquation;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 281
    const-class v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/checker/index/upperbound/OffsetEquation;",
            ">;>;)V"
        }
    .end annotation

    .line 285
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;>;"
    invoke-direct {p0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;-><init>()V

    .line 286
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iput-object p1, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    .line 288
    return-void

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lorg/checkerframework/checker/index/upperbound/UBQualifier$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier$1;

    .line 281
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private addOffset(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 2
    .param p1, "newOffset"    # Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 850
    new-instance v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$3;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$3;-><init>(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)V

    .line 857
    .local v0, "addOffsetFunc":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$OffsetEquationFunction;
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->computeNewOffsets(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$OffsetEquationFunction;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    return-object v1
.end method

.method private computeNewOffsets(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$OffsetEquationFunction;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 7
    .param p1, "f"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$OffsetEquationFunction;

    .line 978
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 979
    .local v0, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;>;"
    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 980
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 981
    .local v3, "offsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 982
    .local v5, "eq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-interface {p1, v5}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$OffsetEquationFunction;->compute(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v6

    .line 983
    .local v6, "newEq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    if-eqz v6, :cond_0

    .line 984
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 986
    .end local v5    # "eq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    .end local v6    # "newEq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    :cond_0
    goto :goto_1

    .line 987
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 988
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;>;"
    .end local v3    # "offsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    :cond_2
    goto :goto_0

    .line 991
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 992
    sget-object v1, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v1

    .line 994
    :cond_4
    new-instance v1, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    invoke-direct {v1, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method private static containsSame(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/Set<",
            "TT;>;)Z"
        }
    .end annotation

    .line 462
    .local p0, "set1":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "set2":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private convertToAnnotation(Ljavax/annotation/processing/ProcessingEnvironment;Z)Ljavax/lang/model/element/AnnotationMirror;
    .locals 13
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p2, "buildSubstringIndexAnnotation"    # Z

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 401
    .local v0, "sortedSequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 402
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v1, "sequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v2, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 405
    .local v3, "isLTEq":Z
    const/4 v4, 0x1

    .line 406
    .local v4, "isLTOM":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 407
    .local v6, "sequence":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v7, "sortOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 409
    .local v9, "eq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_0

    sget-object v12, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->NEG_1:Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    invoke-virtual {v9, v12}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move v12, v10

    goto :goto_2

    :cond_0
    move v12, v11

    :goto_2
    move v3, v12

    .line 410
    if-eqz v4, :cond_1

    sget-object v12, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->ONE:Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    invoke-virtual {v9, v12}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_3

    :cond_1
    move v10, v11

    :goto_3
    move v4, v10

    .line 411
    invoke-virtual {v9}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    .end local v9    # "eq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    goto :goto_1

    .line 413
    :cond_2
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 414
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 415
    .local v9, "offset":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    .end local v9    # "offset":Ljava/lang/String;
    goto :goto_4

    .line 418
    .end local v6    # "sequence":Ljava/lang/String;
    .end local v7    # "sortOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    goto :goto_0

    .line 420
    :cond_4
    const-string v5, "offset"

    const-string v6, "value"

    if-eqz p2, :cond_5

    .line 421
    new-instance v7, Lorg/checkerframework/javacutil/AnnotationBuilder;

    const-class v8, Lorg/checkerframework/checker/index/qual/SubstringIndexFor;

    invoke-direct {v7, p1, v8}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 422
    .local v7, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    invoke-virtual {v7, v6, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 423
    invoke-virtual {v7, v5, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto :goto_5

    .line 424
    .end local v7    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    :cond_5
    if-eqz v3, :cond_6

    .line 425
    new-instance v5, Lorg/checkerframework/javacutil/AnnotationBuilder;

    const-class v7, Lorg/checkerframework/checker/index/qual/LTEqLengthOf;

    invoke-direct {v5, p1, v7}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    move-object v7, v5

    .line 426
    .restart local v7    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    invoke-virtual {v7, v6, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto :goto_5

    .line 427
    .end local v7    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    :cond_6
    if-eqz v4, :cond_7

    .line 428
    new-instance v5, Lorg/checkerframework/javacutil/AnnotationBuilder;

    const-class v7, Lorg/checkerframework/checker/index/qual/LTOMLengthOf;

    invoke-direct {v5, p1, v7}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    move-object v7, v5

    .line 429
    .restart local v7    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    invoke-virtual {v7, v6, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto :goto_5

    .line 431
    .end local v7    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    :cond_7
    new-instance v7, Lorg/checkerframework/javacutil/AnnotationBuilder;

    const-class v8, Lorg/checkerframework/checker/index/qual/LTLengthOf;

    invoke-direct {v7, p1, v8}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 432
    .restart local v7    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    invoke-virtual {v7, v6, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 433
    invoke-virtual {v7, v5, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 435
    :goto_5
    invoke-virtual {v7}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    return-object v5
.end method

.method private isSubtypeOffset(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/checkerframework/checker/index/upperbound/OffsetEquation;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/checker/index/upperbound/OffsetEquation;",
            ">;)Z"
        }
    .end annotation

    .line 517
    .local p1, "subOffsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    .local p2, "superOffsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 518
    .local v1, "superOffset":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    const/4 v2, 0x0

    .line 519
    .local v2, "oneIsSubtype":Z
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 520
    .local v4, "subOffset":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-virtual {v1, v4}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->lessThanOrEqual(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 521
    const/4 v2, 0x1

    .line 522
    goto :goto_2

    .line 524
    .end local v4    # "subOffset":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    :cond_0
    goto :goto_1

    .line 525
    :cond_1
    :goto_2
    if-nez v2, :cond_2

    .line 526
    const/4 v0, 0x0

    return v0

    .line 528
    .end local v1    # "superOffset":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    .end local v2    # "oneIsSubtype":Z
    :cond_2
    goto :goto_0

    .line 529
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private pluseOrMinusOffset(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;C)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 5
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "factory"    # Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;
    .param p3, "op"    # C

    .line 740
    const/16 v0, 0x2d

    if-eq p3, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 742
    :cond_1
    :goto_0
    invoke-static {p1, p2, p3}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetFromNode(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/javacutil/AnnotationProvider;C)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v0

    .line 743
    .local v0, "newOffset":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    const/4 v1, 0x0

    .line 744
    .local v1, "nodeOffsetQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    invoke-virtual {v0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->hasError()Z

    move-result v2

    if-nez v2, :cond_2

    .line 745
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->addOffset(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 748
    :cond_2
    nop

    .line 750
    invoke-virtual {p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v2

    .line 749
    invoke-static {p1, v2, p3}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetFromNodesValue(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;C)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v2

    .line 751
    .local v2, "valueOffset":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    const/4 v3, 0x0

    .line 752
    .local v3, "valueOffsetQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->hasError()Z

    move-result v4

    if-nez v4, :cond_3

    .line 753
    invoke-direct {p0, v2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->addOffset(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 756
    :cond_3
    if-nez v3, :cond_5

    .line 757
    if-nez v1, :cond_4

    .line 758
    sget-object v4, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v4

    .line 760
    :cond_4
    return-object v1

    .line 763
    :cond_5
    if-nez v1, :cond_6

    .line 764
    return-object v3

    .line 766
    :cond_6
    invoke-virtual {v1, v3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v4

    return-object v4
.end method

.method private simplifyOffsets(Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/checkerframework/checker/index/upperbound/OffsetEquation;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/checkerframework/checker/index/upperbound/OffsetEquation;",
            ">;"
        }
    .end annotation

    .line 691
    .local p1, "offsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 692
    .local v0, "newOff":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    const/4 v1, 0x0

    .line 693
    .local v1, "literal":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 694
    .local v3, "eq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-virtual {v3}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->isInt()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 695
    if-nez v1, :cond_0

    .line 696
    move-object v1, v3

    goto :goto_2

    .line 698
    :cond_0
    invoke-virtual {v1, v3}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->lessThanOrEqual(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    move-object v1, v4

    goto :goto_2

    .line 701
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 703
    .end local v3    # "eq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    :goto_2
    goto :goto_0

    .line 704
    :cond_3
    if-eqz v1, :cond_4

    .line 705
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_4
    return-object v0
.end method

.method private widenLub(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Ljava/util/Map;)V
    .locals 12
    .param p1, "other"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/checker/index/upperbound/OffsetEquation;",
            ">;>;)V"
        }
    .end annotation

    .line 626
    .local p2, "lubMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->containsSame(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    .line 627
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->containsSame(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 630
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 631
    .local v0, "remove":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljava/lang/String;Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 632
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 633
    .local v3, "sequence":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 634
    .local v4, "lubOffsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    iget-object v5, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 635
    .local v5, "thisOffsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    iget-object v6, p1, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 636
    .local v6, "otherOffsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v7

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v8

    if-ne v7, v8, :cond_6

    .line 637
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v7

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v8

    if-eq v7, v8, :cond_1

    goto :goto_4

    .line 640
    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 641
    .local v8, "lubEq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-virtual {v8}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->isInt()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 642
    invoke-static {v5}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->getIntOffsetEquation(Ljava/util/Set;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v9

    invoke-virtual {v9}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->getInt()I

    move-result v9

    .line 643
    .local v9, "thisInt":I
    invoke-static {v6}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->getIntOffsetEquation(Ljava/util/Set;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v10

    invoke-virtual {v10}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->getInt()I

    move-result v10

    .line 644
    .local v10, "otherInt":I
    if-eq v9, v10, :cond_2

    .line 645
    invoke-static {v3, v8}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    .end local v9    # "thisInt":I
    .end local v10    # "otherInt":I
    :cond_2
    :goto_2
    goto :goto_3

    :cond_3
    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    .line 652
    .end local v8    # "lubEq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    :goto_3
    goto :goto_1

    .line 650
    .restart local v8    # "lubEq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    :cond_4
    return-void

    .line 653
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;>;"
    .end local v3    # "sequence":Ljava/lang/String;
    .end local v4    # "lubOffsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    .end local v5    # "thisOffsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    .end local v6    # "otherOffsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    .end local v8    # "lubEq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    :cond_5
    goto :goto_0

    .line 638
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;>;"
    .restart local v3    # "sequence":Ljava/lang/String;
    .restart local v4    # "lubOffsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    .restart local v5    # "thisOffsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    .restart local v6    # "otherOffsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    :cond_6
    :goto_4
    return-void

    .line 654
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;>;"
    .end local v3    # "sequence":Ljava/lang/String;
    .end local v4    # "lubOffsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    .end local v5    # "thisOffsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    .end local v6    # "otherOffsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/javacutil/Pair;

    .line 655
    .local v2, "pair":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljava/lang/String;Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    iget-object v3, v2, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 656
    .local v3, "offsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    iget-object v4, v2, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 657
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 658
    iget-object v4, v2, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    invoke-interface {p2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    .end local v2    # "pair":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljava/lang/String;Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    .end local v3    # "offsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    :cond_8
    goto :goto_5

    .line 661
    :cond_9
    return-void

    .line 628
    .end local v0    # "remove":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljava/lang/String;Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;>;"
    :cond_a
    :goto_6
    return-void
.end method


# virtual methods
.method public convertToAnnotation(Ljavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 371
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->convertToAnnotation(Ljavax/annotation/processing/ProcessingEnvironment;Z)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method public convertToSubstringIndexAnnotation(Ljavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 385
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->convertToAnnotation(Ljavax/annotation/processing/ProcessingEnvironment;Z)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method public divide(I)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 2
    .param p1, "divisor"    # I

    .line 872
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 873
    return-object p0

    .line 874
    :cond_0
    if-le p1, v0, :cond_1

    .line 875
    new-instance v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$4;

    invoke-direct {v0, p0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$4;-><init>(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;)V

    .line 885
    .local v0, "divideFunc":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$OffsetEquationFunction;
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->computeNewOffsets(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$OffsetEquationFunction;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    return-object v1

    .line 887
    .end local v0    # "divideFunc":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$OffsetEquationFunction;
    :cond_1
    sget-object v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 440
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 441
    return v0

    .line 443
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 447
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 448
    .local v2, "qualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v4, v2, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->containsSame(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 449
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 450
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;>;"
    iget-object v5, v2, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 451
    .local v5, "otherOffset":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 452
    .local v6, "thisOffset":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    invoke-static {v5, v6}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->containsSame(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 453
    return v1

    .line 455
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;>;"
    .end local v5    # "otherOffset":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    .end local v6    # "thisOffset":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    :cond_2
    goto :goto_0

    .line 456
    :cond_3
    return v0

    .line 458
    :cond_4
    return v1

    .line 444
    .end local v2    # "qualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    :cond_5
    :goto_1
    return v1
.end method

.method public getSequences()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 927
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 8
    .param p1, "other"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    .line 665
    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    return-object p0

    .line 667
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isBottom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    return-object p1

    .line 670
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 672
    .local v0, "otherLtl":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 673
    .local v1, "sequences":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 675
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 676
    .local v2, "glbMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 677
    .local v4, "sequence":Ljava/lang/String;
    iget-object v5, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 678
    .local v5, "glb":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    iget-object v6, v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 679
    .local v6, "otherglb":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    if-nez v5, :cond_2

    .line 680
    move-object v5, v6

    goto :goto_1

    .line 681
    :cond_2
    if-eqz v6, :cond_3

    .line 682
    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 684
    :cond_3
    :goto_1
    invoke-direct {p0, v5}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->simplifyOffsets(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    .end local v4    # "sequence":Ljava/lang/String;
    .end local v5    # "glb":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    .end local v6    # "otherglb":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    goto :goto_0

    .line 686
    :cond_4
    new-instance v3, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    invoke-direct {v3, v2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;-><init>(Ljava/util/Map;)V

    return-object v3
.end method

.method public hasSequenceWithOffset(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .line 292
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 293
    .local v0, "offsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    if-nez v0, :cond_0

    .line 294
    const/4 v1, 0x0

    return v1

    .line 296
    :cond_0
    invoke-static {p2}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetForInt(I)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hasSequenceWithOffset(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "offset"    # Ljava/lang/String;

    .line 301
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 302
    .local v0, "offsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    if-nez v0, :cond_0

    .line 303
    const/4 v1, 0x0

    return v1

    .line 305
    :cond_0
    invoke-static {p2}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetFromJavaExpression(Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v1

    .line 306
    .local v1, "target":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 467
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isLessThanLengthOf(Ljava/lang/String;)Z
    .locals 6
    .param p1, "sequence"    # Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 344
    .local v0, "offsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 345
    return v1

    .line 347
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 348
    return v3

    .line 350
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 351
    .local v4, "offset":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-virtual {v4}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->isNonNegative()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 352
    return v3

    .line 354
    .end local v4    # "offset":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    :cond_2
    goto :goto_0

    .line 355
    :cond_3
    return v1
.end method

.method public isLessThanLengthOfAny(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 328
    .local p1, "sequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 329
    .local v1, "sequence":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->isLessThanLengthOf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    const/4 v0, 0x1

    return v0

    .line 332
    .end local v1    # "sequence":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 333
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isLessThanLengthQualifier()Z
    .locals 1

    .line 472
    const/4 v0, 0x1

    return v0
.end method

.method public isLessThanOrEqualTo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sequence"    # Ljava/lang/String;

    .line 317
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->isLessThanLengthOf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->hasSequenceWithOffset(Ljava/lang/String;I)Z

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

.method public isSubtype(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Z
    .locals 9
    .param p1, "superType"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    .line 487
    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isUnknown()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 488
    return v1

    .line 489
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isBottom()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 490
    return v2

    .line 493
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 495
    .local v0, "superTypeLTL":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v4, v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 496
    return v2

    .line 498
    :cond_2
    iget-object v3, v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 499
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 500
    .local v5, "sequence":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 501
    .local v6, "superOffsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    iget-object v7, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 503
    .local v7, "subOffsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    invoke-direct {p0, v7, v6}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->isSubtypeOffset(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 504
    return v2

    .line 506
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;>;"
    .end local v5    # "sequence":Ljava/lang/String;
    .end local v6    # "superOffsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    .end local v7    # "subOffsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    :cond_3
    goto :goto_0

    .line 508
    :cond_4
    return v1
.end method

.method public isValidReplacement(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;)Z
    .locals 3
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "replacementSequence"    # Ljava/lang/String;
    .param p3, "other"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 910
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 911
    .local v0, "offsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 912
    return v1

    .line 914
    :cond_0
    iget-object v2, p3, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 915
    .local v2, "otherOffsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    if-nez v2, :cond_1

    .line 916
    return v1

    .line 918
    :cond_1
    invoke-static {v0, v2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->containsSame(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v1

    return v1
.end method

.method public isValuePlusOffsetLessThanMinLen(Ljava/lang/String;JI)Z
    .locals 8
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "minlen"    # I

    .line 891
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 892
    .local v0, "offsets":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 893
    return v1

    .line 895
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 896
    .local v3, "offset":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-virtual {v3}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->isInt()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 898
    int-to-long v4, p4

    invoke-virtual {v3}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->getInt()I

    move-result v2

    int-to-long v6, v2

    sub-long/2addr v4, v6

    cmp-long v2, v4, p2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 900
    .end local v3    # "offset":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    :cond_2
    goto :goto_0

    .line 901
    :cond_3
    return v1
.end method

.method public lub(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 13
    .param p1, "other"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    .line 549
    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    return-object p1

    .line 551
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isBottom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    return-object p0

    .line 554
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 556
    .local v0, "otherLtl":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 557
    .local v1, "sequences":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 559
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 560
    .local v2, "lubMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 561
    .local v4, "sequence":Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 562
    .local v5, "lub":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    iget-object v6, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 563
    .local v6, "offsets1":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    iget-object v7, v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 564
    .local v7, "offsets2":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 565
    .local v9, "offset1":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 566
    .local v11, "offset2":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-virtual {v11, v9}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->lessThanOrEqual(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 567
    invoke-interface {v5, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 568
    :cond_2
    invoke-virtual {v9, v11}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->lessThanOrEqual(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 569
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 571
    .end local v11    # "offset2":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    :cond_3
    :goto_3
    goto :goto_2

    .line 572
    .end local v9    # "offset1":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    :cond_4
    goto :goto_1

    .line 573
    :cond_5
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 574
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    .end local v4    # "sequence":Ljava/lang/String;
    .end local v5    # "lub":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    .end local v6    # "offsets1":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    .end local v7    # "offsets2":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    :cond_6
    goto :goto_0

    .line 577
    :cond_7
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 578
    sget-object v3, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v3

    .line 580
    :cond_8
    new-instance v3, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    invoke-direct {v3, v2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;-><init>(Ljava/util/Map;)V

    return-object v3
.end method

.method public minusOffset(I)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 2
    .param p1, "value"    # I

    .line 793
    neg-int v0, p1

    invoke-static {v0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetForInt(I)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v0

    .line 794
    .local v0, "newOffset":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->addOffset(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    return-object v1
.end method

.method public minusOffset(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "factory"    # Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 735
    const/16 v0, 0x2d

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->pluseOrMinusOffset(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;C)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    return-object v0
.end method

.method public plusOffset(I)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 2
    .param p1, "value"    # I

    .line 780
    invoke-static {p1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetForInt(I)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v0

    .line 781
    .local v0, "newOffset":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->addOffset(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    return-object v1
.end method

.method public plusOffset(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "factory"    # Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 721
    const/16 v0, 0x2b

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->pluseOrMinusOffset(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;C)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    return-object v0
.end method

.method public removeOffset(Ljava/lang/String;I)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 9
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .line 932
    invoke-static {p2}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetForInt(I)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v0

    .line 933
    .local v0, "offsetEq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .local v1, "sequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 935
    .local v2, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 936
    .local v4, "seq":Ljava/lang/String;
    iget-object v5, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 937
    .local v5, "offsetSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 938
    .local v7, "off":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7, v0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 939
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    invoke-virtual {v7}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 942
    .end local v7    # "off":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    :cond_0
    goto :goto_1

    .line 943
    .end local v4    # "seq":Ljava/lang/String;
    .end local v5    # "offsetSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    :cond_1
    goto :goto_0

    .line 944
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 945
    sget-object v3, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v3

    .line 947
    :cond_3
    invoke-static {v1, v2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljava/util/List;Ljava/util/List;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v3

    return-object v3
.end method

.method public removeSequenceLengthAccess(Ljava/util/List;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/checkerframework/checker/index/upperbound/UBQualifier;"
        }
    .end annotation

    .line 807
    .local p1, "sequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    sget-object v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v0

    .line 810
    :cond_0
    new-instance v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$1;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$1;-><init>(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Ljava/util/List;)V

    .line 817
    .local v0, "removeSequenceLengthsFunc":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$OffsetEquationFunction;
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->computeNewOffsets(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$OffsetEquationFunction;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    return-object v1
.end method

.method public removeSequenceLengthAccessAndNeg1(Ljava/util/List;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/checkerframework/checker/index/upperbound/UBQualifier;"
        }
    .end annotation

    .line 829
    .local p1, "sequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    sget-object v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v0

    .line 832
    :cond_0
    new-instance v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$2;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$2;-><init>(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Ljava/util/List;)V

    .line 846
    .local v0, "removeSequenceLenFunc":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$OffsetEquationFunction;
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->computeNewOffsets(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$OffsetEquationFunction;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LessThanLengthOf{map="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public widenUpperBound(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 3
    .param p1, "obj"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    .line 585
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->lub(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    .line 586
    .local v0, "lub":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isLessThanLengthQualifier()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isLessThanLengthQualifier()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 589
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    iget-object v1, v1, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->map:Ljava/util/Map;

    .line 590
    .local v1, "lubMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;>;"
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    invoke-direct {p0, v2, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->widenLub(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Ljava/util/Map;)V

    .line 591
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 592
    sget-object v2, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v2

    .line 594
    :cond_1
    new-instance v2, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    invoke-direct {v2, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;-><init>(Ljava/util/Map;)V

    return-object v2

    .line 587
    .end local v1    # "lubMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;>;"
    :cond_2
    :goto_0
    return-object v0
.end method
