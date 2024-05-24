.class public Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;
.super Ljava/lang/Object;
.source "LocalVariableInfo.java"


# instance fields
.field private final names:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final types:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/bcel/generic/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;->types:Ljava/util/Hashtable;

    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;->names:Ljava/util/Hashtable;

    return-void
.end method

.method private add(ILjava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;)V
    .locals 5
    .param p1, "offset"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "t"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/apache/bcel/verifier/exc/LocalVariableInfoInconsistentException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;->getName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'."

    const-string v2, "\' and \'"

    const-string v3, "At bytecode offset \'"

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/LocalVariableInfoInconsistentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' a local variable has two different names: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 98
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;->getName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/LocalVariableInfoInconsistentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;->getType(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 102
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;->getType(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 103
    :cond_2
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/LocalVariableInfoInconsistentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' a local variable has two different types: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 104
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;->getType(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/LocalVariableInfoInconsistentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;->setName(ILjava/lang/String;)V

    .line 108
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;->setType(ILorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 109
    return-void
.end method

.method private setName(ILjava/lang/String;)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;->names:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method private setType(ILorg/checkerframework/org/apache/bcel/generic/Type;)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "t"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 53
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;->types:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;IILorg/checkerframework/org/apache/bcel/generic/Type;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "startpc"    # I
    .param p3, "length"    # I
    .param p4, "t"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/apache/bcel/verifier/exc/LocalVariableInfoInconsistentException;
        }
    .end annotation

    .line 84
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-gt v0, v1, :cond_0

    .line 85
    invoke-direct {p0, v0, p1, p4}, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;->add(ILjava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getName(I)Ljava/lang/String;
    .locals 2
    .param p1, "offset"    # I

    .line 76
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;->names:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType(I)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 2
    .param p1, "offset"    # I

    .line 65
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariableInfo;->types:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/Type;

    return-object v0
.end method
