.class public Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;
.super Ljava/lang/Object;
.source "BootstrapMethod.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private bootstrap_arguments:[I

.field private bootstrap_method_ref:I


# direct methods
.method private constructor <init>(II)V
    .locals 1
    .param p1, "bootstrap_method_ref"    # I
    .param p2, "num_bootstrap_arguments"    # I

    .line 68
    new-array v0, p2, [I

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;-><init>(I[I)V

    .line 69
    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 0
    .param p1, "bootstrap_method_ref"    # I
    .param p2, "bootstrap_arguments"    # [I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->bootstrap_method_ref:I

    .line 77
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->bootstrap_arguments:[I

    .line 78
    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 3
    .param p1, "input"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;-><init>(II)V

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->bootstrap_arguments:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 62
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    aput v2, v1, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;)V
    .locals 2
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;

    .line 49
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->getBootstrapMethodRef()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->getBootstrapArguments()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;-><init>(I[I)V

    .line 50
    return-void
.end method


# virtual methods
.method public copy()Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;
    .locals 1

    .line 164
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 165
    :catch_0
    move-exception v0

    .line 168
    const/4 v0, 0x0

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

    .line 151
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->bootstrap_method_ref:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 152
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->bootstrap_arguments:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 153
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->bootstrap_arguments:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 154
    .local v3, "bootstrap_argument":I
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 153
    .end local v3    # "bootstrap_argument":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method public getBootstrapArguments()[I
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->bootstrap_arguments:[I

    return-object v0
.end method

.method public getBootstrapMethodRef()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->bootstrap_method_ref:I

    return v0
.end method

.method public getNumBootstrapArguments()I
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->bootstrap_arguments:[I

    array-length v0, v0

    return v0
.end method

.method public setBootstrapArguments([I)V
    .locals 0
    .param p1, "bootstrap_arguments"    # [I

    .line 112
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->bootstrap_arguments:[I

    .line 113
    return-void
.end method

.method public setBootstrapMethodRef(I)V
    .locals 0
    .param p1, "bootstrap_method_ref"    # I

    .line 91
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->bootstrap_method_ref:I

    .line 92
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BootstrapMethod("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->bootstrap_method_ref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->bootstrap_arguments:[I

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->bootstrap_arguments:[I

    .line 121
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    return-object v0
.end method

.method public final toString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;
    .locals 6
    .param p1, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->bootstrap_method_ref:I

    const/16 v2, 0xf

    invoke-virtual {p1, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "bootstrap_method_name":Ljava/lang/String;
    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->bootstrap_arguments:[I

    array-length v2, v2

    .line 134
    .local v2, "num_bootstrap_arguments":I
    if-lez v2, :cond_0

    .line 135
    const-string v3, "\n     Method Arguments:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 137
    const-string v4, "\n     "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/classfile/BootstrapMethod;->bootstrap_arguments:[I

    aget v4, v4, v3

    invoke-virtual {p1, v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(Lorg/checkerframework/org/apache/bcel/classfile/Constant;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
