.class public abstract Lorg/checkerframework/checker/index/upperbound/UBQualifier;
.super Ljava/lang/Object;
.source "UBQualifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/index/upperbound/UBQualifier$PolyQualifier;,
        Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundBottomQualifier;,
        Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;,
        Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUBQualifier(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 2
    .param p0, "sequence"    # Ljava/lang/String;
    .param p1, "offset"    # Ljava/lang/String;

    .line 103
    nop

    .line 104
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 103
    invoke-static {v0, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljava/util/List;Ljava/util/List;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    return-object v0
.end method

.method public static createUBQualifier(Ljava/util/List;Ljava/util/List;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/checkerframework/checker/index/upperbound/UBQualifier;"
        }
    .end annotation

    .line 121
    .local p0, "sequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    return-object v0
.end method

.method public static createUBQualifier(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 8
    .param p2, "extraOffset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/checker/index/upperbound/UBQualifier;"
        }
    .end annotation

    .line 137
    .local p0, "sequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 140
    if-nez p2, :cond_0

    .line 141
    sget-object v0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->ZERO:Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .local v0, "extraEq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    goto :goto_0

    .line 143
    .end local v0    # "extraEq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    :cond_0
    invoke-static {p2}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetFromJavaExpression(Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v0

    .line 144
    .restart local v0    # "extraEq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-virtual {v0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    sget-object v1, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v1

    .line 149
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 152
    .local v3, "sequence":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .end local v3    # "sequence":Ljava/lang/String;
    goto :goto_1

    :cond_2
    goto :goto_3

    .line 155
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 156
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 157
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 158
    .restart local v3    # "sequence":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 159
    .local v4, "offset":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 160
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    if-nez v5, :cond_4

    .line 161
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object v5, v6

    .line 162
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_4
    invoke-static {v4}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetFromJavaExpression(Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v6

    .line 165
    .local v6, "eq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-virtual {v6}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->hasError()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 166
    sget-object v7, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v7

    .line 168
    :cond_5
    const/16 v7, 0x2b

    invoke-virtual {v6, v7, v0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->copyAdd(CLorg/checkerframework/checker/index/upperbound/OffsetEquation;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v6

    .line 169
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v3    # "sequence":Ljava/lang/String;
    .end local v4    # "offset":Ljava/lang/String;
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    .end local v6    # "eq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 172
    .end local v2    # "i":I
    :cond_6
    :goto_3
    new-instance v2, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;-><init>(Ljava/util/Map;Lorg/checkerframework/checker/index/upperbound/UBQualifier$1;)V

    return-object v2

    .line 155
    :cond_7
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 137
    .end local v0    # "extraEq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;>;"
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 1
    .param p0, "am"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 46
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    return-object v0
.end method

.method public static createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 1
    .param p0, "am"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "offset"    # Ljava/lang/String;

    .line 58
    const-class v0, Lorg/checkerframework/checker/index/qual/UpperBoundUnknown;

    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v0

    .line 60
    :cond_0
    const-class v0, Lorg/checkerframework/checker/index/qual/UpperBoundBottom;

    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    sget-object v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundBottomQualifier;->BOTTOM:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v0

    .line 62
    :cond_1
    const-class v0, Lorg/checkerframework/checker/index/qual/LTLengthOf;

    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    const-class v0, Lorg/checkerframework/checker/index/qual/SubstringIndexFor;

    .line 63
    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 65
    :cond_2
    const-class v0, Lorg/checkerframework/checker/index/qual/LTEqLengthOf;

    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    invoke-static {p0, p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->parseLTEqLengthOf(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    return-object v0

    .line 67
    :cond_3
    const-class v0, Lorg/checkerframework/checker/index/qual/LTOMLengthOf;

    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    invoke-static {p0, p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->parseLTOMLengthOf(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    return-object v0

    .line 69
    :cond_4
    const-class v0, Lorg/checkerframework/checker/index/qual/PolyUpperBound;

    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71
    sget-object v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$PolyQualifier;->POLY:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v0

    .line 73
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_6
    :goto_0
    invoke-static {p0, p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->parseLTLengthOf(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    return-object v0
.end method

.method public static createUBQualifier(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 1
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "top"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 108
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    return-object v0
.end method

.method private static parseLTEqLengthOf(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 3
    .param p0, "am"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "extraOffset"    # Ljava/lang/String;

    .line 89
    const-class v0, Ljava/lang/String;

    .line 90
    const-string v1, "value"

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 91
    .local v0, "sequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "-1"

    invoke-static {v1, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 92
    .local v1, "offset":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1, p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    return-object v2
.end method

.method private static parseLTLengthOf(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 4
    .param p0, "am"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "extraOffset"    # Ljava/lang/String;

    .line 78
    const-class v0, Ljava/lang/String;

    .line 79
    const-string v1, "value"

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, "sequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, Ljava/lang/String;

    .line 81
    const-string v3, "offset"

    invoke-static {p0, v3, v1, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    .line 82
    .local v1, "offset":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, ""

    invoke-static {v2, v3}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 85
    :cond_0
    invoke-static {v0, v1, p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    return-object v2
.end method

.method private static parseLTOMLengthOf(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 3
    .param p0, "am"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "extraOffset"    # Ljava/lang/String;

    .line 96
    const-class v0, Ljava/lang/String;

    .line 97
    const-string v1, "value"

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 98
    .local v0, "sequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "1"

    invoke-static {v1, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "offset":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1, p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public abstract glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
.end method

.method public hasSequenceWithOffset(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public hasSequenceWithOffset(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "offset"    # Ljava/lang/String;

    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public isBottom()Z
    .locals 1

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public isLessThanLengthOf(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sequence"    # Ljava/lang/String;

    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public isLessThanLengthOfAny(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 244
    .local p1, "sequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isLessThanLengthQualifier()Z
    .locals 1

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public isLessThanOrEqualTo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sequence"    # Ljava/lang/String;

    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public isPoly()Z
    .locals 1

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSubtype(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Z
.end method

.method public isUnknown()Z
    .locals 1

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public abstract lub(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
.end method

.method public minusOffset(I)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 1
    .param p1, "value"    # I

    .line 197
    sget-object v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v0
.end method

.method public minusOffset(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "factory"    # Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 193
    sget-object v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v0
.end method

.method public plusOffset(I)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 1
    .param p1, "value"    # I

    .line 189
    sget-object v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v0
.end method

.method public plusOffset(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "factory"    # Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 185
    sget-object v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v0
.end method

.method public widenUpperBound(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 1
    .param p1, "obj"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    .line 221
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->lub(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    return-object v0
.end method
