.class public final Lorg/checkerframework/org/plumelib/util/ArraysPlume$ObjectArrayComparatorLexical;
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
    name = "ObjectArrayComparatorLexical"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1337a1cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 3068
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ObjectArrayComparatorLexical;->compare([Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public compare([Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 5
    .param p1, "a1"    # [Ljava/lang/Object;
    .param p2, "a2"    # [Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 3089
    if-ne p1, p2, :cond_0

    .line 3090
    const/4 v0, 0x0

    return v0

    .line 3092
    :cond_0
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3093
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3094
    invoke-static {}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->access$100()Lorg/checkerframework/org/plumelib/util/UtilPlume$ObjectComparator;

    move-result-object v2

    aget-object v3, p1, v1

    aget-object v4, p2, v1

    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/org/plumelib/util/UtilPlume$ObjectComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 3095
    .local v2, "tmp":I
    if-eqz v2, :cond_1

    .line 3096
    return v2

    .line 3093
    .end local v2    # "tmp":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3099
    .end local v1    # "i":I
    :cond_2
    array-length v1, p1

    array-length v2, p2

    sub-int/2addr v1, v2

    return v1
.end method
