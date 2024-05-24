.class public final Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;
.super Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.source "InnerClasses.java"


# instance fields
.field private inner_classes:[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;


# direct methods
.method constructor <init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 4
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "input"    # Ljava/io/DataInput;
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;-><init>(II[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 76
    invoke-interface {p3}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 77
    .local v0, "number_of_classes":I
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->inner_classes:[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    .line 78
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 79
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->inner_classes:[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    invoke-direct {v3, p3}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;-><init>(Ljava/io/DataInput;)V

    aput-object v3, v2, v1

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(II[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 1
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "inner_classes"    # [Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 59
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;-><init>(BIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 60
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->inner_classes:[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;)V
    .locals 4
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;

    .line 47
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->getNameIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->getLength()I

    move-result v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->getInnerClasses()[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    move-result-object v2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;-><init>(II[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 48
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 93
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitInnerClasses(Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;)V

    .line 94
    return-void
.end method

.method public copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 4
    .param p1, "_constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 151
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;

    .line 152
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->inner_classes:[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    array-length v1, v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->inner_classes:[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    .line 153
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->inner_classes:[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 154
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->inner_classes:[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->copy()Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    move-result-object v2

    aput-object v2, v3, v1

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->setConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 157
    return-object v0
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "file"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    .line 106
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->inner_classes:[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 107
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->inner_classes:[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 108
    .local v3, "inner_class":Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    invoke-virtual {v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->dump(Ljava/io/DataOutputStream;)V

    .line 107
    .end local v3    # "inner_class":Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public final getInnerClasses()[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->inner_classes:[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    return-object v0
.end method

.method public final setInnerClasses([Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;)V
    .locals 1
    .param p1, "inner_classes"    # [Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    .line 125
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->inner_classes:[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    .line 126
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "InnerClasses("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->inner_classes:[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, "):\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->inner_classes:[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 139
    .local v4, "inner_class":Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->toString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .end local v4    # "inner_class":Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
