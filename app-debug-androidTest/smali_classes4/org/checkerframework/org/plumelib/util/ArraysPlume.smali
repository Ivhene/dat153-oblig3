.class public final Lorg/checkerframework/org/plumelib/util/ArraysPlume;
.super Ljava/lang/Object;
.source "ArraysPlume.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;,
        Lorg/checkerframework/org/plumelib/util/ArraysPlume$ObjectArrayComparatorLengthFirst;,
        Lorg/checkerframework/org/plumelib/util/ArraysPlume$ComparableArrayComparatorLengthFirst;,
        Lorg/checkerframework/org/plumelib/util/ArraysPlume$LongArrayComparatorLengthFirst;,
        Lorg/checkerframework/org/plumelib/util/ArraysPlume$IntArrayComparatorLengthFirst;,
        Lorg/checkerframework/org/plumelib/util/ArraysPlume$ObjectArrayComparatorLexical;,
        Lorg/checkerframework/org/plumelib/util/ArraysPlume$ComparableArrayComparatorLexical;,
        Lorg/checkerframework/org/plumelib/util/ArraysPlume$StringArrayComparatorLexical;,
        Lorg/checkerframework/org/plumelib/util/ArraysPlume$DoubleArrayComparatorLexical;,
        Lorg/checkerframework/org/plumelib/util/ArraysPlume$LongArrayComparatorLexical;,
        Lorg/checkerframework/org/plumelib/util/ArraysPlume$IntArrayComparatorLexical;,
        Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;
    }
.end annotation


