.class public Lorg/checkerframework/org/objectweb/asmx/tree/LookupSwitchInsnNode;
.super Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
.source "LookupSwitchInsnNode.java"


# instance fields
.field public dflt:Lorg/checkerframework/org/objectweb/asmx/Label;

.field public keys:Ljava/util/List;

.field public labels:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 4
    .param p1, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 76
    const/16 v0, 0xab

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;-><init>(I)V

    .line 77
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LookupSwitchInsnNode;->dflt:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, p2

    :goto_0
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    array-length v1, p3

    :goto_1
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    .line 80
    if-eqz p2, :cond_2

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 82
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    new-instance v2, Ljava/lang/Integer;

    aget v3, p2, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 85
    .end local v0    # "i":I
    :cond_2
    if-eqz p3, :cond_3

    .line 86
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    :cond_3
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 3
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 91
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 92
    .local v0, "keys":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 93
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 96
    .local v1, "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 97
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/LookupSwitchInsnNode;->dflt:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-interface {p1, v2, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 98
    return-void
.end method

.method public getType()I
    .locals 1

    .line 101
    const/16 v0, 0xc

    return v0
.end method
