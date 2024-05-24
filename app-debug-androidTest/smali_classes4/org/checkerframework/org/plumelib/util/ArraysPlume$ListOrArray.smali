.class Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;
.super Ljava/lang/Object;
.source "ArraysPlume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/ArraysPlume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListOrArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field theArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field theList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1620
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray<TT;>;"
    .local p1, "theList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1602
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->theArray:[Ljava/lang/Object;

    .line 1604
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->theList:Ljava/util/List;

    .line 1621
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->theList:Ljava/util/List;

    .line 1622
    return-void
.end method

.method constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 1611
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray<TT;>;"
    .local p1, "theArray":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1602
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->theArray:[Ljava/lang/Object;

    .line 1604
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->theList:Ljava/util/List;

    .line 1612
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->theArray:[Ljava/lang/Object;

    .line 1613
    return-void
.end method


# virtual methods
.method copyInto([Ljava/lang/Object;I)V
    .locals 3
    .param p2, "destPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 1689
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray<TT;>;"
    .local p1, "dest":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->theArray:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1690
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 1691
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->theList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1692
    move v0, p2

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->theList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1697
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->theList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 1698
    .local v1, "index":I
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->theList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    .line 1692
    .end local v1    # "index":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1703
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 1701
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "both fields are null"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isEmpty()Z
    .locals 2

    .line 1654
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->theArray:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1655
    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1656
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->theList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1657
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0

    .line 1659
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "both fields are null"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isNull()Z
    .locals 1

    .line 1630
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->theArray:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->theList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method leastUpperBound()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1711
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->theArray:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1712
    invoke-static {v0}, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->leastUpperBound([Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 1713
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->theList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1714
    invoke-static {v0}, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->leastUpperBound(Ljava/util/List;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 1716
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "both fields are null"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method size()I
    .locals 2

    .line 1639
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->theArray:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1640
    array-length v0, v0

    return v0

    .line 1641
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->theList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1642
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1644
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "both fields are null"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method toArray()[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 1669
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;, "Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->theArray:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1670
    return-object v0

    .line 1671
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/ArraysPlume$ListOrArray;->theList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1672
    invoke-static {v0}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->access$000(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1674
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "both fields are null"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
