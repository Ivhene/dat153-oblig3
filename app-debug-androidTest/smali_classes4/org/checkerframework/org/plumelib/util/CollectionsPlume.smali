.class public final Lorg/checkerframework/org/plumelib/util/CollectionsPlume;
.super Ljava/lang/Object;
.source "CollectionsPlume.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/plumelib/util/CollectionsPlume$RemoveFirstAndLastIterator;,
        Lorg/checkerframework/org/plumelib/util/CollectionsPlume$FilteredIterator;,
        Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator;,
        Lorg/checkerframework/org/plumelib/util/CollectionsPlume$MergedIterator2;,
        Lorg/checkerframework/org/plumelib/util/CollectionsPlume$IteratorEnumeration;,
        Lorg/checkerframework/org/plumelib/util/CollectionsPlume$EnumerationIterator;
    }
.end annotation


# static fields
.field private static deepEqualsUnderway:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/checkerframework/org/plumelib/util/WeakIdentityPair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final lineSep:Ljava/lang/String;

.field private static r:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->lineSep:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->deepEqualsUnderway:Ljava/util/HashSet;

    .line 663
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->r:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Error;

    const-string v1, "do not instantiate"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static choose(II)J
    .locals 11
    .param p0, "n"    # I
    .param p1, "k"    # I

    .line 198
    const-wide/16 v0, 0x0

    if-ge p0, p1, :cond_0

    .line 199
    return-wide v0

    .line 201
    :cond_0
    if-eqz p1, :cond_4

    if-ne p1, p0, :cond_1

    goto :goto_1

    .line 204
    :cond_1
    add-int/lit8 v2, p0, -0x1

    add-int/lit8 v3, p1, -0x1

    invoke-static {v2, v3}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->choose(II)J

    move-result-wide v2

    .line 205
    .local v2, "a":J
    add-int/lit8 v4, p0, -0x1

    invoke-static {v4, p1}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->choose(II)J

    move-result-wide v4

    .line 206
    .local v4, "b":J
    cmp-long v6, v2, v0

    const-wide v7, 0x7fffffffffffffffL

    if-ltz v6, :cond_3

    cmp-long v6, v2, v7

    if-eqz v6, :cond_3

    cmp-long v6, v4, v0

    if-ltz v6, :cond_3

    cmp-long v6, v4, v7

    if-eqz v6, :cond_3

    add-long v9, v2, v4

    cmp-long v0, v9, v0

    if-gez v0, :cond_2

    goto :goto_0

    .line 209
    :cond_2
    add-long v0, v2, v4

    return-wide v0

    .line 207
    :cond_3
    :goto_0
    return-wide v7

    .line 202
    .end local v2    # "a":J
    .end local v4    # "b":J
    :cond_4
    :goto_1
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public static createCombinations(III)Ljava/util/ArrayList;
    .locals 9
    .param p0, "arity"    # I
    .param p1, "start"    # I
    .param p2, "cnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 298
    add-int v0, p2, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p0}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->choose(II)J

    move-result-wide v0

    .line 299
    .local v0, "numResults":J
    const-wide/32 v2, 0x5f5e100

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 303
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    if-nez p0, :cond_0

    .line 307
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    return-object v2

    .line 311
    :cond_0
    move v3, p1

    .local v3, "i":I
    :goto_0
    if-gt v3, p2, :cond_2

    .line 312
    add-int/lit8 v4, p0, -0x1

    invoke-static {v4, v3, p2}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->createCombinations(III)Ljava/util/ArrayList;

    move-result-object v4

    .line 313
    .local v4, "combos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 314
    .local v6, "li":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v7, "simple":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 317
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .end local v6    # "li":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "simple":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 311
    .end local v4    # "combos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    .end local v3    # "i":I
    :cond_2
    return-object v2

    .line 300
    .end local v2    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_3
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Do you really want to create more than 100 million lists?"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createCombinations(IILjava/util/List;)Ljava/util/List;
    .locals 10
    .param p0, "dims"    # I
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 242
    .local p2, "objs":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x1

    if-lt p0, v0, :cond_4

    .line 246
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p0

    sub-int/2addr v1, v0

    invoke-static {v1, p0}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->choose(II)J

    move-result-wide v1

    .line 247
    .local v1, "numResults":J
    const-wide/32 v3, 0x5f5e100

    cmp-long v3, v1, v3

    if-gtz v3, :cond_3

    .line 251
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    move v4, p1

    .local v4, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 254
    if-ne p0, v0, :cond_0

    .line 255
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v5, "simple":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    .end local v5    # "simple":Ljava/util/List;, "Ljava/util/List<TT;>;"
    goto :goto_2

    .line 259
    :cond_0
    add-int/lit8 v5, p0, -0x1

    invoke-static {v5, v4, p2}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->createCombinations(IILjava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 260
    .local v5, "combos":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 261
    .local v7, "lt":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v8, "simple":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-interface {v8, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    .end local v7    # "lt":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v8    # "simple":Ljava/util/List;, "Ljava/util/List<TT;>;"
    goto :goto_1

    .line 253
    .end local v5    # "combos":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 269
    .end local v4    # "i":I
    :cond_2
    return-object v3

    .line 248
    .end local v3    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :cond_3
    new-instance v0, Ljava/lang/Error;

    const-string v3, "Do you really want to create more than 100 million lists?"

    invoke-direct {v0, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    .end local v1    # "numResults":J
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 99
    .local v2, "sameObject":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 100
    return v1

    .line 102
    :cond_1
    if-eqz p0, :cond_11

    if-nez p1, :cond_2

    goto/16 :goto_2

    .line 106
    :cond_2
    instance-of v3, p0, [Z

    if-eqz v3, :cond_3

    instance-of v3, p1, [Z

    if-eqz v3, :cond_3

    .line 107
    move-object v0, p0

    check-cast v0, [Z

    check-cast v0, [Z

    move-object v1, p1

    check-cast v1, [Z

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    return v0

    .line 109
    :cond_3
    instance-of v3, p0, [B

    if-eqz v3, :cond_4

    instance-of v3, p1, [B

    if-eqz v3, :cond_4

    .line 110
    move-object v0, p0

    check-cast v0, [B

    check-cast v0, [B

    move-object v1, p1

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 112
    :cond_4
    instance-of v3, p0, [C

    if-eqz v3, :cond_5

    instance-of v3, p1, [C

    if-eqz v3, :cond_5

    .line 113
    move-object v0, p0

    check-cast v0, [C

    check-cast v0, [C

    move-object v1, p1

    check-cast v1, [C

    check-cast v1, [C

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    return v0

    .line 115
    :cond_5
    instance-of v3, p0, [D

    if-eqz v3, :cond_6

    instance-of v3, p1, [D

    if-eqz v3, :cond_6

    .line 116
    move-object v0, p0

    check-cast v0, [D

    check-cast v0, [D

    move-object v1, p1

    check-cast v1, [D

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    return v0

    .line 118
    :cond_6
    instance-of v3, p0, [F

    if-eqz v3, :cond_7

    instance-of v3, p1, [F

    if-eqz v3, :cond_7

    .line 119
    move-object v0, p0

    check-cast v0, [F

    check-cast v0, [F

    move-object v1, p1

    check-cast v1, [F

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    return v0

    .line 121
    :cond_7
    instance-of v3, p0, [I

    if-eqz v3, :cond_8

    instance-of v3, p1, [I

    if-eqz v3, :cond_8

    .line 122
    move-object v0, p0

    check-cast v0, [I

    check-cast v0, [I

    move-object v1, p1

    check-cast v1, [I

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0

    .line 124
    :cond_8
    instance-of v3, p0, [J

    if-eqz v3, :cond_9

    instance-of v3, p1, [J

    if-eqz v3, :cond_9

    .line 125
    move-object v0, p0

    check-cast v0, [J

    check-cast v0, [J

    move-object v1, p1

    check-cast v1, [J

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0

    .line 127
    :cond_9
    instance-of v3, p0, [S

    if-eqz v3, :cond_a

    instance-of v3, p1, [S

    if-eqz v3, :cond_a

    .line 128
    move-object v0, p0

    check-cast v0, [S

    check-cast v0, [S

    move-object v1, p1

    check-cast v1, [S

    check-cast v1, [S

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    return v0

    .line 132
    :cond_a
    new-instance v3, Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;

    invoke-direct {v3, p0, p1}, Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .local v3, "mypair":Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityPair<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v4, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->deepEqualsUnderway:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 134
    return v1

    .line 137
    :cond_b
    instance-of v4, p0, [Ljava/lang/Object;

    if-eqz v4, :cond_c

    instance-of v4, p1, [Ljava/lang/Object;

    if-eqz v4, :cond_c

    .line 138
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 141
    :cond_c
    instance-of v4, p0, Ljava/util/List;

    if-eqz v4, :cond_10

    instance-of v4, p1, Ljava/util/List;

    if-eqz v4, :cond_10

    .line 142
    move-object v4, p0

    check-cast v4, Ljava/util/List;

    .line 143
    .local v4, "l1":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v5, p1

    check-cast v5, Ljava/util/List;

    .line 144
    .local v5, "l2":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_d

    .line 145
    return v0

    .line 148
    :cond_d
    :try_start_0
    sget-object v6, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->deepEqualsUnderway:Ljava/util/HashSet;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_f

    .line 150
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 151
    .local v7, "e1":Ljava/lang/Object;
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 152
    .local v8, "e2":Ljava/lang/Object;
    invoke-static {v7, v8}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_e

    .line 153
    nop

    .line 157
    sget-object v1, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->deepEqualsUnderway:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 153
    return v0

    .line 149
    .end local v7    # "e1":Ljava/lang/Object;
    .end local v8    # "e2":Ljava/lang/Object;
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 157
    .end local v6    # "i":I
    :cond_f
    sget-object v0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->deepEqualsUnderway:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 158
    nop

    .line 160
    return v1

    .line 157
    :catchall_0
    move-exception v0

    sget-object v1, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->deepEqualsUnderway:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 158
    throw v0

    .line 163
    .end local v4    # "l1":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v5    # "l2":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_10
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 103
    .end local v3    # "mypair":Lorg/checkerframework/org/plumelib/util/WeakIdentityPair;, "Lorg/checkerframework/org/plumelib/util/WeakIdentityPair<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_11
    :goto_2
    return v0
.end method

.method public static getFromSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 831
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 832
    return-object v0

    .line 834
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 835
    .local v2, "elt":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 836
    return-object v2

    .line 838
    .end local v2    # "elt":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 839
    :cond_2
    return-object v0
.end method

.method public static incrementMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Integer;",
            ">;TK;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 724
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/lang/Integer;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->incrementMap(Ljava/util/Map;Ljava/lang/Object;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static incrementMap(Ljava/util/Map;Ljava/lang/Object;I)Ljava/lang/Integer;
    .locals 3
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Integer;",
            ">;TK;I)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 739
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/lang/Integer;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 741
    .local v0, "old":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 742
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "newTotal":Ljava/lang/Integer;
    goto :goto_0

    .line 744
    .end local v1    # "newTotal":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 746
    .restart local v1    # "newTotal":Ljava/lang/Integer;
    :goto_0
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    return-object v2
.end method

.method public static iteratorToIterable(Ljava/util/Iterator;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 340
    .local p0, "source":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    if-eqz p0, :cond_0

    .line 343
    new-instance v0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume$1;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static makeArrayList(Ljava/util/Enumeration;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 178
    .local p0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_0
    return-object v0
.end method

.method public static mapToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 758
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 759
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, ""

    invoke-static {v0, p0, v1}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->mapToString(Ljava/lang/Appendable;Ljava/util/Map;Ljava/lang/String;)V

    .line 760
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static mapToString(Ljava/lang/Appendable;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/Appendable;
    .param p2, "linePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Appendable;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 775
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 776
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 777
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 778
    const-string v2, " => "

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 779
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 780
    sget-object v2, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->lineSep:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    nop

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 784
    :cond_0
    nop

    .line 785
    return-void

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static randomElements(Ljava/util/Iterator;I)Ljava/util/List;
    .locals 1
    .param p1, "numElts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 659
    .local p0, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    sget-object v0, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->r:Ljava/util/Random;

    invoke-static {p0, p1, v0}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->randomElements(Ljava/util/Iterator;ILjava/util/Random;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static randomElements(Ljava/util/Iterator;ILjava/util/Random;)Ljava/util/List;
    .locals 2
    .param p1, "numElts"    # I
    .param p2, "random"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;I",
            "Ljava/util/Random;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 681
    .local p0, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    new-instance v0, Lorg/checkerframework/org/plumelib/util/RandomSelector;

    invoke-direct {v0, p1, p2}, Lorg/checkerframework/org/plumelib/util/RandomSelector;-><init>(ILjava/util/Random;)V

    .line 683
    .local v0, "rs":Lorg/checkerframework/org/plumelib/util/RandomSelector;, "Lorg/checkerframework/org/plumelib/util/RandomSelector<TT;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 684
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/plumelib/util/RandomSelector;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 686
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/RandomSelector;->getValues()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static removeDuplicates(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 70
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 71
    .local v0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    return-object v1
.end method

.method public static sortList(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 55
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 57
    return-object v0
.end method

.method public static sortedKeySet(Ljava/util/Map;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Collection<",
            "TK;>;"
        }
    .end annotation

    .line 797
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 798
    .local v0, "theKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TK;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 799
    return-object v0
.end method

.method public static sortedKeySet(Ljava/util/Map;Ljava/util/Comparator;)Ljava/util/Collection;
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
            "TK;>;)",
            "Ljava/util/Collection<",
            "TK;>;"
        }
    .end annotation

    .line 813
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 814
    .local v0, "theKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TK;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 815
    return-object v0
.end method
