.class public Lorg/checkerframework/org/objectweb/asmx/tree/TableSwitchInsnNode;
.super Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
.source "TableSwitchInsnNode.java"


# instance fields
.field public dflt:Lorg/checkerframework/org/objectweb/asmx/Label;

.field public labels:Ljava/util/List;

.field public max:I

.field public min:I


# direct methods
.method public constructor <init>(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 83
    const/16 v0, 0xaa

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;-><init>(I)V

    .line 84
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/TableSwitchInsnNode;->min:I

    .line 85
    iput p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/TableSwitchInsnNode;->max:I

    .line 86
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/TableSwitchInsnNode;->dflt:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    .line 88
    if-eqz p4, :cond_0

    .line 89
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 4
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 94
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 95
    .local v0, "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 96
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/TableSwitchInsnNode;->min:I

    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/TableSwitchInsnNode;->max:I

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/TableSwitchInsnNode;->dflt:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-interface {p1, v1, v2, v3, v0}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 97
    return-void
.end method

.method public getType()I
    .locals 1

    .line 100
    const/16 v0, 0xb

    return v0
.end method
