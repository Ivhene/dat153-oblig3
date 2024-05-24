.class public final Lorg/checkerframework/org/apache/bcel/classfile/Field;
.super Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;
.source "Field.java"


# static fields
.field private static bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/Field$1;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Field$1;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Field;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    return-void
.end method

.method public constructor <init>(III[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 0
    .param p1, "access_flags"    # I
    .param p2, "name_index"    # I
    .param p3, "signature_index"    # I
    .param p4, "attributes"    # [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .param p5, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 84
    invoke-direct/range {p0 .. p5}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;-><init>(III[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 85
    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 0
    .param p1, "file"    # Ljava/io/DataInput;
    .param p2, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;-><init>(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/Field;)V
    .locals 0
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/Field;

    .line 61
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;)V

    .line 62
    return-void
.end method

.method public static getComparator()Lorg/checkerframework/org/apache/bcel/util/BCELComparator;
    .locals 1

    .line 166
    sget-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Field;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    return-object v0
.end method

.method public static setComparator(Lorg/checkerframework/org/apache/bcel/util/BCELComparator;)V
    .locals 0
    .param p0, "comparator"    # Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    .line 174
    sput-object p0, Lorg/checkerframework/org/apache/bcel/classfile/Field;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    .line 175
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 97
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitField(Lorg/checkerframework/org/apache/bcel/classfile/Field;)V

    .line 98
    return-void
.end method

.method public final copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .locals 1
    .param p1, "_constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 150
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->copy_(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/Field;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 188
    sget-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Field;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    invoke-interface {v0, p0, p1}, Lorg/checkerframework/org/apache/bcel/util/BCELComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getConstantValue()Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;
    .locals 6

    .line 105
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 106
    .local v3, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getTag()B

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 107
    move-object v0, v3

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;

    return-object v0

    .line 105
    .end local v3    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1

    .line 158
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getReturnType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 200
    sget-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Field;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    invoke-interface {v0, p0}, Lorg/checkerframework/org/apache/bcel/util/BCELComparator;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 127
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->getAccessFlags()I

    move-result v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->accessToString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "access":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 129
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->signatureToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "signature":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 132
    .local v4, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getConstantValue()Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;

    move-result-object v2

    .line 134
    .local v2, "cv":Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;
    if-eqz v2, :cond_1

    .line 135
    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    :cond_1
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 138
    .local v8, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v9, v8, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;

    if-nez v9, :cond_2

    .line 139
    const-string v9, " ["

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .end local v8    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 142
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
