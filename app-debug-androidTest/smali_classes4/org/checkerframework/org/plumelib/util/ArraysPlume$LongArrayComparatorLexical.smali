.class public final Lorg/checkerframework/org/plumelib/util/ArraysPlume$LongArrayComparatorLexical;
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
    name = "LongArrayComparatorLexical"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[J>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1337a1cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2883
    check-cast p1, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$LongArrayComparatorLexical;->compare([J[J)I

    move-result p1

    return p1
.end method

.method public compare([J[J)I
    .locals 6
    .param p1, "a1"    # [J
    .param p2, "a2"    # [J
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2897
    if-ne p1, p2, :cond_0

    .line 2898
    const/4 v0, 0x0

    return v0

    .line 2900
    :cond_0
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2901
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 2902
    aget-wide v2, p1, v1

    aget-wide v4, p2, v1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 2903
    aget-wide v2, p1, v1

    aget-wide v4, p2, v1

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    return v2

    .line 2901
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2906
    .end local v1    # "i":I
    :cond_3
    array-length v1, p1

    array-length v2, p2

    sub-int/2addr v1, v2

    return v1
.end method
