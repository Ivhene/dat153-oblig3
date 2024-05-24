.class public Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;
.super Ljava/lang/Object;
.source "DataflowValue.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;


# instance fields
.field public final insns:Ljava/util/Set;

.field public final size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 67
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->EMPTY_SET:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;-><init>(ILjava/util/Set;)V

    .line 68
    return-void
.end method

.method public constructor <init>(ILjava/util/Set;)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "insns"    # Ljava/util/Set;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->size:I

    .line 77
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->insns:Ljava/util/Set;

    .line 78
    return-void
.end method

.method public constructor <init>(ILorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "insn"    # Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->size:I

    .line 72
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->insns:Ljava/util/Set;

    .line 73
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 85
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;

    .line 86
    .local v0, "v":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->size:I

    iget v2, v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->size:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->insns:Ljava/util/Set;

    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->insns:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getSize()I
    .locals 1

    .line 81
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->size:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/DataflowValue;->insns:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
