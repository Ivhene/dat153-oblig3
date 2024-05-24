.class public final Lorg/checkerframework/org/plumelib/util/ArraysPlume$IntArrayComparatorLengthFirst;
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
    name = "IntArrayComparatorLengthFirst"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[I>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1337a1cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 3111
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$IntArrayComparatorLengthFirst;->compare([I[I)I

    move-result p1

    return p1
.end method

.method public compare([I[I)I
    .locals 4
    .param p1, "a1"    # [I
    .param p2, "a2"    # [I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 3126
    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 3127
    return v0

    .line 3129
    :cond_0
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_1

    .line 3130
    array-length v0, p1

    array-length v1, p2

    sub-int/2addr v0, v1

    return v0

    .line 3132
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 3133
    aget v2, p1, v1

    aget v3, p2, v1

    if-eq v2, v3, :cond_3

    .line 3134
    aget v0, p1, v1

    aget v2, p2, v1

    if-le v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    return v0

    .line 3132
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3137
    .end local v1    # "i":I
    :cond_4
    return v0
.end method
