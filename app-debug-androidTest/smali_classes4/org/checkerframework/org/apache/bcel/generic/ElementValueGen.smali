.class public abstract Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;
.super Ljava/lang/Object;
.source "ElementValueGen.java"


# static fields
.field public static final ANNOTATION:I = 0x40

.field public static final ARRAY:I = 0x5b

.field public static final CLASS:I = 0x63

.field public static final ENUM_CONSTANT:I = 0x65

.field public static final PRIMITIVE_BOOLEAN:I = 0x5a

.field public static final PRIMITIVE_BYTE:I = 0x42

.field public static final PRIMITIVE_CHAR:I = 0x43

.field public static final PRIMITIVE_DOUBLE:I = 0x44

.field public static final PRIMITIVE_FLOAT:I = 0x46

.field public static final PRIMITIVE_INT:I = 0x49

.field public static final PRIMITIVE_LONG:I = 0x4a

.field public static final PRIMITIVE_SHORT:I = 0x53

.field public static final STRING:I = 0x73


# instance fields
.field protected cpGen:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected type:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "cpGen"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->type:I

    .line 52
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->cpGen:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 53
    return-void
.end method

.method public static copy(Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;
    .locals 3
    .param p0, "value"    # Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    .param p1, "cpool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p2, "copyPoolEntries"    # Z

    .line 165
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getElementValueType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 191
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not implemented yet! ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getElementValueType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :sswitch_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;

    move-object v1, p0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;

    invoke-direct {v0, v1, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V

    return-object v0

    .line 188
    :sswitch_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassElementValueGen;

    move-object v1, p0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ClassElementValue;

    invoke-direct {v0, v1, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/ClassElementValueGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/ClassElementValue;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V

    return-object v0

    .line 185
    :sswitch_2
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayElementValueGen;

    move-object v1, p0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ArrayElementValue;

    invoke-direct {v0, v1, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/ArrayElementValueGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/ArrayElementValue;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V

    return-object v0

    .line 176
    :sswitch_3
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;

    move-object v1, p0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;

    invoke-direct {v0, v1, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V

    return-object v0

    .line 182
    :sswitch_4
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/AnnotationElementValueGen;

    move-object v1, p0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationElementValue;

    invoke-direct {v0, v1, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationElementValueGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/AnnotationElementValue;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V

    return-object v0

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

.method public static readElementValue(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;
    .locals 5
    .param p0, "dis"    # Ljava/io/DataInput;
    .param p1, "cpGen"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 99
    .local v0, "type":I
    sparse-switch v0, :sswitch_data_0

    .line 149
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

    .line 126
    :sswitch_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;

    const/16 v2, 0x73

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    invoke-direct {v1, v2, v3, p1}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;-><init>(IILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    return-object v1

    .line 129
    :sswitch_1
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    .line 130
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    invoke-direct {v1, v2, v3, p1}, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;-><init>(IILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 129
    return-object v1

    .line 132
    :sswitch_2
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/ClassElementValueGen;

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lorg/checkerframework/org/apache/bcel/generic/ClassElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    return-object v1

    .line 140
    :sswitch_3
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    .line 141
    .local v1, "numArrayVals":I
    new-array v2, v1, [Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    .line 142
    .local v2, "evalues":[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 144
    nop

    .line 145
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v4

    .line 144
    invoke-static {p0, v4}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->readElementValue(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    move-result-object v4

    aput-object v4, v2, v3

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    .end local v3    # "j":I
    :cond_0
    new-instance v3, Lorg/checkerframework/org/apache/bcel/generic/ArrayElementValueGen;

    const/16 v4, 0x5b

    invoke-direct {v3, v4, v2, p1}, Lorg/checkerframework/org/apache/bcel/generic/ArrayElementValueGen;-><init>(I[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    return-object v3

    .line 123
    .end local v1    # "numArrayVals":I
    .end local v2    # "evalues":[Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    :sswitch_4
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;

    .line 124
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    const/16 v3, 0x5a

    invoke-direct {v1, v3, v2, p1}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;-><init>(IILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 123
    return-object v1

    .line 120
    :sswitch_5
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;

    .line 121
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    const/16 v3, 0x53

    invoke-direct {v1, v3, v2, p1}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;-><init>(IILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 120
    return-object v1

    .line 117
    :sswitch_6
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;

    .line 118
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    const/16 v3, 0x4a

    invoke-direct {v1, v3, v2, p1}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;-><init>(IILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 117
    return-object v1

    .line 114
    :sswitch_7
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;

    .line 115
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    const/16 v3, 0x49

    invoke-direct {v1, v3, v2, p1}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;-><init>(IILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 114
    return-object v1

    .line 111
    :sswitch_8
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;

    .line 112
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    const/16 v3, 0x46

    invoke-direct {v1, v3, v2, p1}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;-><init>(IILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 111
    return-object v1

    .line 108
    :sswitch_9
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;

    .line 109
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    const/16 v3, 0x44

    invoke-direct {v1, v3, v2, p1}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;-><init>(IILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 108
    return-object v1

    .line 105
    :sswitch_a
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;

    .line 106
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    const/16 v3, 0x43

    invoke-direct {v1, v3, v2, p1}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;-><init>(IILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 105
    return-object v1

    .line 102
    :sswitch_b
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;

    .line 103
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    const/16 v3, 0x42

    invoke-direct {v1, v3, v2, p1}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;-><init>(IILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 102
    return-object v1

    .line 136
    :sswitch_c
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/AnnotationElementValueGen;

    new-instance v2, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    .line 138
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v3

    .line 137
    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->read(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Z)Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V

    const/16 v3, 0x40

    invoke-direct {v1, v3, v2, p1}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 136
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_c
        0x42 -> :sswitch_b
        0x43 -> :sswitch_a
        0x44 -> :sswitch_9
        0x46 -> :sswitch_8
        0x49 -> :sswitch_7
        0x4a -> :sswitch_6
        0x53 -> :sswitch_5
        0x5a -> :sswitch_4
        0x5b -> :sswitch_3
        0x63 -> :sswitch_2
        0x65 -> :sswitch_1
        0x73 -> :sswitch_0
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

.method protected getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->cpGen:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    return-object v0
.end method

.method public abstract getElementValue()Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
.end method

.method public getElementValueType()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->type:I

    return v0
.end method

.method public abstract stringifyValue()Ljava/lang/String;
.end method
