.class public Lorg/checkerframework/checker/index/upperbound/UpperBoundChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "UpperBoundChecker.java"


# annotations
.annotation runtime Lorg/checkerframework/framework/source/SuppressWarningsKeys;
    value = {
        "index",
        "upperbound"
    }
.end annotation


# instance fields
.field private collectionBaseTypeNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 24
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;-><init>()V

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-class v3, Ljava/util/AbstractList;

    aput-object v3, v0, v1

    .line 29
    .local v0, "collectionBaseClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/HashSet;

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundChecker;->collectionBaseTypeNames:Ljava/util/HashSet;

    .line 30
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 31
    .local v3, "collectionBaseClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundChecker;->collectionBaseTypeNames:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    .end local v3    # "collectionBaseClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method protected getImmediateSubcheckerClasses()Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            ">;>;"
        }
    .end annotation

    .line 45
    nop

    .line 46
    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getImmediateSubcheckerClasses()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 47
    .local v0, "checkers":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Class<+Lorg/checkerframework/common/basetype/BaseTypeChecker;>;>;"
    const-class v1, Lorg/checkerframework/checker/index/substringindex/SubstringIndexChecker;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 48
    const-class v1, Lorg/checkerframework/checker/index/searchindex/SearchIndexChecker;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 49
    const-class v1, Lorg/checkerframework/checker/index/samelen/SameLenChecker;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 50
    const-class v1, Lorg/checkerframework/checker/index/lowerbound/LowerBoundChecker;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 51
    const-class v1, Lorg/checkerframework/common/value/ValueChecker;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 52
    const-class v1, Lorg/checkerframework/checker/index/inequality/LessThanChecker;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 53
    return-object v0
.end method

.method public shouldSkipUses(Ljava/lang/String;)Z
    .locals 1
    .param p1, "typeName"    # Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundChecker;->collectionBaseTypeNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x1

    return v0

    .line 40
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->shouldSkipUses(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
