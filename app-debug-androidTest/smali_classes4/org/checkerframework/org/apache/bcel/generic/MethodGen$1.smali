.class final Lorg/checkerframework/org/apache/bcel/generic/MethodGen$1;
.super Ljava/lang/Object;
.source "MethodGen.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/util/BCELComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 94
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 95
    .local v0, "THIS":Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    move-object v1, p2

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 96
    .local v1, "THAT":Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 96
    :goto_0
    return v2
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 103
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 104
    .local v0, "THIS":Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method
