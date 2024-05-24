.class public final Lorg/checkerframework/org/plumelib/util/ArraysPlume$StringArrayComparatorLexical;
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
    name = "StringArrayComparatorLexical"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1337a1cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2955
    check-cast p1, [Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/plumelib/util/ArraysPlume$StringArrayComparatorLexical;->compare([Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "a1"    # [Ljava/lang/String;
    .param p2, "a2"    # [Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2976
    if-ne p1, p2, :cond_0

    .line 2977
    const/4 v0, 0x0

    return v0

    .line 2979
    :cond_0
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2980
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 2981
    const/4 v2, 0x0

    .line 2982
    .local v2, "tmp":I
    aget-object v3, p1, v1

    if-nez v3, :cond_1

    aget-object v3, p2, v1

    if-nez v3, :cond_1

    .line 2983
    const/4 v2, 0x0

    goto :goto_1

    .line 2984
    :cond_1
    aget-object v3, p1, v1

    if-nez v3, :cond_2

    .line 2985
    const/4 v2, -0x1

    goto :goto_1

    .line 2986
    :cond_2
    aget-object v3, p2, v1

    if-nez v3, :cond_3

    .line 2987
    const/4 v2, 0x1

    goto :goto_1

    .line 2989
    :cond_3
    aget-object v3, p1, v1

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 2991
    :goto_1
    if-eqz v2, :cond_4

    .line 2992
    return v2

    .line 2980
    .end local v2    # "tmp":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2995
    .end local v1    # "i":I
    :cond_5
    array-length v1, p1

    array-length v2, p2

    sub-int/2addr v1, v2

    return v1
.end method
