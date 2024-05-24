.class public Lorg/checkerframework/org/apache/bcel/generic/FieldGen;
.super Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;
.source "FieldGen.java"


# static fields
.field private static bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;


# instance fields
.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/generic/FieldObserver;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen$1;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen$1;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    return-void
.end method

.method public constructor <init>(ILorg/checkerframework/org/apache/bcel/generic/Type;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 1
    .param p1, "access_flags"    # I
    .param p2, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 78
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;-><init>(I)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->value:Ljava/lang/Object;

    .line 79
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->setType(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 80
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->setName(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p4}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->setConstantPool(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/Field;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 11
    .param p1, "field"    # Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .param p2, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 92
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getAccessFlags()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/Type;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 93
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    .line 94
    .local v0, "attrs":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 95
    .local v4, "attr":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;

    if-eqz v5, :cond_0

    .line 96
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;->getConstantValueIndex()I

    move-result v5

    invoke-direct {p0, v5}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->setValue(I)V

    goto :goto_2

    .line 97
    :cond_0
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;

    if-eqz v5, :cond_2

    .line 98
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;

    .line 99
    .local v5, "runtimeAnnotations":Lorg/checkerframework/org/apache/bcel/classfile/Annotations;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;->getAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    move-result-object v6

    .line 100
    .local v6, "annotationEntries":[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    array-length v7, v6

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 101
    .local v9, "element":Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    new-instance v10, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    invoke-direct {v10, v9, p2, v2}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V

    invoke-virtual {p0, v10}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->addAnnotationEntry(Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;)V

    .line 100
    .end local v9    # "element":Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 103
    .end local v5    # "runtimeAnnotations":Lorg/checkerframework/org/apache/bcel/classfile/Annotations;
    .end local v6    # "annotationEntries":[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    :cond_1
    goto :goto_2

    .line 104
    :cond_2
    invoke-virtual {p0, v4}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->addAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 94
    .end local v4    # "attr":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_3
    return-void
.end method

.method private addAnnotationsAsAttribute(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 4
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 233
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->getAnnotationAttributes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;[Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;)[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    .line 234
    .local v0, "attrs":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 235
    .local v3, "attr":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-virtual {p0, v3}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->addAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 234
    .end local v3    # "attr":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    :cond_0
    return-void
.end method

.method private addConstant()I
    .locals 3

    .line 241
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 257
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oops: Unhandled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :pswitch_1
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addString(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 253
    :pswitch_2
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addLong(J)I

    move-result v0

    return v0

    .line 251
    :pswitch_3
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addDouble(D)I

    move-result v0

    return v0

    .line 249
    :pswitch_4
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addFloat(F)I

    move-result v0

    return v0

    .line 247
    :pswitch_5
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addInteger(I)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkType(Lorg/checkerframework/org/apache/bcel/generic/Type;)V
    .locals 4
    .param p1, "atype"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 201
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 202
    .local v0, "superType":Lorg/checkerframework/org/apache/bcel/generic/Type;
    if-eqz v0, :cond_2

    .line 205
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->isFinal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    return-void

    .line 209
    :cond_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Types are not compatible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_1
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    const-string v2, "Only final fields may have an initial value!"

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_2
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    const-string v2, "You haven\'t defined the type of the field yet"

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getComparator()Lorg/checkerframework/org/apache/bcel/util/BCELComparator;
    .locals 1

    .line 348
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    return-object v0
.end method

.method public static setComparator(Lorg/checkerframework/org/apache/bcel/util/BCELComparator;)V
    .locals 0
    .param p0, "comparator"    # Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    .line 356
    sput-object p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    .line 357
    return-void
.end method

.method private setValue(I)V
    .locals 3
    .param p1, "index"    # I

    .line 111
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    .line 112
    .local v0, "cp":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v1

    .line 113
    .local v1, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantObject;

    invoke-interface {v2, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantObject;->getConstantValue(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->value:Ljava/lang/Object;

    .line 114
    return-void
.end method


# virtual methods
.method public addObserver(Lorg/checkerframework/org/apache/bcel/generic/FieldObserver;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FieldObserver;

    .line 273
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->observers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->observers:Ljava/util/List;

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    return-void
.end method

.method public cancelInitValue()V
    .locals 1

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->value:Ljava/lang/Object;

    .line 197
    return-void
.end method

.method public copy(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/FieldGen;
    .locals 1
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 338
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;

    .line 339
    .local v0, "fg":Lorg/checkerframework/org/apache/bcel/generic/FieldGen;
    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->setConstantPool(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 340
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 369
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    invoke-interface {v0, p0, p1}, Lorg/checkerframework/org/apache/bcel/util/BCELComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getField()Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .locals 10

    .line 218
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->getSignature()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "signature":Ljava/lang/String;
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v1

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v1

    .line 220
    .local v1, "name_index":I
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v2

    .line 221
    .local v2, "signature_index":I
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 222
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->checkType(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 223
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->addConstant()I

    move-result v3

    .line 224
    .local v3, "index":I
    new-instance v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v5

    const-string v6, "ConstantValue"

    invoke-virtual {v5, v6}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v5

    .line 225
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v6

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v6

    const/4 v7, 0x2

    invoke-direct {v4, v5, v7, v3, v6}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;-><init>(IIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 224
    invoke-virtual {p0, v4}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->addAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 227
    .end local v3    # "index":I
    :cond_0
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->addAnnotationsAsAttribute(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 228
    new-instance v9, Lorg/checkerframework/org/apache/bcel/classfile/Field;

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getAccessFlags()I

    move-result v4

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v7

    .line 229
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v8

    move-object v3, v9

    move v5, v1

    move v6, v2

    invoke-direct/range {v3 .. v8}, Lorg/checkerframework/org/apache/bcel/classfile/Field;-><init>(III[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 228
    return-object v9
.end method

.method public getInitValue()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 306
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 264
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 381
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->bcelComparator:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    invoke-interface {v0, p0}, Lorg/checkerframework/org/apache/bcel/util/BCELComparator;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public removeObserver(Lorg/checkerframework/org/apache/bcel/generic/FieldObserver;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FieldObserver;

    .line 283
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->observers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 284
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 286
    :cond_0
    return-void
.end method

.method public setInitValue(B)V
    .locals 1
    .param p1, "b"    # B

    .line 162
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->checkType(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 163
    if-eqz p1, :cond_0

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->value:Ljava/lang/Object;

    .line 166
    :cond_0
    return-void
.end method

.method public setInitValue(C)V
    .locals 1
    .param p1, "c"    # C

    .line 154
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->checkType(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->value:Ljava/lang/Object;

    .line 158
    :cond_0
    return-void
.end method

.method public setInitValue(D)V
    .locals 2
    .param p1, "d"    # D

    .line 186
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->checkType(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 187
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->value:Ljava/lang/Object;

    .line 190
    :cond_0
    return-void
.end method

.method public setInitValue(F)V
    .locals 4
    .param p1, "f"    # F

    .line 178
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->checkType(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 179
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->value:Ljava/lang/Object;

    .line 182
    :cond_0
    return-void
.end method

.method public setInitValue(I)V
    .locals 1
    .param p1, "i"    # I

    .line 138
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->checkType(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 139
    if-eqz p1, :cond_0

    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->value:Ljava/lang/Object;

    .line 142
    :cond_0
    return-void
.end method

.method public setInitValue(J)V
    .locals 2
    .param p1, "l"    # J

    .line 130
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->checkType(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 131
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->value:Ljava/lang/Object;

    .line 134
    :cond_0
    return-void
.end method

.method public setInitValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 122
    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->checkType(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 123
    if-eqz p1, :cond_0

    .line 124
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->value:Ljava/lang/Object;

    .line 126
    :cond_0
    return-void
.end method

.method public setInitValue(S)V
    .locals 1
    .param p1, "s"    # S

    .line 146
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->checkType(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 147
    if-eqz p1, :cond_0

    .line 148
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->value:Ljava/lang/Object;

    .line 150
    :cond_0
    return-void
.end method

.method public setInitValue(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 170
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->checkType(Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 171
    if-eqz p1, :cond_0

    .line 172
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->value:Ljava/lang/Object;

    .line 174
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 321
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getAccessFlags()I

    move-result v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->accessToString(I)Ljava/lang/String;

    move-result-object v0

    .line 322
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

    .line 323
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "signature":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->getName()Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 326
    .local v4, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->getInitValue()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 329
    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public update()V
    .locals 2

    .line 294
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGen;->observers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/FieldObserver;

    .line 296
    .local v1, "observer":Lorg/checkerframework/org/apache/bcel/generic/FieldObserver;
    invoke-interface {v1, p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldObserver;->notify(Lorg/checkerframework/org/apache/bcel/generic/FieldGen;)V

    .line 297
    .end local v1    # "observer":Lorg/checkerframework/org/apache/bcel/generic/FieldObserver;
    goto :goto_0

    .line 299
    :cond_0
    return-void
.end method
