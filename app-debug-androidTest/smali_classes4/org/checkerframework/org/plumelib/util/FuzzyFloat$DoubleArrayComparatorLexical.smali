.class public Lorg/checkerframework/org/plumelib/util/FuzzyFloat$DoubleArrayComparatorLexical;
.super Ljava/lang/Object;
.source "FuzzyFloat.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/FuzzyFloat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DoubleArrayComparatorLexical"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[D>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1337a1cL


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/plumelib/util/FuzzyFloat;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/plumelib/util/FuzzyFloat;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/org/plumelib/util/FuzzyFloat;

    .line 332
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/FuzzyFloat$DoubleArrayComparatorLexical;->this$0:Lorg/checkerframework/org/plumelib/util/FuzzyFloat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 332
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/plumelib/util/FuzzyFloat$DoubleArrayComparatorLexical;->compare([D[D)I

    move-result p1

    return p1
.end method

.method public compare([D[D)I
    .locals 7
    .param p1, "a1"    # [D
    .param p2, "a2"    # [D
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 345
    if-ne p1, p2, :cond_0

    .line 346
    const/4 v0, 0x0

    return v0

    .line 348
    :cond_0
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 349
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 350
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/util/FuzzyFloat$DoubleArrayComparatorLexical;->this$0:Lorg/checkerframework/org/plumelib/util/FuzzyFloat;

    aget-wide v3, p1, v1

    aget-wide v5, p2, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/checkerframework/org/plumelib/util/FuzzyFloat;->ne(DD)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 351
    aget-wide v2, p1, v1

    aget-wide v4, p2, v1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    return v2

    .line 349
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v1    # "i":I
    :cond_3
    array-length v1, p1

    array-length v2, p2

    sub-int/2addr v1, v2

    return v1
.end method
