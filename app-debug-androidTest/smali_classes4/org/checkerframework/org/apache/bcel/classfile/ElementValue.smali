.class public abstract Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
.super Ljava/lang/Object;
.source "ElementValue.java"


# static fields
.field public static final ANNOTATION:B = 0x40t

.field public static final ARRAY:B = 0x5bt

.field public static final CLASS:B = 0x63t

.field public static final ENUM_CONSTANT:B = 0x65t

.field public static final PRIMITIVE_BOOLEAN:B = 0x5at

.field public static final PRIMITIVE_BYTE:B = 0x42t

.field public static final PRIMITIVE_CHAR:B = 0x43t

.field public static final PRIMITIVE_DOUBLE:B = 0x44t

.field public static final PRIMITIVE_FLOAT:B = 0x46t

.field public static final PRIMITIVE_INT:B = 0x49t

.field public static final PRIMITIVE_LONG:B = 0x4at

.field public static final PRIMITIVE_SHORT:B = 0x53t

.field public static final STRING:B = 0x73t


# instance fields
.field protected cpool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected type:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "cpool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->type:I

    .line 51
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->cpool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 52
    return-void
.end method

.method public static readElementValue(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    .locals 5
    .param p0, "input"    # Ljava/io/DataInput;
    .param p1, "cpool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 80
    .local v0, "type":B
    sparse-switch v0, :sswitch_data_0

    .line 113
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected element value kind in annotation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :sswitch_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    const/16 v4, 0x65

    invoke-direct {v1, v4, v2, v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;-><init>(IIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v1

    .line 97
    :sswitch_1
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ClassElementValue;

    const/16 v2, 0x63

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    invoke-direct {v1, v2, v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ClassElementValue;-><init>(IILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v1

    .line 104
    :sswitch_2
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    .line 105
    .local v1, "numArrayVals":I
    new-array v2, v1, [Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    .line 106
    .local v2, "evalues":[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 108
    invoke-static {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->readElementValue(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    move-result-object v4

    aput-object v4, v2, v3

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    .end local v3    # "j":I
    :cond_0
    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/ArrayElementValue;

    const/16 v4, 0x5b

    invoke-direct {v3, v4, v2, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ArrayElementValue;-><init>(I[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v3

    .line 91
    .end local v1    # "numArrayVals":I
    .end local v2    # "evalues":[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    :sswitch_3
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    invoke-direct {v1, v0, v2, p1}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;-><init>(IILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v1

    .line 101
    :sswitch_4
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationElementValue;

    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->read(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Z)Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    move-result-object v2

    const/16 v3, 0x40

    invoke-direct {v1, v3, v2, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationElementValue;-><init>(ILorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_4
        0x42 -> :sswitch_3
        0x43 -> :sswitch_3
        0x44 -> :sswitch_3
        0x46 -> :sswitch_3
        0x49 -> :sswitch_3
        0x4a -> :sswitch_3
        0x53 -> :sswitch_3
        0x5a -> :sswitch_3
        0x5b -> :sswitch_2
        0x63 -> :sswitch_1
        0x65 -> :sswitch_0
        0x73 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public abstract dump(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->cpool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    return-object v0
.end method

.method public getElementValueType()I
    .locals 1

    .line 56
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->type:I

    return v0
.end method

.method final getType()I
    .locals 1

    .line 124
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->type:I

    return v0
.end method

.method public abstract stringifyValue()Ljava/lang/String;
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->stringifyValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 45
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->stringifyValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
