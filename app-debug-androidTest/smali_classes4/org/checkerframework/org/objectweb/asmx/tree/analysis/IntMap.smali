.class Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;
.super Ljava/lang/Object;
.source "IntMap.java"


# instance fields
.field private keys:[Ljava/lang/Object;

.field private size:I

.field private values:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;->size:I

    .line 47
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;->keys:[Ljava/lang/Object;

    .line 48
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;->values:[I

    .line 49
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)I
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;

    .line 52
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;->size:I

    .line 53
    .local v0, "n":I
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    rem-int/2addr v1, v0

    .line 54
    .local v1, "h":I
    move v2, v1

    .line 55
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;->keys:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-eq v3, p1, :cond_1

    .line 56
    add-int/lit8 v3, v2, 0x1

    rem-int v2, v3, v0

    .line 57
    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find index of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    :cond_1
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;->values:[I

    aget v3, v3, v2

    return v3
.end method

.method public put(Ljava/lang/Object;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # I

    .line 65
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;->size:I

    .line 66
    .local v0, "n":I
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    rem-int/2addr v1, v0

    .line 67
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;->keys:[Ljava/lang/Object;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 68
    add-int/lit8 v2, v1, 0x1

    rem-int v1, v2, v0

    goto :goto_0

    .line 70
    :cond_0
    aput-object p1, v2, v1

    .line 71
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/IntMap;->values:[I

    aput p2, v2, v1

    .line 72
    return-void
.end method
