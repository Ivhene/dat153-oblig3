.class public Lorg/checkerframework/javacutil/AnnotationUtils;
.super Ljava/lang/Object;
.source "AnnotationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/javacutil/AnnotationUtils$NoSuchElementException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Class AnnotationUtils cannot be instantiated."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static final annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;
    .locals 3
    .param p0, "annotation"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 58
    instance-of v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;

    if-eqz v0, :cond_0

    .line 59
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;

    iget-object v0, v0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;->annotationName:Ljava/lang/String;

    return-object v0

    .line 61
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    .line 62
    .local v0, "annoType":Ljavax/lang/model/type/DeclaredType;
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    .line 63
    .local v1, "elm":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "name":Ljava/lang/String;
    return-object v2
.end method

.method public static annotationOrdering()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    new-instance v0, Lorg/checkerframework/framework/util/AnnotationMirrorMap$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/AnnotationMirrorMap$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public static areSame(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 9
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

    .line 163
    .local p0, "c1":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p1, "c2":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 164
    return v2

    .line 166
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 167
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0

    .line 171
    :cond_1
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    .line 172
    .local v0, "s1":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v3

    .line 173
    .local v3, "s2":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0, p0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 174
    invoke-interface {v3, p1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 175
    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 176
    .local v4, "iter1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 178
    .local v5, "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/lang/model/element/AnnotationMirror;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 179
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/AnnotationMirror;

    .line 180
    .local v6, "anno1":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/element/AnnotationMirror;

    .line 181
    .local v7, "anno2":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v6, v7}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 182
    return v2

    .line 184
    .end local v6    # "anno1":Ljavax/lang/model/element/AnnotationMirror;
    .end local v7    # "anno2":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    goto :goto_0

    .line 185
    :cond_3
    return v1
.end method

.method public static areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p0, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 79
    if-ne p0, p1, :cond_0

    .line 80
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_0
    invoke-static {p0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    const/4 v0, 0x0

    return v0

    .line 95
    :cond_1
    invoke-static {p0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->sameElementValues(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method public static areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z
    .locals 3
    .param p0, "am"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 148
    .local p1, "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "canonicalName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 150
    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 149
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness): assumption"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z
    .locals 1
    .param p0, "am"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "aname"    # Ljava/lang/String;

    .line 136
    invoke-static {p0}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 3
    .param p0, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 108
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 109
    return v0

    .line 111
    :cond_0
    if-eqz p0, :cond_4

    .line 114
    if-eqz p1, :cond_3

    .line 118
    instance-of v1, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;

    if-eqz v1, :cond_2

    instance-of v1, p1, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;

    if-eqz v1, :cond_2

    .line 120
    move-object v1, p0

    check-cast v1, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;

    iget-object v1, v1, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;->annotationName:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;

    iget-object v2, v2, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;->annotationName:Ljava/lang/String;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 124
    :cond_2
    invoke-static {p0}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 115
    :cond_3
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "Unexpected null second argument to areSameByName"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_4
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "Unexpected null first argument to areSameByName"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compareAnnotationMirrors(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)I
    .locals 8
    .param p0, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 322
    invoke-static {p0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-static {p0}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 327
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v0

    .line 328
    .local v0, "vals1":Ljava/util/Map;, "Ljava/util/Map<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v1

    .line 329
    .local v1, "vals2":Ljava/util/Map;, "Ljava/util/Map<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    new-instance v2, Ljava/util/TreeSet;

    new-instance v3, Lorg/checkerframework/javacutil/AnnotationUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/javacutil/AnnotationUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 330
    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 331
    .local v2, "sortedElements":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/ExecutableElement;>;"
    nop

    .line 332
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 331
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 334
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/ExecutableElement;

    .line 335
    .local v4, "meth":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/AnnotationValue;

    .line 336
    .local v5, "aval1":Ljavax/lang/model/element/AnnotationValue;
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/AnnotationValue;

    .line 337
    .local v6, "aval2":Ljavax/lang/model/element/AnnotationValue;
    if-nez v5, :cond_1

    .line 338
    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getDefaultValue()Ljavax/lang/model/element/AnnotationValue;

    move-result-object v5

    .line 340
    :cond_1
    if-nez v6, :cond_2

    .line 341
    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getDefaultValue()Ljavax/lang/model/element/AnnotationValue;

    move-result-object v6

    .line 343
    :cond_2
    invoke-static {v5, v6}, Lorg/checkerframework/javacutil/AnnotationUtils;->compareAnnotationValue(Ljavax/lang/model/element/AnnotationValue;Ljavax/lang/model/element/AnnotationValue;)I

    move-result v7

    .line 344
    .local v7, "result":I
    if-eqz v7, :cond_3

    .line 345
    return v7

    .line 347
    .end local v4    # "meth":Ljavax/lang/model/element/ExecutableElement;
    .end local v5    # "aval1":Ljavax/lang/model/element/AnnotationValue;
    .end local v6    # "aval2":Ljavax/lang/model/element/AnnotationValue;
    .end local v7    # "result":I
    :cond_3
    goto :goto_0

    .line 348
    :cond_4
    const/4 v3, 0x0

    return v3
.end method

.method private static compareAnnotationValue(Ljavax/lang/model/element/AnnotationValue;Ljavax/lang/model/element/AnnotationValue;)I
    .locals 2
    .param p0, "av1"    # Ljavax/lang/model/element/AnnotationValue;
    .param p1, "av2"    # Ljavax/lang/model/element/AnnotationValue;

    .line 359
    if-ne p0, p1, :cond_0

    .line 360
    const/4 v0, 0x0

    return v0

    .line 361
    :cond_0
    if-nez p0, :cond_1

    .line 362
    const/4 v0, -0x1

    return v0

    .line 363
    :cond_1
    if-nez p1, :cond_2

    .line 364
    const/4 v0, 0x1

    return v0

    .line 366
    :cond_2
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->compareAnnotationValueValue(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static compareAnnotationValueValue(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .param p0, "val1"    # Ljava/lang/Object;
    .param p1, "val2"    # Ljava/lang/Object;

    .line 376
    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    .line 377
    return v0

    .line 378
    :cond_0
    if-nez p0, :cond_1

    .line 379
    const/4 v0, -0x1

    return v0

    .line 380
    :cond_1
    if-nez p1, :cond_2

    .line 381
    const/4 v0, 0x1

    return v0

    .line 386
    :cond_2
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_6

    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_6

    .line 387
    move-object v1, p0

    check-cast v1, Ljava/util/List;

    .line 388
    .local v1, "list1":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    .line 389
    .local v2, "list2":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 390
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v0, v3

    return v0

    .line 395
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 396
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 397
    .local v4, "v1":Ljava/lang/Object;
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 398
    .local v5, "v2":Ljava/lang/Object;
    invoke-static {v4, v5}, Lorg/checkerframework/javacutil/AnnotationUtils;->compareAnnotationValueValue(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 399
    .local v6, "result":I
    if-eqz v6, :cond_4

    .line 400
    return v6

    .line 395
    .end local v4    # "v1":Ljava/lang/Object;
    .end local v5    # "v2":Ljava/lang/Object;
    .end local v6    # "result":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 403
    .end local v3    # "i":I
    :cond_5
    return v0

    .line 404
    .end local v1    # "list1":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "list2":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_6
    instance-of v1, p0, Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v1, :cond_7

    instance-of v1, p1, Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v1, :cond_7

    .line 405
    move-object v0, p0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    move-object v1, p1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->compareAnnotationMirrors(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)I

    move-result v0

    return v0

    .line 406
    :cond_7
    instance-of v1, p0, Ljavax/lang/model/element/AnnotationValue;

    if-eqz v1, :cond_8

    instance-of v1, p1, Ljavax/lang/model/element/AnnotationValue;

    if-eqz v1, :cond_8

    .line 409
    move-object v0, p0

    check-cast v0, Ljavax/lang/model/element/AnnotationValue;

    move-object v1, p1

    check-cast v1, Ljavax/lang/model/element/AnnotationValue;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->compareAnnotationValue(Ljavax/lang/model/element/AnnotationValue;Ljavax/lang/model/element/AnnotationValue;)I

    move-result v0

    return v0

    .line 412
    :cond_8
    instance-of v1, p0, Lcom/sun/tools/javac/code/Type$ClassType;

    if-eqz v1, :cond_9

    instance-of v1, p1, Lcom/sun/tools/javac/code/Type$ClassType;

    if-eqz v1, :cond_9

    .line 414
    move-object v1, p0

    check-cast v1, Lcom/sun/tools/javac/code/Type$ClassType;

    move-object v2, p1

    check-cast v2, Lcom/sun/tools/javac/code/Type$ClassType;

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/TypesUtils;->areSameDeclaredTypes(Lcom/sun/tools/javac/code/Type$ClassType;Lcom/sun/tools/javac/code/Type$ClassType;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 415
    return v0

    .line 418
    :cond_9
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 419
    return v0

    .line 421
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 422
    .local v0, "result":I
    if-nez v0, :cond_b

    .line 423
    const/4 v0, -0x1

    .line 425
    :cond_b
    return v0
.end method

.method public static containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")Z"
        }
    .end annotation

    .line 198
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-static {p0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->getSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static containsSameByClass(Ljava/util/Collection;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 229
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p1, "anno":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->getAnnotationByClass(Ljava/util/Collection;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static containsSameByName(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 1
    .param p1, "anno"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 260
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-static {p0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->getAnnotationByName(Ljava/util/Collection;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static containsSameByName(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")Z"
        }
    .end annotation

    .line 291
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-static {p0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->getSameByName(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static createAnnotationMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "TV;>;"
        }
    .end annotation

    .line 454
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lorg/checkerframework/framework/util/AnnotationMirrorMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static createAnnotationSet()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 466
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/checkerframework/framework/util/AnnotationMirrorMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static getAnnotationByClass(Ljava/util/Collection;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 242
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p1, "anno":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 243
    .local v1, "an":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v1, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    return-object v1

    .line 246
    .end local v1    # "an":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 247
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAnnotationByName(Ljava/util/Collection;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "anno"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 273
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 274
    .local v1, "an":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v1, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    return-object v1

    .line 277
    .end local v1    # "an":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 278
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getElementKindsForElementType(Ljava/lang/annotation/ElementType;)Ljava/util/EnumSet;
    .locals 3
    .param p0, "elementType"    # Ljava/lang/annotation/ElementType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/ElementType;",
            ")",
            "Ljava/util/EnumSet<",
            "Ljavax/lang/model/element/ElementKind;",
            ">;"
        }
    .end annotation

    .line 504
    sget-object v0, Lorg/checkerframework/javacutil/AnnotationUtils$1;->$SwitchMap$java$lang$annotation$ElementType:[I

    invoke-virtual {p0}, Ljava/lang/annotation/ElementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 531
    invoke-virtual {p0}, Ljava/lang/annotation/ElementType;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MODULE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    invoke-static {v1}, Ljavax/lang/model/element/ElementKind;->valueOf(Ljava/lang/String;)Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 527
    :pswitch_0
    const-class v0, Ljavax/lang/model/element/ElementKind;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 525
    :pswitch_1
    sget-object v0, Ljavax/lang/model/element/ElementKind;->TYPE_PARAMETER:Ljavax/lang/model/element/ElementKind;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 523
    :pswitch_2
    sget-object v0, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 521
    :pswitch_3
    sget-object v0, Ljavax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Ljavax/lang/model/element/ElementKind;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 516
    :pswitch_4
    sget-object v0, Ljavax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Ljavax/lang/model/element/ElementKind;

    sget-object v1, Ljavax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Ljavax/lang/model/element/ElementKind;

    sget-object v2, Ljavax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Ljavax/lang/model/element/ElementKind;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 514
    :pswitch_5
    sget-object v0, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 512
    :pswitch_6
    sget-object v0, Ljavax/lang/model/element/ElementKind;->PARAMETER:Ljavax/lang/model/element/ElementKind;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 510
    :pswitch_7
    sget-object v0, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 508
    :pswitch_8
    sget-object v0, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    sget-object v1, Ljavax/lang/model/element/ElementKind;->ENUM_CONSTANT:Ljavax/lang/model/element/ElementKind;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 506
    :pswitch_9
    invoke-static {}, Lorg/checkerframework/javacutil/ElementUtils;->classElementKinds()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 534
    :cond_0
    invoke-virtual {p0}, Ljava/lang/annotation/ElementType;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RECORD_COMPONENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    invoke-static {v1}, Ljavax/lang/model/element/ElementKind;->valueOf(Ljava/lang/String;)Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 537
    :cond_1
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized ElementType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getElementKindsForTarget(Ljava/lang/annotation/Target;)Ljava/util/EnumSet;
    .locals 6
    .param p0, "target"    # Ljava/lang/annotation/Target;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Target;",
            ")",
            "Ljava/util/EnumSet<",
            "Ljavax/lang/model/element/ElementKind;",
            ">;"
        }
    .end annotation

    .line 484
    if-nez p0, :cond_0

    .line 486
    const-class v0, Ljavax/lang/model/element/ElementKind;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 488
    :cond_0
    const-class v0, Ljavax/lang/model/element/ElementKind;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 489
    .local v0, "eleKinds":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljavax/lang/model/element/ElementKind;>;"
    invoke-interface {p0}, Ljava/lang/annotation/Target;->value()[Ljava/lang/annotation/ElementType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 490
    .local v4, "elementType":Ljava/lang/annotation/ElementType;
    invoke-static {v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementKindsForElementType(Ljava/lang/annotation/ElementType;)Ljava/util/EnumSet;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 489
    .end local v4    # "elementType":Ljava/lang/annotation/ElementType;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 492
    :cond_1
    return-object v0
.end method

.method public static getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 4
    .param p0, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .param p3, "useDefaults"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 657
    .local p2, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p3, :cond_0

    .line 658
    invoke-static {p0}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValuesWithDefaults(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/Map;

    move-result-object v0

    .local v0, "valmap":Ljava/util/Map;, "Ljava/util/Map<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    goto :goto_0

    .line 660
    .end local v0    # "valmap":Ljava/util/Map;, "Ljava/util/Map<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v0

    .line 662
    .restart local v0    # "valmap":Ljava/util/Map;, "Ljava/util/Map<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    .line 663
    .local v2, "elem":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-interface {v3, p1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 664
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationValue;

    .line 665
    .local v1, "val":Ljavax/lang/model/element/AnnotationValue;
    invoke-interface {v1}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 667
    .end local v1    # "val":Ljavax/lang/model/element/AnnotationValue;
    .end local v2    # "elem":Ljavax/lang/model/element/ExecutableElement;
    :cond_1
    goto :goto_1

    .line 668
    :cond_2
    new-instance v1, Lorg/checkerframework/javacutil/AnnotationUtils$NoSuchElementException;

    .line 671
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    filled-new-array {p1, p0, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 669
    const-string v3, "No element with name \'%s\' in annotation %s; useDefaults=%s, valmap.keySet()=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/AnnotationUtils$NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;
    .locals 5
    .param p0, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .param p3, "useDefaults"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 755
    .local p2, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/util/List;

    invoke-static {p0, p1, v0, p3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 756
    .local v0, "la":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationValue;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 757
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationValue;

    .line 758
    .local v3, "a":Ljavax/lang/model/element/AnnotationValue;
    invoke-interface {v3}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    .end local v3    # "a":Ljavax/lang/model/element/AnnotationValue;
    goto :goto_0

    .line 760
    :cond_0
    return-object v1
.end method

.method public static getElementValueClassName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Z)Ljavax/lang/model/element/Name;
    .locals 2
    .param p0, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .param p2, "useDefaults"    # Z

    .line 806
    const-class v0, Lcom/sun/tools/javac/code/Type$ClassType;

    invoke-static {p0, p1, v0, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 808
    .local v0, "ct":Lcom/sun/tools/javac/code/Type$ClassType;
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$ClassType;->asElement()Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    return-object v1
.end method

.method public static getElementValueClassNames(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Z)Ljava/util/List;
    .locals 5
    .param p0, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "annoElement"    # Ljava/lang/CharSequence;
    .param p2, "useDefaults"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/lang/CharSequence;",
            "Z)",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Name;",
            ">;"
        }
    .end annotation

    .line 823
    const-class v0, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 824
    invoke-static {p0, p1, v0, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 825
    .local v0, "la":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Type$ClassType;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/Name;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 827
    .local v3, "classType":Lcom/sun/tools/javac/code/Type$ClassType;
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type$ClassType;->asElement()Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    .end local v3    # "classType":Lcom/sun/tools/javac/code/Type$ClassType;
    goto :goto_0

    .line 829
    :cond_0
    return-object v1
.end method

.method public static getElementValueEnum(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Enum;
    .locals 2
    .param p0, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .param p3, "useDefaults"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 728
    .local p2, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-static {p0, p1, v0, p3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 729
    .local v0, "vs":Lcom/sun/tools/javac/code/Symbol$VarSymbol;
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getSimpleName()Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    .line 730
    .local v1, "value":Ljava/lang/Enum;, "TT;"
    return-object v1
.end method

.method public static getElementValueEnumArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;
    .locals 5
    .param p0, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .param p3, "useDefaults"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 782
    .local p2, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/util/List;

    invoke-static {p0, p1, v0, p3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 783
    .local v0, "la":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationValue;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 784
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationValue;

    .line 785
    .local v3, "a":Ljavax/lang/model/element/AnnotationValue;
    invoke-interface {v3}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    .line 786
    .local v4, "value":Ljava/lang/Enum;, "TT;"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    .end local v3    # "a":Ljavax/lang/model/element/AnnotationValue;
    .end local v4    # "value":Ljava/lang/Enum;, "TT;"
    goto :goto_0

    .line 788
    :cond_0
    return-object v1
.end method

.method public static getElementValueOrNull(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 2
    .param p0, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .param p3, "useDefaults"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 706
    .local p2, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lorg/checkerframework/javacutil/AnnotationUtils$NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Lorg/checkerframework/javacutil/AnnotationUtils$NoSuchElementException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getElementValuesWithDefaults(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/Map;
    .locals 4
    .param p0, "ad"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/Map<",
            "+",
            "Ljavax/lang/model/element/ExecutableElement;",
            "+",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;"
        }
    .end annotation

    .line 557
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 558
    .local v0, "valMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/AnnotationValue;>;"
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 559
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 562
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    .line 563
    .local v2, "meth":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getDefaultValue()Ljavax/lang/model/element/AnnotationValue;

    move-result-object v3

    .line 564
    .local v3, "defaultValue":Ljavax/lang/model/element/AnnotationValue;
    if-eqz v3, :cond_1

    .line 565
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    .end local v2    # "meth":Ljavax/lang/model/element/ExecutableElement;
    .end local v3    # "defaultValue":Ljavax/lang/model/element/AnnotationValue;
    :cond_1
    goto :goto_0

    .line 568
    :cond_2
    return-object v0
.end method

.method public static getExplicitAnnotationsOnConstructorResult(Lcom/sun/source/tree/MethodTree;)Ljava/util/Set;
    .locals 4
    .param p0, "constructorDeclaration"    # Lcom/sun/source/tree/MethodTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/MethodTree;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 870
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    .line 871
    .local v0, "annotationSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p0}, Lcom/sun/source/tree/MethodTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v1

    .line 872
    .local v1, "modifiersTree":Lcom/sun/source/tree/ModifiersTree;
    if-eqz v1, :cond_0

    .line 873
    invoke-interface {v1}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v2

    .line 874
    .local v2, "annotationTrees":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/AnnotationTree;>;"
    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->annotationsFromTypeAnnotationTrees(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 876
    .end local v2    # "annotationTrees":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/AnnotationTree;>;"
    :cond_0
    return-object v0
.end method

.method public static getSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 211
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 212
    .local v1, "an":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v1, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    return-object v1

    .line 215
    .end local v1    # "an":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 216
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSameByName(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 305
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 306
    .local v1, "an":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v1, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    return-object v1

    .line 309
    .end local v1    # "an":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 310
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "elementName"    # Ljava/lang/CharSequence;

    .line 626
    nop

    .line 627
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v0

    .line 628
    .local v0, "valmap":Ljava/util/Map;, "Ljava/util/Map<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    .line 629
    .local v2, "elem":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-interface {v3, p1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 630
    const/4 v1, 0x1

    return v1

    .line 632
    .end local v2    # "elem":Ljavax/lang/model/element/ExecutableElement;
    :cond_0
    goto :goto_0

    .line 633
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static hasInheritedMeta(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 2
    .param p0, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 476
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    const-class v1, Ljava/lang/annotation/Inherited;

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasTypeQualifierElementTypes([Ljava/lang/annotation/ElementType;Ljava/lang/Class;)Z
    .locals 6
    .param p0, "elements"    # [Ljava/lang/annotation/ElementType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/annotation/ElementType;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 912
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 914
    .local v0, "hasTypeUse":Z
    const/4 v1, 0x0

    .line 916
    .local v1, "otherElementType":Ljava/lang/annotation/ElementType;
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p0, v3

    .line 917
    .local v4, "element":Ljava/lang/annotation/ElementType;
    sget-object v5, Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;

    if-ne v4, v5, :cond_0

    .line 918
    const/4 v0, 0x1

    goto :goto_1

    .line 919
    :cond_0
    sget-object v5, Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;

    if-eq v4, v5, :cond_1

    .line 920
    move-object v1, v4

    .line 922
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_2

    .line 923
    :cond_2
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@Target meta-annotation should not contain both TYPE_USE and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", for annotation "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 927
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 916
    .end local v4    # "element":Ljava/lang/annotation/ElementType;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 931
    :cond_4
    return v0
.end method

.method public static isDeclarationAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 9
    .param p0, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 887
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 888
    .local v0, "elem":Ljavax/lang/model/element/TypeElement;
    const-class v1, Ljava/lang/annotation/Target;

    invoke-interface {v0, v1}, Ljavax/lang/model/element/TypeElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Target;

    .line 889
    .local v1, "t":Ljava/lang/annotation/Target;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 890
    return v2

    .line 893
    :cond_0
    invoke-interface {v1}, Ljava/lang/annotation/Target;->value()[Ljava/lang/annotation/ElementType;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 894
    .local v7, "elementType":Ljava/lang/annotation/ElementType;
    sget-object v8, Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;

    if-ne v7, v8, :cond_1

    .line 895
    return v5

    .line 893
    .end local v7    # "elementType":Ljava/lang/annotation/ElementType;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 898
    :cond_2
    return v2
.end method

.method public static sameAnnotationValue(Ljavax/lang/model/element/AnnotationValue;Ljavax/lang/model/element/AnnotationValue;)Z
    .locals 1
    .param p0, "av1"    # Ljavax/lang/model/element/AnnotationValue;
    .param p1, "av2"    # Ljavax/lang/model/element/AnnotationValue;

    .line 614
    invoke-static {p0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->compareAnnotationValue(Ljavax/lang/model/element/AnnotationValue;Ljavax/lang/model/element/AnnotationValue;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static sameElementValues(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 8
    .param p0, "am1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "am2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 580
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 581
    return v0

    .line 584
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v1

    .line 585
    .local v1, "vals1":Ljava/util/Map;, "Ljava/util/Map<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v2

    .line 587
    .local v2, "vals2":Ljava/util/Map;, "Ljava/util/Map<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    nop

    .line 588
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    move-result-object v3

    .line 587
    invoke-static {v3}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/ExecutableElement;

    .line 589
    .local v4, "meth":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/AnnotationValue;

    .line 590
    .local v5, "aval1":Ljavax/lang/model/element/AnnotationValue;
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/AnnotationValue;

    .line 591
    .local v6, "aval2":Ljavax/lang/model/element/AnnotationValue;
    if-nez v5, :cond_1

    .line 592
    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getDefaultValue()Ljavax/lang/model/element/AnnotationValue;

    move-result-object v5

    .line 594
    :cond_1
    if-nez v6, :cond_2

    .line 595
    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getDefaultValue()Ljavax/lang/model/element/AnnotationValue;

    move-result-object v6

    .line 597
    :cond_2
    invoke-static {v5, v6}, Lorg/checkerframework/javacutil/AnnotationUtils;->sameAnnotationValue(Ljavax/lang/model/element/AnnotationValue;Ljavax/lang/model/element/AnnotationValue;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 598
    const/4 v0, 0x0

    return v0

    .line 600
    .end local v4    # "meth":Ljavax/lang/model/element/ExecutableElement;
    .end local v5    # "aval1":Ljavax/lang/model/element/AnnotationValue;
    .end local v6    # "aval2":Ljavax/lang/model/element/AnnotationValue;
    :cond_3
    goto :goto_0

    .line 601
    :cond_4
    return v0
.end method

.method public static updateMappingToImmutableSet(Ljava/util/Map;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;TT;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 850
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "newQual":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    .line 852
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 853
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 855
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 856
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 858
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    return-void
.end method
