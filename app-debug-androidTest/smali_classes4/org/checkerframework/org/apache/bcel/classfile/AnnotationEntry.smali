.class public Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
.super Ljava/lang/Object;
.source "AnnotationEntry.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/classfile/Node;


# instance fields
.field private final constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

.field private element_value_pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private final isRuntimeVisible:Z

.field private final type_index:I


# direct methods
.method public constructor <init>(ILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Z)V
    .locals 0
    .param p1, "type_index"    # I
    .param p2, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .param p3, "isRuntimeVisible"    # Z

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->type_index:I

    .line 67
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 68
    iput-boolean p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->isRuntimeVisible:Z

    .line 69
    return-void
.end method

.method public static createAnnotationEntries([Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    .locals 6
    .param p0, "attrs"    # [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    .local v0, "accumulatedAnnotations":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 161
    .local v3, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v4, v3, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;

    if-eqz v4, :cond_0

    .line 162
    move-object v4, v3

    check-cast v4, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;

    .line 163
    .local v4, "runtimeAnnotations":Lorg/checkerframework/org/apache/bcel/classfile/Annotations;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;->getAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 160
    .end local v3    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v4    # "runtimeAnnotations":Lorg/checkerframework/org/apache/bcel/classfile/Annotations;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    return-object v1
.end method

.method public static read(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Z)Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    .locals 7
    .param p0, "input"    # Ljava/io/DataInput;
    .param p1, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .param p2, "isRuntimeVisible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;-><init>(ILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Z)V

    .line 55
    .local v0, "annotationEntry":Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    .line 56
    .local v1, "num_element_value_pairs":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->element_value_pairs:Ljava/util/List;

    .line 57
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 58
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->element_value_pairs:Ljava/util/List;

    new-instance v4, Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;

    .line 59
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v5

    invoke-static {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->readElementValue(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;

    move-result-object v6

    invoke-direct {v4, v5, v6, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;-><init>(ILorg/checkerframework/org/apache/bcel/classfile/ElementValue;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 58
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 91
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitAnnotationEntry(Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;)V

    .line 92
    return-void
.end method

.method public addElementNameValuePair(Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;)V
    .locals 1
    .param p1, "elementNameValuePair"    # Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;

    .line 134
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->element_value_pairs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->type_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 126
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->element_value_pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 128
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->element_value_pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;

    .line 129
    .local v1, "envp":Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;
    invoke-virtual {v1, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;->dump(Ljava/io/DataOutputStream;)V

    .line 130
    .end local v1    # "envp":Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;
    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method public getAnnotationType()Ljava/lang/String;
    .locals 3

    .line 98
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->type_index:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 99
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAnnotationTypeIndex()I
    .locals 1

    .line 106
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->type_index:I

    return v0
.end method

.method public getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    return-object v0
.end method

.method public getElementValuePairs()[Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;
    .locals 2

    .line 121
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->element_value_pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;

    return-object v0
.end method

.method public final getNumElementValuePairs()I
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->element_value_pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTypeIndex()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->type_index:I

    return v0
.end method

.method public isRuntimeVisible()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->isRuntimeVisible:Z

    return v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 6

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->getAnnotationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->getElementValuePairs()[Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;

    move-result-object v1

    .line 142
    .local v1, "evPairs":[Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;
    array-length v2, v1

    if-lez v2, :cond_1

    .line 143
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 145
    .local v4, "element":Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .end local v4    # "element":Lorg/checkerframework/org/apache/bcel/classfile/ElementValuePair;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    :cond_0
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 154
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;->toShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
