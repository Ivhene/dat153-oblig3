.class public final Lorg/checkerframework/org/plumelib/util/ArraysPlume$ComparableArrayComparatorLengthFirst;
.super Ljava/lang/Object;
.source "ArraysPlume.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/ArraysPlume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComparableArrayComparatorLengthFirst"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final serialVersionUID:J = 0x1337a1cL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3187
    const-class v0, Lorg/checkerframework/org/plumelib/util/ArraysPlume;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3187
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/ArraysPlume$ComparableArrayComparatorLengthFirst;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$ComparableArrayComparatorLengthFirst<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 3187
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/ArraysPlume$ComparableArrayComparatorLengthFirst;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$ComparableArrayComparatorLengthFirst<TT;>;"
    check-cast p1, [Ljava/lang/Comparable;

    check-cast p2, [Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ComparableArrayComparatorLengthFirst;->compare([Ljava/lang/Comparable;[Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

.method public compare([Ljava/lang/Comparable;[Ljava/lang/Comparable;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;)I"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 3208
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/ArraysPlume$ComparableArrayComparatorLengthFirst;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$ComparableArrayComparatorLengthFirst<TT;>;"
    .local p1, "a1":[Ljava/lang/Comparable;, "[TT;"
    .local p2, "a2":[Ljava/lang/Comparable;, "[TT;"
    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 3209
    return v0

    .line 3211
    :cond_0
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_1

    .line 3212
    array-length v0, p1

    array-length v1, p2

    sub-int/2addr v0, v1

    return v0

    .line 3214
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_7

    .line 3215
    aget-object v2, p1, v1

    .line 3216
    .local v2, "elt1":Ljava/lang/Comparable;, "TT;"
    aget-object v3, p2, v1

    .line 3218
    .local v3, "elt2":Ljava/lang/Comparable;, "TT;"
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    .line 3219
    goto :goto_1

    .line 3221
    :cond_2
    if-nez v2, :cond_3

    .line 3222
    const/4 v0, -0x1

    return v0

    .line 3224
    :cond_3
    if-nez v3, :cond_4

    .line 3225
    const/4 v0, 0x1

    return v0

    .line 3227
    :cond_4
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    .line 3228
    .local v4, "tmp":I
    if-eqz v4, :cond_5

    .line 3229
    return v4

    .line 3232
    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3214
    .end local v2    # "elt1":Ljava/lang/Comparable;, "TT;"
    .end local v3    # "elt2":Ljava/lang/Comparable;, "TT;"
    .end local v4    # "tmp":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3232
    .restart local v2    # "elt1":Ljava/lang/Comparable;, "TT;"
    .restart local v3    # "elt2":Ljava/lang/Comparable;, "TT;"
    .restart local v4    # "tmp":I
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3234
    .end local v1    # "i":I
    .end local v2    # "elt1":Ljava/lang/Comparable;, "TT;"
    .end local v3    # "elt2":Ljava/lang/Comparable;, "TT;"
    .end local v4    # "tmp":I
    :cond_7
    return v0
.end method