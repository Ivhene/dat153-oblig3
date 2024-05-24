.class public final Lorg/checkerframework/org/apache/bcel/classfile/Method;
.super Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;
.source "Method.java"


# static fields
.field private static bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;


# instance fields
.field private parameterAnnotationEntries:[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/Method$1;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Method$1;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Method;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(III[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 0
    .param p1, "access_flags"    # I
    .param p2, "name_index"    # I
    .param p3, "signature_index"    # I
    .param p4, "attributes"    # [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .param p5, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 99
    invoke-direct/range {p0 .. p5}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;-><init>(III[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 100
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

    .line 86
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;-><init>(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/Method;)V
    .locals 0
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .line 74
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;)V

    .line 75
    return-void
.end method

.method public static getComparator()Lorg/checkerframework/org/apache/bcel/util/BCELComparator;
    .locals 1

    .line 228
    sget-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Method;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    return-object v0
.end method

.method public static setComparator(Lorg/checkerframework/org/apache/bcel/util/BCELComparator;)V
    .locals 0
    .param p0, "comparator"    # Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    .line 236
    sput-object p0, Lorg/checkerframework/org/apache/bcel/classfile/Method;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    .line 237
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 112
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitMethod(Lorg/checkerframework/org/apache/bcel/classfile/Method;)V

    .line 113
    return-void
.end method

.method public final copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .locals 1
    .param p1, "_constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 204
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->copy_(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/Method;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 249
    sget-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Method;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    invoke-interface {v0, p0, p1}, Lorg/checkerframework/org/apache/bcel/util/BCELComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getArgumentTypes()[Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1

    .line 220
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    return-object v0
.end method

.method public final getCode()Lorg/checkerframework/org/apache/bcel/classfile/Code;
    .locals 5

    .line 120
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 121
    .local v3, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v4, v3, Lorg/checkerframework/org/apache/bcel/classfile/Code;

    if-eqz v4, :cond_0

    .line 122
    move-object v0, v3

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/Code;

    return-object v0

    .line 120
    .end local v3    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExceptionTable()Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;
    .locals 5

    .line 134
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 135
    .local v3, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v4, v3, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;

    if-eqz v4, :cond_0

    .line 136
    move-object v0, v3

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;

    return-object v0

    .line 134
    .end local v3    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLineNumberTable()Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    .locals 2

    .line 159
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getCode()Lorg/checkerframework/org/apache/bcel/classfile/Code;

    move-result-object v0

    .line 160
    .local v0, "code":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    if-nez v0, :cond_0

    .line 161
    const/4 v1, 0x0

    return-object v1

    .line 163
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getLineNumberTable()Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;

    move-result-object v1

    return-object v1
.end method

.method public final getLocalVariableTable()Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;
    .locals 2

    .line 147
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getCode()Lorg/checkerframework/org/apache/bcel/classfile/Code;

    move-result-object v0

    .line 148
    .local v0, "code":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    if-nez v0, :cond_0

    .line 149
    const/4 v1, 0x0

    return-object v1

    .line 151
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getLocalVariableTable()Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    move-result-object v1

    return-object v1
.end method

.method public getParameterAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Method;->parameterAnnotationEntries:[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    if-nez v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;->createParameterAnnotationEntries([Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Method;->parameterAnnotationEntries:[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Method;->parameterAnnotationEntries:[Lorg/checkerframework/org/apache/bcel/classfile/ParameterAnnotationEntry;

    return-object v0
.end method

.method public getReturnType()Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1

    .line 212
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getReturnType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 261
    sget-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Method;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    invoke-interface {v0, p0}, Lorg/checkerframework/org/apache/bcel/util/BCELComparator;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 175
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->getAccessFlags()I

    move-result v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->accessToString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "access":Ljava/lang/String;
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v1

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->getSignatureIndex()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 178
    .local v1, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "signature":Ljava/lang/String;
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v4

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->getNameIndex()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 180
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "name":Ljava/lang/String;
    nop

    .line 182
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getLocalVariableTable()Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    move-result-object v5

    .line 181
    invoke-static {v2, v4, v0, v3, v5}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->methodSignatureToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;)Ljava/lang/String;

    move-result-object v2

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .local v3, "buf":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/FieldOrMethod;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 185
    .local v8, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v9, v8, Lorg/checkerframework/org/apache/bcel/classfile/Code;

    if-nez v9, :cond_0

    instance-of v9, v8, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;

    if-nez v9, :cond_0

    .line 186
    const-string v9, " ["

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .end local v8    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getExceptionTable()Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;

    move-result-object v5

    .line 190
    .local v5, "e":Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;
    if-eqz v5, :cond_2

    .line 191
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 193
    const-string v7, "\n\t\tthrows "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .end local v6    # "str":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