# static fields
.field private static final objectComparator:Lorg/checkerframework/org/plumelib/util/UtilPlume$ObjectComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3239
    new-instance v0, Lorg/checkerframework/org/plumelib/util/UtilPlume$ObjectComparator;

    invoke-direct {v0}, Lorg/checkerframework/org/plumelib/util/UtilPlume$ObjectComparator;-><init>()V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->objectComparator:Lorg/checkerframework/org/plumelib/util/UtilPlume$ObjectComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Error;

    const-string v1, "do not instantiate"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Ljava/util/List;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;

    .line 40
    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->toTArray(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lorg/checkerframework/org/plumelib/util/UtilPlume$ObjectComparator;
    .locals 1

    .line 40
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->objectComparator:Lorg/checkerframework/org/plumelib/util/UtilPlume$ObjectComparator;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .line 40
    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->newArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static allNull(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 3349
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3350
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3351
    const/4 v1, 0x0

    return v1

    .line 3349
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3354
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static allNull([Ljava/lang/Object;)Z
    .locals 2
    .param p0, "a"    # [Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 3318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 3319
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 3320
    const/4 v1, 0x0

    return v1

    .line 3318
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3323
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static anyNull(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 3334
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3335
    return v1

    .line 3338
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->indexOfEq(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static anyNull([Ljava/lang/Object;)Z
    .locals 2
    .param p0, "a"    # [Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 3303
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3304
    return v1

    .line 3307
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->indexOfEq([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static concat([B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 1856
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 1857
    if-nez p1, :cond_0

    .line 1858
    new-array v0, v0, [B

    return-object v0

    .line 1860
    :cond_0
    return-object p1

    .line 1863
    :cond_1
    if-nez p1, :cond_2

    .line 1864
    return-object p0

    .line 1866
    :cond_2
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 1868
    .local v1, "result":[B
    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1869
    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1870
    return-object v1
.end method

.method public static concat([C[C)[C
    .locals 4
    .param p0, "a"    # [C
    .param p1, "b"    # [C

    .line 1912
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 1913
    if-nez p1, :cond_0

    .line 1914
    new-array v0, v0, [C

    return-object v0

    .line 1916
    :cond_0
    return-object p1

    .line 1919
    :cond_1
    if-nez p1, :cond_2

    .line 1920
    return-object p0

    .line 1922
    :cond_2
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [C

    .line 1924
    .local v1, "result":[C
    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1925
    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1926
    return-object v1
.end method

.method public static concat([D[D)[D
    .locals 4
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .line 1940
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 1941
    if-nez p1, :cond_0

    .line 1942
    new-array v0, v0, [D

    return-object v0

    .line 1944
    :cond_0
    return-object p1

    .line 1947
    :cond_1
    if-nez p1, :cond_2

    .line 1948
    return-object p0

    .line 1950
    :cond_2
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [D

    .line 1952
    .local v1, "result":[D
    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1953
    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1954
    return-object v1
.end method

.method public static concat([F[F)[F
    .locals 4
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .line 1968
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 1969
    if-nez p1, :cond_0

    .line 1970
    new-array v0, v0, [F

    return-object v0

    .line 1972
    :cond_0
    return-object p1

    .line 1975
    :cond_1
    if-nez p1, :cond_2

    .line 1976
    return-object p0

    .line 1978
    :cond_2
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [F

    .line 1980
    .local v1, "result":[F
    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1981
    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1982
    return-object v1
.end method

.method public static concat([I[I)[I
    .locals 4
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 1996
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 1997
    if-nez p1, :cond_0

    .line 1998
    new-array v0, v0, [I

    return-object v0

    .line 2000
    :cond_0
    return-object p1

    .line 2003
    :cond_1
    if-nez p1, :cond_2

    .line 2004
    return-object p0

    .line 2006
    :cond_2
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [I

    .line 2008
    .local v1, "result":[I
    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2009
    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2010
    return-object v1
.end method

.method public static concat([J[J)[J
    .locals 4
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 2024
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 2025
    if-nez p1, :cond_0

    .line 2026
    new-array v0, v0, [J

    return-object v0

    .line 2028
    :cond_0
    return-object p1

    .line 2031
    :cond_1
    if-nez p1, :cond_2

    .line 2032
    return-object p0

    .line 2034
    :cond_2
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [J

    .line 2036
    .local v1, "result":[J
    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2037
    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2038
    return-object v1
.end method

.method public static concat(Ljava/util/List;Ljava/util/List;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1769
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;-><init>(Ljava/util/List;)V

    new-instance v1, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;

    invoke-direct {v1, p1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->concat(Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljava/util/List;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;[TT;)[TT;"
        }
    .end annotation

    .line 1757
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "b":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;-><init>(Ljava/util/List;)V

    new-instance v1, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;

    invoke-direct {v1, p1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;-><init>([Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->concat(Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static concat(Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray<",
            "TT;>;",
            "Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1781
    .local p0, "a":Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray<TT;>;"
    .local p1, "b":Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->isNull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1783
    new-array v0, v1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 1784
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    return-object v0

    .line 1785
    .end local v0    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1786
    invoke-virtual {p1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1787
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->isNull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1788
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1791
    :cond_2
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1792
    invoke-virtual {p1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1793
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1794
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1798
    :cond_4
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 1800
    .local v0, "size":I
    nop

    .line 1802
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->leastUpperBound()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->leastUpperBound()Ljava/lang/Class;

    move-result-object v3

    .line 1801
    invoke-static {v2, v3}, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->leastUpperBound(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 1804
    .local v2, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz v2, :cond_5

    .line 1809
    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 1811
    .local v3, "result":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, v3, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->copyInto([Ljava/lang/Object;I)V

    .line 1812
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->size()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->copyInto([Ljava/lang/Object;I)V

    .line 1813
    return-object v3

    .line 1805
    .end local v3    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_5
    new-instance v1, Ljava/lang/Error;

    const-string v3, "All values are null, don\'t know how to create result array"

    invoke-direct {v1, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static concat([Ljava/lang/Object;Ljava/util/List;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/List<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1744
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;-><init>([Ljava/lang/Object;)V

    new-instance v1, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;

    invoke-direct {v1, p1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->concat(Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 1731
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "b":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;-><init>([Ljava/lang/Object;)V

    new-instance v1, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;

    invoke-direct {v1, p1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;-><init>([Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->concat(Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "b"    # [Ljava/lang/String;

    .line 1828
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 1829
    if-nez p1, :cond_0

    .line 1830
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 1832
    :cond_0
    return-object p1

    .line 1835
    :cond_1
    if-nez p1, :cond_2

    .line 1836
    return-object p0

    .line 1838
    :cond_2
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 1840
    .local v1, "result":[Ljava/lang/String;
    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1841
    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1842
    return-object v1
.end method

.method public static concat([S[S)[S
    .locals 4
    .param p0, "a"    # [S
    .param p1, "b"    # [S

    .line 2052
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 2053
    if-nez p1, :cond_0

    .line 2054
    new-array v0, v0, [S

    return-object v0

    .line 2056
    :cond_0
    return-object p1

    .line 2059
    :cond_1
    if-nez p1, :cond_2

    .line 2060
    return-object p0

    .line 2062
    :cond_2
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [S

    .line 2064
    .local v1, "result":[S
    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2065
    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2066
    return-object v1
.end method

.method public static concat([Z[Z)[Z
    .locals 4
    .param p0, "a"    # [Z
    .param p1, "b"    # [Z

    .line 1884
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 1885
    if-nez p1, :cond_0

    .line 1886
    new-array v0, v0, [Z

    return-object v0

    .line 1888
    :cond_0
    return-object p1

    .line 1891
    :cond_1
    if-nez p1, :cond_2

    .line 1892
    return-object p0

    .line 1894
    :cond_2
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Z

    .line 1896
    .local v1, "result":[Z
    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1897
    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1898
    return-object v1
.end method

.method public static elementRange([I)I
    .locals 3
    .param p0, "a"    # [I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 360
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 364
    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->minAndMax([I)[I

    move-result-object v0

    .line 365
    .local v0, "minAndMax":[I
    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v2, 0x0

    aget v2, v0, v2

    sub-int/2addr v1, v2

    return v1

    .line 361
    .end local v0    # "minAndMax":[I
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Empty array passed to elementRange(int[])"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static elementRange([J)J
    .locals 5
    .param p0, "a"    # [J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 378
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 382
    invoke-static {p0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->minAndMax([J)[J

    move-result-object v0

    .line 383
    .local v0, "minAndMax":[J
    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    sub-long/2addr v1, v3

    return-wide v1

    .line 379
    .end local v0    # "minAndMax":[J
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Empty array passed to elementRange(long[])"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fnCompose([I[I)[I
    .locals 3
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 2708
    array-length v0, p0

    new-array v0, v0, [I

    .line 2709
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 2710
    aget v2, p0, v1

    aget v2, p1, v2

    aput v2, v0, v1

    .line 2709
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2712
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static fnIdentity(I)[I
    .locals 2
    .param p0, "length"    # I

    .line 2650
    new-array v0, p0, [I

    .line 2651
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 2652
    aput v1, v0, v1

    .line 2651
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2654
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static fnInverse([II)[I
    .locals 8
    .param p0, "a"    # [I
    .param p1, "arange"    # I

    .line 2679
    new-array v0, p1, [I

    .line 2680
    .local v0, "result":[I
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2681
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 2682
    aget v3, p0, v2

    .line 2683
    .local v3, "ai":I
    if-lt v3, v1, :cond_2

    if-ge v3, p1, :cond_2

    .line 2687
    if-ltz v3, :cond_1

    .line 2688
    aget v4, v0, v3

    if-ne v4, v1, :cond_0

    .line 2692
    aput v2, v0, v3

    goto :goto_1

    .line 2689
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    aget v4, v0, v3

    .line 2690
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Not invertible; a[%d]=%d and a[%d]=%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2681
    .end local v3    # "ai":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2684
    .restart local v3    # "ai":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Bad range value: a[%d]=%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2695
    .end local v2    # "i":I
    .end local v3    # "ai":I
    :cond_3
    return-object v0
.end method

.method public static fnInversePermutation([I)[I
    .locals 1
    .param p0, "a"    # [I

    .line 2665
    array-length v0, p0

    invoke-static {p0, v0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->fnInverse([II)[I

    move-result-object v0

    return-object v0
.end method

.method public static fnIsPermutation([I)Z
    .locals 5
    .param p0, "a"    # [I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2621
    array-length v0, p0

    new-array v0, v0, [Z

    .line 2622
    .local v0, "see":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 2623
    aget v2, p0, v1

    .line 2624
    .local v2, "n":I
    if-ltz v2, :cond_1

    array-length v4, p0

    if-ge v2, v4, :cond_1

    aget-boolean v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_1

    .line 2627
    :cond_0
    aput-boolean v3, v0, v2

    .line 2622
    .end local v2    # "n":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2625
    .restart local v2    # "n":I
    :cond_1
    :goto_1
    const/4 v3, 0x0

    return v3

    .line 2629
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2
    return v3
.end method

.method public static fnIsTotal([I)Z
    .locals 2
    .param p0, "a"    # [I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2640
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->indexOf([II)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static indexOf(Ljava/util/List;Ljava/lang/Object;)I
    .locals 1
    .param p1, "elt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 528
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/util/List;Ljava/lang/Object;II)I
    .locals 2
    .param p1, "elt"    # Ljava/lang/Object;
    .param p2, "minindex"    # I
    .param p3, "indexlimit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "II)I"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 549
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 550
    invoke-static {p0, p1, p2, p3}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->indexOfEq(Ljava/util/List;Ljava/lang/Object;II)I

    move-result v0

    return v0

    .line 552
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 553
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 554
    return v0

    .line 552
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 557
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf(Ljava/util/List;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 952
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "sub":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 953
    .local v0, "aIndexMax":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 954
    invoke-static {p0, p1, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->isSubarray(Ljava/util/List;Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 955
    return v1

    .line 953
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 958
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static indexOf(Ljava/util/List;[Ljava/lang/Object;)I
    .locals 3
    .param p1, "sub"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;[",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 864
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 865
    .local v0, "aIndexMax":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 866
    invoke-static {p0, p1, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->isSubarray(Ljava/util/List;[Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 867
    return v1

    .line 865
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 870
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static indexOf([DD)I
    .locals 3
    .param p0, "a"    # [D
    .param p1, "elt"    # D
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 764
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 765
    aget-wide v1, p0, v0

    cmpl-double v1, p1, v1

    if-nez v1, :cond_0

    .line 766
    return v0

    .line 764
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 769
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([D[D)I
    .locals 3
    .param p0, "a"    # [D
    .param p1, "sub"    # [D
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1016
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1017
    .local v0, "aIndexMax":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 1018
    invoke-static {p0, p1, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->isSubarray([D[DI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1019
    return v1

    .line 1017
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1022
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static indexOf([II)I
    .locals 2
    .param p0, "a"    # [I
    .param p1, "elt"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 663
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 664
    aget v1, p0, v0

    if-ne p1, v1, :cond_0

    .line 665
    return v0

    .line 663
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([IIII)I
    .locals 2
    .param p0, "a"    # [I
    .param p1, "elt"    # I
    .param p2, "minindex"    # I
    .param p3, "indexlimit"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 704
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 705
    aget v1, p0, v0

    if-ne p1, v1, :cond_0

    .line 706
    return v0

    .line 704
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([I[I)I
    .locals 3
    .param p0, "a"    # [I
    .param p1, "sub"    # [I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 995
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 996
    .local v0, "aIndexMax":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 997
    invoke-static {p0, p1, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->isSubarray([I[II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 998
    return v1

    .line 996
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1001
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static indexOf([JJ)I
    .locals 3
    .param p0, "a"    # [J
    .param p1, "elt"    # J
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 682
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 683
    aget-wide v1, p0, v0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 684
    return v0

    .line 682
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 687
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([JJII)I
    .locals 3
    .param p0, "a"    # [J
    .param p1, "elt"    # J
    .param p3, "minindex"    # I
    .param p4, "indexlimit"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 726
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 727
    aget-wide v1, p0, v0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 728
    return v0

    .line 726
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([J[J)I
    .locals 3
    .param p0, "a"    # [J
    .param p1, "sub"    # [J
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1037
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1038
    .local v0, "aIndexMax":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 1039
    invoke-static {p0, p1, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->isSubarray([J[JI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1040
    return v1

    .line 1038
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1043
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "elt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 475
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    if-nez p1, :cond_0

    .line 476
    invoke-static {p0, p1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->indexOfEq([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 478
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 479
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    return v0

    .line 478
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;II)I
    .locals 2
    .param p1, "elt"    # Ljava/lang/Object;
    .param p2, "minindex"    # I
    .param p3, "indexlimit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            "II)I"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 505
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    if-nez p1, :cond_0

    .line 506
    invoke-static {p0, p1, p2, p3}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->indexOfEq([Ljava/lang/Object;Ljava/lang/Object;II)I

    move-result v0

    return v0

    .line 508
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 509
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 510
    return v0

    .line 508
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/util/List;)I
    .locals 3
    .param p0, "a"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 908
    .local p1, "sub":Ljava/util/List;, "Ljava/util/List<*>;"
    array-length v0, p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 909
    .local v0, "aIndexMax":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 910
    invoke-static {p0, p1, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->isSubarray([Ljava/lang/Object;Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 911
    return v1

    .line 909
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 914
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static indexOf([Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 3
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "sub"    # [Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 816
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 817
    .local v0, "aIndexMax":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 818
    invoke-static {p0, p1, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->isSubarray([Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 819
    return v1

    .line 817
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 822
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static indexOf([ZZ)I
    .locals 2
    .param p0, "a"    # [Z
    .param p1, "elt"    # Z
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 745
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 746
    aget-boolean v1, p0, v0

    if-ne p1, v1, :cond_0

    .line 747
    return v0

    .line 745
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 750
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([ZZII)I
    .locals 2
    .param p0, "a"    # [Z
    .param p1, "elt"    # Z
    .param p2, "minindex"    # I
    .param p3, "indexlimit"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 786
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 787
    aget-boolean v1, p0, v0

    if-ne p1, v1, :cond_0

    .line 788
    return v0

    .line 786
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 791
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([Z[Z)I
    .locals 3
    .param p0, "a"    # [Z
    .param p1, "sub"    # [Z
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1058
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1059
    .local v0, "aIndexMax":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 1060
    invoke-static {p0, p1, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->isSubarray([Z[ZI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1061
    return v1

    .line 1059
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1064
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static indexOfEq(Ljava/util/List;Ljava/lang/Object;)I
    .locals 2
    .param p1, "elt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 618
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 619
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 620
    return v0

    .line 618
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 623
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOfEq(Ljava/util/List;Ljava/lang/Object;II)I
    .locals 2
    .param p1, "elt"    # Ljava/lang/Object;
    .param p2, "minindex"    # I
    .param p3, "indexlimit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "II)I"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 644
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 645
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 646
    return v0

    .line 644
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 649
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOfEq(Ljava/util/List;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 974
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "sub":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 975
    .local v0, "aIndexMax":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 976
    invoke-static {p0, p1, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->isSubarrayEq(Ljava/util/List;Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 977
    return v1

    .line 975
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 980
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static indexOfEq(Ljava/util/List;[Ljava/lang/Object;)I
    .locals 3
    .param p1, "sub"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;[",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 886
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 887
    .local v0, "aIndexMax":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 888
    invoke-static {p0, p1, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->isSubarrayEq(Ljava/util/List;[Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 889
    return v1

    .line 887
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 892
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static indexOfEq([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "elt"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 572
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 573
    aget-object v1, p0, v0

    if-ne p1, v1, :cond_0

    .line 574
    return v0

    .line 572
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 577
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOfEq([Ljava/lang/Object;Ljava/lang/Object;II)I
    .locals 2
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "elt"    # Ljava/lang/Object;
    .param p2, "minindex"    # I
    .param p3, "indexlimit"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 598
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 599
    aget-object v1, p0, v0

    if-ne p1, v1, :cond_0

    .line 600
    return v0

    .line 598
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 603
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOfEq([Ljava/lang/Object;Ljava/util/List;)I
    .locals 3
    .param p0, "a"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 930
    .local p1, "sub":Ljava/util/List;, "Ljava/util/List<*>;"
    array-length v0, p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 931
    .local v0, "aIndexMax":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 932
    invoke-static {p0, p1, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->isSubarrayEq([Ljava/lang/Object;Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 933
    return v1

    .line 931
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 936
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static indexOfEq([Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 3
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "sub"    # [Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 842
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 843
    .local v0, "aIndexMax":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 844
    invoke-static {p0, p1, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->isSubarrayEq([Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 845
    return v1

    .line 843
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 848
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static isSortedDescending([I)Z
    .locals 3
    .param p0, "a"    # [I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 2321
    add-int/lit8 v1, v0, 0x1

    aget v1, p0, v1

    aget v2, p0, v0

    if-le v1, v2, :cond_0

    .line 2322
    const/4 v1, 0x0

    return v1

    .line 2320
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2325
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method public static isSortedDescending([J)Z
    .locals 5
    .param p0, "a"    # [J
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2336
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 2337
    add-int/lit8 v1, v0, 0x1

    aget-wide v1, p0, v1

    aget-wide v3, p0, v0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 2338
    const/4 v1, 0x0

    return v1

    .line 2336
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2341
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method public static isSubarray(Ljava/util/List;Ljava/util/List;I)Z
    .locals 4
    .param p2, "aOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "*>;I)Z"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1449
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "sub":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 1450
    return v2

    .line 1452
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1453
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int v3, p2, v0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1454
    return v2

    .line 1452
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1457
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isSubarray(Ljava/util/List;[Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "sub"    # [Ljava/lang/Object;
    .param p2, "aOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;[",
            "Ljava/lang/Object;",
            "I)Z"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1402
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<*>;"
    array-length v0, p1

    add-int/2addr v0, p2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 1403
    return v2

    .line 1405
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1406
    aget-object v1, p1, v0

    add-int v3, p2, v0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1407
    return v2

    .line 1405
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1410
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isSubarray([D[DI)Z
    .locals 7
    .param p0, "a"    # [D
    .param p1, "sub"    # [D
    .param p2, "aOffset"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1541
    array-length v0, p1

    add-int/2addr v0, p2

    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 1542
    return v2

    .line 1544
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1545
    aget-wide v3, p1, v0

    add-int v1, p2, v0

    aget-wide v5, p0, v1

    cmpl-double v1, v3, v5

    if-eqz v1, :cond_1

    .line 1546
    return v2

    .line 1544
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1549
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isSubarray([I[II)Z
    .locals 4
    .param p0, "a"    # [I
    .param p1, "sub"    # [I
    .param p2, "aOffset"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1495
    array-length v0, p1

    add-int/2addr v0, p2

    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 1496
    return v2

    .line 1498
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1499
    aget v1, p1, v0

    add-int v3, p2, v0

    aget v3, p0, v3

    if-eq v1, v3, :cond_1

    .line 1500
    return v2

    .line 1498
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1503
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isSubarray([J[JI)Z
    .locals 7
    .param p0, "a"    # [J
    .param p1, "sub"    # [J
    .param p2, "aOffset"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1518
    array-length v0, p1

    add-int/2addr v0, p2

    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 1519
    return v2

    .line 1521
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1522
    aget-wide v3, p1, v0

    add-int v1, p2, v0

    aget-wide v5, p0, v1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    .line 1523
    return v2

    .line 1521
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1526
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isSubarray([Ljava/lang/Object;Ljava/util/List;I)Z
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p2, "aOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "*>;I)Z"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1355
    .local p1, "sub":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 1356
    return v2

    .line 1358
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1359
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int v3, p2, v0

    aget-object v3, p0, v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1360
    return v2

    .line 1358
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1363
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isSubarray([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "sub"    # [Ljava/lang/Object;
    .param p2, "aOffset"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1307
    array-length v0, p1

    add-int/2addr v0, p2

    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 1308
    return v2

    .line 1310
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1311
    aget-object v1, p1, v0

    add-int v3, p2, v0

    aget-object v3, p0, v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1312
    return v2

    .line 1310
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1315
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isSubarray([Z[ZI)Z
    .locals 4
    .param p0, "a"    # [Z
    .param p1, "sub"    # [Z
    .param p2, "aOffset"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1564
    array-length v0, p1

    add-int/2addr v0, p2

    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 1565
    return v2

    .line 1567
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1568
    aget-boolean v1, p1, v0

    add-int v3, p2, v0

    aget-boolean v3, p0, v3

    if-eq v1, v3, :cond_1

    .line 1569
    return v2

    .line 1567
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1572
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isSubarrayEq(Ljava/util/List;Ljava/util/List;I)Z
    .locals 4
    .param p2, "aOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "*>;I)Z"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1472
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "sub":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 1473
    return v2

    .line 1475
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1476
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int v3, p2, v0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v1, v3, :cond_1

    .line 1477
    return v2

    .line 1475
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1480
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isSubarrayEq(Ljava/util/List;[Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "sub"    # [Ljava/lang/Object;
    .param p2, "aOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;[",
            "Ljava/lang/Object;",
            "I)Z"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1425
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<*>;"
    array-length v0, p1

    add-int/2addr v0, p2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 1426
    return v2

    .line 1428
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1429
    aget-object v1, p1, v0

    add-int v3, p2, v0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v1, v3, :cond_1

    .line 1430
    return v2

    .line 1428
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1433
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isSubarrayEq([Ljava/lang/Object;Ljava/util/List;I)Z
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p2, "aOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "*>;I)Z"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1378
    .local p1, "sub":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 1379
    return v2

    .line 1381
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1382
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int v3, p2, v0

    aget-object v3, p0, v3

    if-eq v1, v3, :cond_1

    .line 1383
    return v2

    .line 1381
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1386
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isSubarrayEq([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "sub"    # [Ljava/lang/Object;
    .param p2, "aOffset"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1331
    array-length v0, p1

    add-int/2addr v0, p2

    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 1332
    return v2

    .line 1334
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1335
    aget-object v1, p1, v0

    add-int v3, p2, v0

    aget-object v3, p0, v3

    if-eq v1, v3, :cond_1

    .line 1336
    return v2

    .line 1334
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1339
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isSubset([D[D)Z
    .locals 4
    .param p0, "smaller"    # [D
    .param p1, "bigger"    # [D
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2789
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2791
    .local v0, "setBigger":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Double;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 2792
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2791
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2795
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2796
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 2797
    .local v2, "elt":Ljava/lang/Double;
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2798
    const/4 v3, 0x0

    return v3

    .line 2795
    .end local v2    # "elt":Ljava/lang/Double;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2802
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static isSubset([J[J)Z
    .locals 4
    .param p0, "smaller"    # [J
    .param p1, "bigger"    # [J
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2757
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2759
    .local v0, "setBigger":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 2760
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2759
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2763
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2764
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2765
    .local v2, "elt":Ljava/lang/Long;
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2766
    const/4 v3, 0x0

    return v3

    .line 2763
    .end local v2    # "elt":Ljava/lang/Long;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2770
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static isSubset([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p0, "smaller"    # [Ljava/lang/String;
    .param p1, "bigger"    # [Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2821
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2823
    .local v0, "setBigger":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 2824
    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2823
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2827
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2828
    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2829
    const/4 v2, 0x0

    return v2

    .line 2827
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2833
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static length(Ljava/lang/Object;)I
    .locals 3
    .param p0, "a"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2126
    if-eqz p0, :cond_9

    .line 2128
    instance-of v0, p0, [Z

    if-eqz v0, :cond_0

    .line 2129
    move-object v0, p0

    check-cast v0, [Z

    check-cast v0, [Z

    array-length v0, v0

    return v0

    .line 2130
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 2131
    move-object v0, p0

    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    return v0

    .line 2132
    :cond_1
    instance-of v0, p0, [C

    if-eqz v0, :cond_2

    .line 2133
    move-object v0, p0

    check-cast v0, [C

    check-cast v0, [C

    array-length v0, v0

    return v0

    .line 2134
    :cond_2
    instance-of v0, p0, [D

    if-eqz v0, :cond_3

    .line 2135
    move-object v0, p0

    check-cast v0, [D

    check-cast v0, [D

    array-length v0, v0

    return v0

    .line 2136
    :cond_3
    instance-of v0, p0, [F

    if-eqz v0, :cond_4

    .line 2137
    move-object v0, p0

    check-cast v0, [F

    check-cast v0, [F

    array-length v0, v0

    return v0

    .line 2138
    :cond_4
    instance-of v0, p0, [I

    if-eqz v0, :cond_5

    .line 2139
    move-object v0, p0

    check-cast v0, [I

    check-cast v0, [I

    array-length v0, v0

    return v0

    .line 2140
    :cond_5
    instance-of v0, p0, [J

    if-eqz v0, :cond_6

    .line 2141
    move-object v0, p0

    check-cast v0, [J

    check-cast v0, [J

    array-length v0, v0

    return v0

    .line 2142
    :cond_6
    instance-of v0, p0, [S

    if-eqz v0, :cond_7

    .line 2143
    move-object v0, p0

    check-cast v0, [S

    check-cast v0, [S

    array-length v0, v0

    return v0

    .line 2144
    :cond_7
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 2145
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    return v0

    .line 2147
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument is not an array, but has class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2127
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static max([D)D
    .locals 5
    .param p0, "a"    # [D
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 225
    array-length v0, p0

    if-eqz v0, :cond_1

    .line 228
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 229
    .local v0, "result":D
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 230
    aget-wide v3, p0, v2

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    .end local v2    # "i":I
    :cond_0
    return-wide v0

    .line 226
    .end local v0    # "result":D
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Empty array passed to max(double[])"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static max([I)I
    .locals 3
    .param p0, "a"    # [I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 187
    array-length v0, p0

    if-eqz v0, :cond_1

    .line 190
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 191
    .local v0, "result":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 192
    aget v2, p0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "i":I
    :cond_0
    return v0

    .line 188
    .end local v0    # "result":I
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Empty array passed to max(int[])"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static max([J)J
    .locals 5
    .param p0, "a"    # [J
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 206
    array-length v0, p0

    if-eqz v0, :cond_1

    .line 209
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 210
    .local v0, "result":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 211
    aget-wide v3, p0, v2

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    .end local v2    # "i":I
    :cond_0
    return-wide v0

    .line 207
    .end local v0    # "result":J
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Empty array passed to max(long[])"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static max([Ljava/lang/Double;)Ljava/lang/Double;
    .locals 4
    .param p0, "a"    # [Ljava/lang/Double;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 290
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 293
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 294
    .local v0, "result":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v1

    .line 295
    .local v1, "resultInt":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 296
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 297
    aget-object v0, p0, v2

    .line 298
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v1

    .line 295
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    .end local v2    # "i":I
    :cond_1
    return-object v0

    .line 291
    .end local v0    # "result":Ljava/lang/Double;
    .end local v1    # "resultInt":I
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Empty array passed to max(Double[])"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static max([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4
    .param p0, "a"    # [Ljava/lang/Integer;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 244
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 247
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 248
    .local v0, "result":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 249
    .local v1, "resultInt":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 250
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 251
    aget-object v0, p0, v2

    .line 252
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 249
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    .end local v2    # "i":I
    :cond_1
    return-object v0

    .line 245
    .end local v0    # "result":Ljava/lang/Integer;
    .end local v1    # "resultInt":I
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Empty array passed to max(Integer[])"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static max([Ljava/lang/Long;)Ljava/lang/Long;
    .locals 6
    .param p0, "a"    # [Ljava/lang/Long;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 267
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 270
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 271
    .local v0, "result":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 272
    .local v1, "resultLong":J
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_1

    .line 273
    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-lez v4, :cond_0

    .line 274
    aget-object v0, p0, v3

    .line 275
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 272
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    .end local v3    # "i":I
    :cond_1
    return-object v0

    .line 268
    .end local v0    # "result":Ljava/lang/Long;
    .end local v1    # "resultLong":J
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Empty array passed to max(Long[])"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min([D)D
    .locals 5
    .param p0, "a"    # [D
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 99
    array-length v0, p0

    if-eqz v0, :cond_1

    .line 102
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 103
    .local v0, "result":D
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 104
    aget-wide v3, p0, v2

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "i":I
    :cond_0
    return-wide v0

    .line 100
    .end local v0    # "result":D
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Empty array passed to min(double[])"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min([I)I
    .locals 3
    .param p0, "a"    # [I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 61
    array-length v0, p0

    if-eqz v0, :cond_1

    .line 64
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 65
    .local v0, "result":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 66
    aget v2, p0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "i":I
    :cond_0
    return v0

    .line 62
    .end local v0    # "result":I
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Empty array passed to min(int[])"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min([J)J
    .locals 5
    .param p0, "a"    # [J
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 80
    array-length v0, p0

    if-eqz v0, :cond_1

    .line 83
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 84
    .local v0, "result":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 85
    aget-wide v3, p0, v2

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "i":I
    :cond_0
    return-wide v0

    .line 81
    .end local v0    # "result":J
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Empty array passed to min(long[])"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min([Ljava/lang/Double;)Ljava/lang/Double;
    .locals 4
    .param p0, "a"    # [Ljava/lang/Double;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 164
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 167
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 168
    .local v0, "result":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v1

    .line 169
    .local v1, "resultInt":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 170
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    if-ge v3, v1, :cond_0

    .line 171
    aget-object v0, p0, v2

    .line 172
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v1

    .line 169
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v2    # "i":I
    :cond_1
    return-object v0

    .line 165
    .end local v0    # "result":Ljava/lang/Double;
    .end local v1    # "resultInt":I
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Empty array passed to min(Double[])"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4
    .param p0, "a"    # [Ljava/lang/Integer;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 118
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 121
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 122
    .local v0, "result":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 123
    .local v1, "resultInt":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 124
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, v1, :cond_0

    .line 125
    aget-object v0, p0, v2

    .line 126
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 123
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "i":I
    :cond_1
    return-object v0

    .line 119
    .end local v0    # "result":Ljava/lang/Integer;
    .end local v1    # "resultInt":I
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Empty array passed to min(Integer[])"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min([Ljava/lang/Long;)Ljava/lang/Long;
    .locals 6
    .param p0, "a"    # [Ljava/lang/Long;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 141
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 144
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 145
    .local v0, "result":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 146
    .local v1, "resultLong":J
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_1

    .line 147
    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-gez v4, :cond_0

    .line 148
    aget-object v0, p0, v3

    .line 149
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 146
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 152
    .end local v3    # "i":I
    :cond_1
    return-object v0

    .line 142
    .end local v0    # "result":Ljava/lang/Long;
    .end local v1    # "resultLong":J
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Empty array passed to min(Long[])"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static minAndMax([I)[I
    .locals 4
    .param p0, "a"    # [I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 314
    array-length v0, p0

    if-eqz v0, :cond_1

    .line 318
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 319
    .local v1, "resultMin":I
    aget v0, p0, v0

    .line 320
    .local v0, "resultMax":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 321
    aget v3, p0, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 322
    aget v3, p0, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    .end local v2    # "i":I
    :cond_0
    filled-new-array {v1, v0}, [I

    move-result-object v2

    return-object v2

    .line 316
    .end local v0    # "resultMax":I
    .end local v1    # "resultMin":I
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Empty array passed to minAndMax(int[])"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static minAndMax([J)[J
    .locals 8
    .param p0, "a"    # [J
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 337
    array-length v0, p0

    if-eqz v0, :cond_1

    .line 341
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .line 342
    .local v1, "resultMin":J
    aget-wide v3, p0, v0

    .line 343
    .local v3, "resultMax":J
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_0

    .line 344
    aget-wide v6, p0, v5

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 345
    aget-wide v6, p0, v5

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 343
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 347
    .end local v5    # "i":I
    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [J

    aput-wide v1, v5, v0

    const/4 v0, 0x1

    aput-wide v3, v5, v0

    return-object v5

    .line 339
    .end local v1    # "resultMin":J
    .end local v3    # "resultMax":J
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Empty array passed to minAndMax(long[])"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static newArrayDeque(Ljava/lang/Object;)Ljava/util/ArrayDeque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/ArrayDeque<",
            "TT;>;"
        }
    .end annotation

    .line 3538
    .local p0, "elt":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 3539
    .local v0, "result":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TT;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 3540
    return-object v0
.end method

.method private static newArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 3525
    .local p0, "elt":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3526
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3527
    return-object v0
.end method

.method public static noDuplicates(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2595
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2596
    .local v0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2597
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2598
    const/4 v2, 0x0

    return v2

    .line 2602
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2596
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2604
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static noDuplicates([B)Z
    .locals 4
    .param p0, "a"    # [B
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2379
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2380
    .local v0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2383
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 2384
    .local v2, "n":Ljava/lang/Byte;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2385
    const/4 v3, 0x0

    return v3

    .line 2387
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2380
    .end local v2    # "n":Ljava/lang/Byte;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2389
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static noDuplicates([C)Z
    .locals 4
    .param p0, "a"    # [C
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2403
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2404
    .local v0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Character;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2407
    aget-char v2, p0, v1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 2408
    .local v2, "n":Ljava/lang/Character;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2409
    const/4 v3, 0x0

    return v3

    .line 2411
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2404
    .end local v2    # "n":Ljava/lang/Character;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2413
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static noDuplicates([D)Z
    .locals 4
    .param p0, "a"    # [D
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2500
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2501
    .local v0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Double;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2504
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 2505
    .local v2, "n":Ljava/lang/Double;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2506
    const/4 v3, 0x0

    return v3

    .line 2508
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2501
    .end local v2    # "n":Ljava/lang/Double;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2510
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static noDuplicates([F)Z
    .locals 4
    .param p0, "a"    # [F
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2427
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2428
    .local v0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Float;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2431
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 2432
    .local v2, "n":Ljava/lang/Float;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2433
    const/4 v3, 0x0

    return v3

    .line 2435
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2428
    .end local v2    # "n":Ljava/lang/Float;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2437
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static noDuplicates([I)Z
    .locals 4
    .param p0, "a"    # [I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2475
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2476
    .local v0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2479
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2480
    .local v2, "n":Ljava/lang/Integer;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2481
    const/4 v3, 0x0

    return v3

    .line 2483
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2476
    .end local v2    # "n":Ljava/lang/Integer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2485
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static noDuplicates([J)Z
    .locals 4
    .param p0, "a"    # [J
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2524
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2525
    .local v0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2528
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2529
    .local v2, "n":Ljava/lang/Long;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2530
    const/4 v3, 0x0

    return v3

    .line 2532
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2525
    .end local v2    # "n":Ljava/lang/Long;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2534
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static noDuplicates([Ljava/lang/Object;)Z
    .locals 3
    .param p0, "a"    # [Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2571
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2572
    .local v0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2573
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2574
    const/4 v2, 0x0

    return v2

    .line 2578
    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2572
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2580
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static noDuplicates([Ljava/lang/String;)Z
    .locals 3
    .param p0, "a"    # [Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2548
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2549
    .local v0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2550
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2551
    const/4 v2, 0x0

    return v2

    .line 2555
    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2549
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2557
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static noDuplicates([S)Z
    .locals 4
    .param p0, "a"    # [S
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2451
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2452
    .local v0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Short;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2455
    aget-short v2, p0, v1

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    .line 2456
    .local v2, "n":Ljava/lang/Short;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2457
    const/4 v3, 0x0

    return v3

    .line 2459
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2452
    .end local v2    # "n":Ljava/lang/Short;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2461
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static noDuplicates([Z)Z
    .locals 4
    .param p0, "a"    # [Z
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2355
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2356
    .local v0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2359
    aget-boolean v2, p0, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2360
    .local v2, "n":Ljava/lang/Boolean;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2361
    const/4 v3, 0x0

    return v3

    .line 2363
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2356
    .end local v2    # "n":Ljava/lang/Boolean;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2365
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static partialFnCompose([I[I)[I
    .locals 4
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 2725
    array-length v0, p0

    new-array v0, v0, [I

    .line 2726
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2727
    aget v2, p0, v1

    .line 2728
    .local v2, "inner":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 2729
    aput v3, v0, v1

    goto :goto_1

    .line 2731
    :cond_0
    aget v3, p1, v2

    aput v3, v0, v1

    .line 2726
    .end local v2    # "inner":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2734
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static partitionInto(Ljava/util/Collection;I)Ljava/util/List;
    .locals 1
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;I)",
            "Ljava/util/List<",
            "Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<",
            "TT;>;>;"
        }
    .end annotation

    .line 3373
    .local p0, "elts":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p0}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, p1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->partitionInto(Ljava/util/Queue;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static partitionInto(Ljava/util/Queue;I)Ljava/util/List;
    .locals 3
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "TT;>;I)",
            "Ljava/util/List<",
            "Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<",
            "TT;>;>;"
        }
    .end annotation

    .line 3387
    .local p0, "elts":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 3390
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;

    new-instance v1, Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;

    invoke-direct {v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, p1, v2}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->partitionIntoHelper(Ljava/util/Queue;Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3388
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static partitionIntoHelper(Ljava/util/Queue;Ljava/util/List;II)Ljava/util/List;
    .locals 8
    .param p2, "numEmptyParts"    # I
    .param p3, "numNonemptyParts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "TT;>;",
            "Ljava/util/List<",
            "Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<",
            "TT;>;>;II)",
            "Ljava/util/List<",
            "Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<",
            "TT;>;>;"
        }
    .end annotation

    .line 3413
    .local p0, "elts":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    .local p1, "resultSoFar":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<TT;>;>;"
    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result v0

    if-gt p2, v0, :cond_6

    .line 3417
    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3418
    return-object p1

    .line 3421
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p0}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 3422
    .local v0, "eltsRemaining":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    .line 3424
    .local v1, "elt":Ljava/lang/Object;, "TT;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3427
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<TT;>;>;"
    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result v3

    if-le v3, p2, :cond_3

    .line 3428
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3429
    .local v3, "resultSoFar_augmented":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<TT;>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p3, :cond_2

    .line 3430
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;

    .line 3431
    .local v6, "p":Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<TT;>;"
    invoke-virtual {v6, v4, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;->addToPart(ILjava/lang/Object;)Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3432
    .end local v6    # "p":Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<TT;>;"
    goto :goto_1

    .line 3429
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3434
    .end local v4    # "i":I
    :cond_2
    nop

    .line 3435
    invoke-static {v0, v3, p2, p3}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->partitionIntoHelper(Ljava/util/Queue;Ljava/util/List;II)Ljava/util/List;

    move-result-object v4

    .line 3434
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3440
    .end local v3    # "resultSoFar_augmented":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<TT;>;>;"
    :cond_3
    if-lez p2, :cond_5

    .line 3441
    invoke-static {v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->newArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3442
    .local v3, "part":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3443
    .local v4, "resultSoFar_augmented":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<TT;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;

    .line 3444
    .restart local v6    # "p":Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<TT;>;"
    invoke-virtual {v6, p3, v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;->addToPart(ILjava/lang/Object;)Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3445
    .end local v6    # "p":Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<TT;>;"
    goto :goto_2

    .line 3446
    :cond_4
    add-int/lit8 v5, p2, -0x1

    add-int/lit8 v6, p3, 0x1

    .line 3447
    invoke-static {v0, v4, v5, v6}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->partitionIntoHelper(Ljava/util/Queue;Ljava/util/List;II)Ljava/util/List;

    move-result-object v5

    .line 3446
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3451
    .end local v3    # "part":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v4    # "resultSoFar_augmented":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<TT;>;>;"
    :cond_5
    return-object v2

    .line 3414
    .end local v0    # "eltsRemaining":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    .end local v1    # "elt":Ljava/lang/Object;, "TT;"
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/plumelib/util/ArraysPlume$Partitioning<TT;>;>;"
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sorted([I)Z
    .locals 3
    .param p0, "a"    # [I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2288
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 2289
    add-int/lit8 v1, v0, 0x1

    aget v1, p0, v1

    aget v2, p0, v0

    if-ge v1, v2, :cond_0

    .line 2290
    const/4 v1, 0x0

    return v1

    .line 2288
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2293
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method public static sorted([J)Z
    .locals 5
    .param p0, "a"    # [J
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 2305
    add-int/lit8 v1, v0, 0x1

    aget-wide v1, p0, v1

    aget-wide v3, p0, v0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 2306
    const/4 v1, 0x0

    return v1

    .line 2304
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2309
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method public static subarray(Ljava/util/List;II)Ljava/util/List;
    .locals 1
    .param p1, "startindex"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;II)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1116
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    add-int v0, p1, p2

    invoke-interface {p0, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static subarray([BII)[B
    .locals 2
    .param p0, "a"    # [B
    .param p1, "startindex"    # I
    .param p2, "length"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1152
    new-array v0, p2, [B

    .line 1153
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1154
    return-object v0
.end method

.method public static subarray([CII)[C
    .locals 2
    .param p0, "a"    # [C
    .param p1, "startindex"    # I
    .param p2, "length"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1190
    new-array v0, p2, [C

    .line 1191
    .local v0, "result":[C
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1192
    return-object v0
.end method

.method public static subarray([DII)[D
    .locals 2
    .param p0, "a"    # [D
    .param p1, "startindex"    # I
    .param p2, "length"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1209
    new-array v0, p2, [D

    .line 1210
    .local v0, "result":[D
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1211
    return-object v0
.end method

.method public static subarray([FII)[F
    .locals 2
    .param p0, "a"    # [F
    .param p1, "startindex"    # I
    .param p2, "length"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1228
    new-array v0, p2, [F

    .line 1229
    .local v0, "result":[F
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1230
    return-object v0
.end method

.method public static subarray([III)[I
    .locals 2
    .param p0, "a"    # [I
    .param p1, "startindex"    # I
    .param p2, "length"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1247
    new-array v0, p2, [I

    .line 1248
    .local v0, "result":[I
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1249
    return-object v0
.end method

.method public static subarray([JII)[J
    .locals 2
    .param p0, "a"    # [J
    .param p1, "startindex"    # I
    .param p2, "length"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1266
    new-array v0, p2, [J

    .line 1267
    .local v0, "result":[J
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1268
    return-object v0
.end method

.method public static subarray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 2
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "startindex"    # I
    .param p2, "length"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1098
    new-array v0, p2, [Ljava/lang/Object;

    .line 1099
    .local v0, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1100
    return-object v0
.end method

.method public static subarray([Ljava/lang/String;II)[Ljava/lang/String;
    .locals 2
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "startindex"    # I
    .param p2, "length"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1133
    new-array v0, p2, [Ljava/lang/String;

    .line 1134
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1135
    return-object v0
.end method

.method public static subarray([SII)[S
    .locals 2
    .param p0, "a"    # [S
    .param p1, "startindex"    # I
    .param p2, "length"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1285
    new-array v0, p2, [S

    .line 1286
    .local v0, "result":[S
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1287
    return-object v0
.end method

.method public static subarray([ZII)[Z
    .locals 2
    .param p0, "a"    # [Z
    .param p1, "startindex"    # I
    .param p2, "length"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1171
    new-array v0, p2, [Z

    .line 1172
    .local v0, "result":[Z
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1173
    return-object v0
.end method

.method public static sum([D)D
    .locals 5
    .param p0, "a"    # [D
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 433
    const-wide/16 v0, 0x0

    .line 434
    .local v0, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 435
    aget-wide v3, p0, v2

    add-double/2addr v0, v3

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method public static sum([[D)D
    .locals 6
    .param p0, "a"    # [[D
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 449
    const-wide/16 v0, 0x0

    .line 450
    .local v0, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 451
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 452
    aget-object v4, p0, v2

    aget-wide v4, v4, v3

    add-double/2addr v0, v4

    .line 451
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 450
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    .end local v2    # "i":I
    :cond_1
    return-wide v0
.end method

.method public static sum([I)I
    .locals 3
    .param p0, "a"    # [I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "sum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 401
    aget v2, p0, v1

    add-int/2addr v0, v2

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static sum([[I)I
    .locals 4
    .param p0, "a"    # [[I
    .annotation runtime Lorg/checkerframework/common/value/qual/StaticallyExecutable;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, "sum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 417
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 418
    aget-object v3, p0, v1

    aget v3, v3, v2

    add-int/2addr v0, v3

    .line 417
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 416
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "a"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 2087
    if-nez p0, :cond_0

    .line 2088
    const-string v0, "null"

    return-object v0

    .line 2089
    :cond_0
    instance-of v0, p0, [Z

    if-eqz v0, :cond_1

    .line 2090
    move-object v0, p0

    check-cast v0, [Z

    check-cast v0, [Z

    invoke-static {v0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2091
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 2092
    move-object v0, p0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2093
    :cond_2
    instance-of v0, p0, [C

    if-eqz v0, :cond_3

    .line 2094
    move-object v0, p0

    check-cast v0, [C

    check-cast v0, [C

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2095
    :cond_3
    instance-of v0, p0, [D

    if-eqz v0, :cond_4

    .line 2096
    move-object v0, p0

    check-cast v0, [D

    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2097
    :cond_4
    instance-of v0, p0, [F

    if-eqz v0, :cond_5

    .line 2098
    move-object v0, p0

    check-cast v0, [F

    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2099
    :cond_5
    instance-of v0, p0, [I

    if-eqz v0, :cond_6

    .line 2100
    move-object v0, p0

    check-cast v0, [I

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2101
    :cond_6
    instance-of v0, p0, [J

    if-eqz v0, :cond_7

    .line 2102
    move-object v0, p0

    check-cast v0, [J

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2103
    :cond_7
    instance-of v0, p0, [S

    if-eqz v0, :cond_8

    .line 2104
    move-object v0, p0

    check-cast v0, [S

    check-cast v0, [S

    invoke-static {v0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2105
    :cond_8
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 2106
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2107
    :cond_9
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_a

    .line 2109
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2111
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument is not an array, but has class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 2224
    .local p0, "a":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->toString(Ljava/util/Collection;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/util/Collection;Z)Ljava/lang/String;
    .locals 5
    .param p1, "quoted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 2252
    .local p0, "a":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p0, :cond_0

    .line 2253
    const-string v0, "null"

    return-object v0

    .line 2255
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2256
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2257
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2258
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2259
    .local v1, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2260
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2261
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2262
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2263
    .local v2, "elt":Ljava/lang/Object;
    if-eqz p1, :cond_1

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2264
    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2265
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->escapeNonJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2266
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2268
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2270
    .end local v2    # "elt":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 2272
    .end local v1    # "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "a"    # [Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 2162
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->toString([Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 5
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "quoted"    # Z
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 2191
    if-nez p0, :cond_0

    .line 2192
    const-string v0, "null"

    return-object v0

    .line 2194
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2195
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2196
    array-length v1, p0

    if-lez v1, :cond_2

    .line 2197
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2198
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2199
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2200
    if-eqz p1, :cond_1

    aget-object v2, p0, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2201
    aget-object v2, p0, v1

    check-cast v2, Ljava/lang/String;

    .line 2202
    .local v2, "elt":Ljava/lang/String;
    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2203
    invoke-static {v2}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->escapeNonJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2204
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2205
    .end local v2    # "elt":Ljava/lang/String;
    goto :goto_1

    .line 2206
    :cond_1
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2198
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2210
    .end local v1    # "i":I
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toStringQuoted(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 2237
    .local p0, "a":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->toString(Ljava/util/Collection;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringQuoted([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "a"    # [Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 2175
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->toString([Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toTArray(Ljava/util/List;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1591
    .local p0, "lst":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 1592
    .local v0, "asArray":[Ljava/lang/Object;, "[TT;"
    return-object v0
.end method
