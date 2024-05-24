.class public Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
.super Ljava/lang/Object;
.source "OperandStack.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final maxStack:I

.field private stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/checkerframework/org/apache/bcel/generic/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxStack"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    .line 51
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->maxStack:I

    .line 52
    return-void
.end method

.method public constructor <init>(ILorg/checkerframework/org/apache/bcel/generic/ObjectType;)V
    .locals 1
    .param p1, "maxStack"    # I
    .param p2, "obj"    # Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    .line 59
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->maxStack:I

    .line 60
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 61
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    .line 81
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 69
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->maxStack:I

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;-><init>(I)V

    .line 71
    .local v0, "newstack":Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 72
    .local v1, "clone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/generic/Type;>;"
    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    .line 73
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 95
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    .line 99
    .local v0, "s":Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getClone()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    return-object v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    return v0
.end method

.method public initializeObject(Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;)V
    .locals 3
    .param p1, "u"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    .line 274
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 275
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 276
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;->getInitialized()Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public maxStack()I
    .locals 1

    .line 122
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->maxStack:I

    return v0
.end method

.method public merge(Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;)V
    .locals 5
    .param p1, "s"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->slotsUsed()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->slotsUsed()I

    move-result v1

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->size()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 236
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Backwards branch with an uninitialized object on the stack detected."

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    if-nez v1, :cond_0

    goto :goto_1

    .line 237
    :cond_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    .end local p1    # "s":Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    throw v1

    .line 241
    .restart local p1    # "s":Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/Type;

    iget-object v3, p1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    .line 242
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    if-eqz v1, :cond_2

    goto :goto_2

    .line 243
    :cond_2
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    .end local p1    # "s":Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    throw v1

    .line 246
    .restart local p1    # "s":Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    if-eqz v1, :cond_4

    .line 247
    iget-object v1, p1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    if-nez v1, :cond_4

    .line 248
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    move-object v3, v2

    check-cast v3, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;->getInitialized()Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_4
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/Type;

    iget-object v2, p1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 252
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    .line 253
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-eqz v1, :cond_5

    .line 254
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    iget-object v3, p1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    move-object v4, v3

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->getFirstCommonSuperclass(Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;)Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 257
    :cond_5
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot merge stacks of different types:\nStack A:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nStack B:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    .end local p1    # "s":Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    throw v1

    .line 233
    .restart local p1    # "s":Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 265
    .end local v0    # "i":I
    :cond_7
    nop

    .line 266
    return-void

    .line 229
    :cond_8
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot merge stacks of different size:\nOperandStack A:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nOperandStack B:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    .end local p1    # "s":Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    throw v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 262
    .restart local p1    # "s":Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    :catch_0
    move-exception v0

    .line 264
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

.method public peek()Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    return-object v0
.end method

.method public peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 2
    .param p1, "i"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->size()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/Type;

    return-object v0
.end method

.method public pop()Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 147
    .local v0, "e":Lorg/checkerframework/org/apache/bcel/generic/Type;
    return-object v0
.end method

.method public pop(I)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1
    .param p1, "i"    # I

    .line 154
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 155
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->pop()Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "j":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public push(Lorg/checkerframework/org/apache/bcel/generic/Type;)V
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 164
    if-eqz p1, :cond_2

    .line 167
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq p1, v0, :cond_1

    .line 170
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->slotsUsed()I

    move-result v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->maxStack:I

    if-ge v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    return-void

    .line 171
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OperandStack too small, should have thrown proper Exception elsewhere. Stack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The OperandStack does not know about \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'; use Type.INT instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_2
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v1, "Cannot push NULL onto OperandStack."

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public slotsUsed()I
    .locals 3

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "slots":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 196
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Slots used: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->slotsUsed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, " MaxStack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->maxStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, ".\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 213
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    const-string v2, " (Size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v2, ")\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
