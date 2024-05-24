.class public Lorg/checkerframework/org/apache/bcel/verifier/statics/IntList;
.super Ljava/lang/Object;
.source "IntList.java"


# instance fields
.field private final theList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/IntList;->theList:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method add(I)V
    .locals 2
    .param p1, "i"    # I

    .line 38
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/IntList;->theList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method contains(I)Z
    .locals 6
    .param p1, "i"    # I

    .line 42
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/IntList;->theList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Integer;

    .line 43
    .local v0, "ints":[Ljava/lang/Integer;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/IntList;->theList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 44
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 45
    .local v4, "k":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 46
    const/4 v1, 0x1

    return v1

    .line 44
    .end local v4    # "k":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    :cond_1
    return v2
.end method
