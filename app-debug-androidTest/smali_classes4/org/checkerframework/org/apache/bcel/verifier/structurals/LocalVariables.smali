.class public Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;
.super Ljava/lang/Object;
.source "LocalVariables.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxLocals"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-array v0, p1, [Lorg/checkerframework/org/apache/bcel/generic/Type;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 45
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->UNKNOWN:Lorg/checkerframework/org/apache/bcel/generic/Type;

    aput-object v2, v1, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private merge(Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;I)V
    .locals 4
    .param p1, "lv"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;
    .param p2, "i"    # I

    .line 149
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aget-object v0, v0, p2

    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Backwards branch with an uninitialized object in the local variables detected."

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aget-object v1, v1, p2

    instance-of v1, v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    if-nez v1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;

    invoke-direct {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    .end local p1    # "lv":Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;
    .end local p2    # "i":I
    throw v0

    .line 154
    .restart local p1    # "lv":Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;
    .restart local p2    # "i":I
    :cond_1
    :goto_0
    iget-object v1, p1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aget-object v0, v0, p2

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aget-object v0, v0, p2

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    if-nez v0, :cond_2

    goto :goto_1

    .line 156
    :cond_2
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;

    invoke-direct {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    .end local p1    # "lv":Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;
    .end local p2    # "i":I
    throw v0

    .line 160
    .restart local p1    # "lv":Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;
    .restart local p2    # "i":I
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aget-object v1, v0, p2

    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    if-eqz v2, :cond_4

    .line 161
    iget-object v2, p1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aget-object v2, v2, p2

    instance-of v2, v2, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    if-nez v2, :cond_4

    .line 162
    check-cast v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;->getInitialized()Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v1

    aput-object v1, v0, p2

    .line 165
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aget-object v0, v0, p2

    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aget-object v1, v1, p2

    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-eqz v2, :cond_6

    .line 166
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 167
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aget-object v0, v0, p2

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    iget-object v1, p1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aget-object v1, v1, p2

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    move-object v2, v1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->getFirstCommonSuperclass(Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;)Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    move-result-object v0

    .line 169
    .local v0, "sup":Lorg/checkerframework/org/apache/bcel/generic/Type;
    if-eqz v0, :cond_5

    .line 170
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aput-object v0, v1, p2

    .line 177
    .end local v0    # "sup":Lorg/checkerframework/org/apache/bcel/generic/Type;
    goto :goto_2

    .line 174
    .restart local v0    # "sup":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_5
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not load all the super classes of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    .end local p1    # "lv":Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;
    .end local p2    # "i":I
    throw v1

    .line 180
    .end local v0    # "sup":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .restart local p1    # "lv":Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;
    .restart local p2    # "i":I
    :cond_6
    iget-object v1, p1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 188
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->UNKNOWN:Lorg/checkerframework/org/apache/bcel/generic/Type;

    aput-object v1, v0, p2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    :cond_7
    :goto_2
    nop

    .line 195
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 56
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;-><init>(I)V

    .line 57
    .local v0, "lvs":Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 58
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aget-object v2, v2, v1

    aput-object v2, v3, v1

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 108
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 109
    return v1

    .line 111
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    .line 112
    .local v0, "lv":Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    array-length v2, v2

    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    array-length v3, v3

    if-eq v2, v3, :cond_1

    .line 113
    return v1

    .line 115
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 116
    aget-object v3, v3, v2

    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 118
    return v1

    .line 115
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v2    # "i":I
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public get(I)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1
    .param p1, "i"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getClone()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    return-object v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    array-length v0, v0

    return v0
.end method

.method public initializeObject(Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;)V
    .locals 3
    .param p1, "u"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 219
    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 220
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;->getInitialized()Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v2

    aput-object v2, v1, v0

    .line 218
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public maxLocals()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    array-length v0, v0

    return v0
.end method

.method public merge(Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;)V
    .locals 2
    .param p1, "lv"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    .line 130
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    array-length v0, v0

    iget-object v1, p1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 135
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->merge(Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;I)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 131
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v1, "Merging LocalVariables of different size?!? From different methods or what?!?"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILorg/checkerframework/org/apache/bcel/generic/Type;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 92
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq p2, v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aput-object p2, v0, p1

    .line 96
    return-void

    .line 93
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalVariables do not know about \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. Use Type.INT instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 204
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->locals:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
