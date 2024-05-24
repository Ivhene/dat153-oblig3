.class abstract Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;
.super Ljava/lang/Object;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TypeCollector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final FOR_GENERIC_TYPE:Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector<",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "*>;>;"
        }
    .end annotation
.end field

.field static final FOR_RAW_TYPE:Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1298
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$1;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$1;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->FOR_GENERIC_TYPE:Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;

    .line 1317
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$2;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$2;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->FOR_RAW_TYPE:Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1296
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/reflect/TypeToken$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/reflect/TypeToken$1;

    .line 1296
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector<TK;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;-><init>()V

    return-void
.end method

.method private collectTypes(Ljava/lang/Object;Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Map<",
            "-TK;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1373
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector<TK;>;"
    .local p1, "type":Ljava/lang/Object;, "TK;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;Ljava/lang/Integer;>;"
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1374
    .local v0, "existing":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1376
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1379
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->getRawType(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    .line 1380
    .local v1, "aboveMe":I
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->getInterfaces(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1381
    .local v3, "interfaceType":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v3, p2}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1382
    .end local v3    # "interfaceType":Ljava/lang/Object;, "TK;"
    goto :goto_0

    .line 1383
    :cond_1
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->getSuperclass(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1384
    .local v2, "superclass":Ljava/lang/Object;, "TK;"
    if-eqz v2, :cond_2

    .line 1385
    invoke-direct {p0, v2, p2}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1392
    :cond_2
    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    add-int/lit8 v3, v1, 0x1

    return v3
.end method

.method private static sortKeysByValue(Ljava/util/Map;Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TK;>;"
        }
    .end annotation

    .line 1398
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$4;

    invoke-direct {v0, p1, p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$4;-><init>(Ljava/util/Comparator;Ljava/util/Map;)V

    .line 1405
    .local v0, "keyOrdering":Lorg/checkerframework/com/google/common/collect/Ordering;, "Lorg/checkerframework/com/google/common/collect/Ordering<TK;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method final classesOnly()Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector<",
            "TK;>;"
        }
    .end annotation

    .line 1338
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector<TK;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$3;

    invoke-direct {v0, p0, p0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$3;-><init>(Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;)V

    return-object v0
.end method

.method collectTypes(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TK;>;"
        }
    .end annotation

    .line 1363
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector<TK;>;"
    .local p1, "types":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 1364
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1365
    .local v2, "type":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v2, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Object;Ljava/util/Map;)I

    .line 1366
    .end local v2    # "type":Ljava/lang/Object;, "TK;"
    goto :goto_0

    .line 1367
    :cond_0
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/Ordering;->reverse()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->sortKeysByValue(Ljava/util/Map;Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method final collectTypes(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TK;>;"
        }
    .end annotation

    .line 1358
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector<TK;>;"
    .local p1, "type":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method abstract getInterfaces(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Iterable<",
            "+TK;>;"
        }
    .end annotation
.end method

.method abstract getRawType(Ljava/lang/Object;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method abstract getSuperclass(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation
.end method
