.class public Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;
.super Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.source "BootstrapMethods.java"


# instance fields
.field private bootstrap_methods:[Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;


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

    .line 67
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;-><init>(II[Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 69
    invoke-interface {p3}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 70
    .local v0, "num_bootstrap_methods":I
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->bootstrap_methods:[Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    .line 71
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 72
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->bootstrap_methods:[Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    invoke-direct {v3, p3}, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;-><init>(Ljava/io/DataInput;)V

    aput-object v3, v2, v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(II[Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 1
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "bootstrap_methods"    # [Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 53
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1, p2, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;-><init>(BIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 54
    iput-object p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->bootstrap_methods:[Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;)V
    .locals 4
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;

    .line 42
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->getNameIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->getLength()I

    move-result v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->getBootstrapMethods()[Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    move-result-object v2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;-><init>(II[Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 43
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 95
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitBootstrapMethods(Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;)V

    .line 96
    return-void
.end method

.method public bridge synthetic copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;
    .locals 4
    .param p1, "_constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 103
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;

    .line 104
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->bootstrap_methods:[Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    array-length v1, v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->bootstrap_methods:[Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    .line 106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->bootstrap_methods:[Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 107
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->bootstrap_methods:[Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->copy()Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    move-result-object v2

    aput-object v2, v3, v1

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->setConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 110
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

    .line 121
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    .line 123
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->bootstrap_methods:[Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 124
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->bootstrap_methods:[Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 125
    .local v3, "bootstrap_method":Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;
    invoke-virtual {v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->dump(Ljava/io/DataOutputStream;)V

    .line 124
    .end local v3    # "bootstrap_method":Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method

.method public final getBootstrapMethods()[Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->bootstrap_methods:[Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    return-object v0
.end method

.method public final setBootstrapMethods([Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;)V
    .locals 0
    .param p1, "bootstrap_methods"    # [Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    .line 87
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->bootstrap_methods:[Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    .line 88
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "BootstrapMethods("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->bootstrap_methods:[Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, "):\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->bootstrap_methods:[Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 139
    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethods;->bootstrap_methods:[Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    aget-object v2, v2, v1

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->toString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
