.class public abstract Lorg/checkerframework/org/apache/bcel/classfile/Constant;
.super Ljava/lang/Object;
.source "Constant.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/checkerframework/org/apache/bcel/classfile/Node;


# static fields
.field private static bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;


# instance fields
.field protected tag:B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/Constant$1;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant$1;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    return-void
.end method

.method constructor <init>(B)V
    .locals 0
    .param p1, "tag"    # B

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-byte p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->tag:B

    .line 71
    return-void
.end method

.method public static getComparator()Lorg/checkerframework/org/apache/bcel/util/BCELComparator;
    .locals 1

    .line 183
    sget-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    return-object v0
.end method

.method public static readConstant(Ljava/io/DataInput;)Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    .locals 4
    .param p0, "input"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 139
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 140
    .local v0, "b":B
    packed-switch v0, :pswitch_data_0

    .line 174
    :pswitch_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid byte tag in constant pool: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :pswitch_1
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPackage;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPackage;-><init>(Ljava/io/DataInput;)V

    return-object v1

    .line 170
    :pswitch_2
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantModule;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantModule;-><init>(Ljava/io/DataInput;)V

    return-object v1

    .line 168
    :pswitch_3
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;-><init>(Ljava/io/DataInput;)V

    return-object v1

    .line 166
    :pswitch_4
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;-><init>(Ljava/io/DataInput;)V

    return-object v1

    .line 164
    :pswitch_5
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;-><init>(Ljava/io/DataInput;)V

    return-object v1

    .line 160
    :pswitch_6
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;-><init>(Ljava/io/DataInput;)V

    return-object v1

    .line 148
    :pswitch_7
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;-><init>(Ljava/io/DataInput;)V

    return-object v1

    .line 146
    :pswitch_8
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;-><init>(Ljava/io/DataInput;)V

    return-object v1

    .line 144
    :pswitch_9
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;-><init>(Ljava/io/DataInput;)V

    return-object v1

    .line 150
    :pswitch_a
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;-><init>(Ljava/io/DataInput;)V

    return-object v1

    .line 142
    :pswitch_b
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;-><init>(Ljava/io/DataInput;)V

    return-object v1

    .line 158
    :pswitch_c
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;-><init>(Ljava/io/DataInput;)V

    return-object v1

    .line 156
    :pswitch_d
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;-><init>(Ljava/io/DataInput;)V

    return-object v1

    .line 154
    :pswitch_e
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;-><init>(Ljava/io/DataInput;)V

    return-object v1

    .line 152
    :pswitch_f
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;-><init>(Ljava/io/DataInput;)V

    return-object v1

    .line 162
    :pswitch_10
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getInstance(Ljava/io/DataInput;)Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static setComparator(Lorg/checkerframework/org/apache/bcel/util/BCELComparator;)V
    .locals 0
    .param p0, "comparator"    # Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    .line 191
    sput-object p0, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    .line 192
    return-void
.end method


# virtual methods
.method public abstract accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
.end method

.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 123
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Clone Not Supported"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public copy()Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    .locals 1

    .line 112
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 113
    :catch_0
    move-exception v0

    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract dump(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 204
    sget-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    invoke-interface {v0, p0, p1}, Lorg/checkerframework/org/apache/bcel/util/BCELComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getTag()B
    .locals 1

    .line 93
    iget-byte v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->tag:B

    return v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 216
    sget-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    invoke-interface {v0, p0}, Lorg/checkerframework/org/apache/bcel/util/BCELComparator;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->tag:B

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/Const;->getConstantName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
