.class public abstract Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;
.super Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;
.source "FieldGenOrMethodGen.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/NamedAndTyped;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final annotation_vec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;",
            ">;"
        }
    .end annotation
.end field

.field private final attribute_vec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/classfile/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field protected cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected name:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected type:Lorg/checkerframework/org/apache/bcel/generic/Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->attribute_vec:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->annotation_vec:Ljava/util/List;

    .line 60
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .param p1, "access_flags"    # I

    .line 67
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;-><init>(I)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->attribute_vec:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->annotation_vec:Ljava/util/List;

    .line 68
    return-void
.end method


# virtual methods
.method protected addAnnotationEntry(Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;)V
    .locals 1
    .param p1, "ag"    # Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    .line 126
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->annotation_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public addAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V
    .locals 1
    .param p1, "a"    # Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 118
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->attribute_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 186
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Clone Not Supported"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    .locals 2

    .line 172
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->annotation_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    .line 173
    .local v0, "annotations":[Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->annotation_vec:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 174
    return-object v0
.end method

.method public getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 2

    .line 166
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->attribute_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 167
    .local v0, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->attribute_vec:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 168
    return-object v0
.end method

.method public getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSignature()Ljava/lang/String;
.end method

.method public getType()Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->type:Lorg/checkerframework/org/apache/bcel/generic/Type;

    return-object v0
.end method

.method protected removeAnnotationEntries()V
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->annotation_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 159
    return-void
.end method

.method protected removeAnnotationEntry(Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;)V
    .locals 1
    .param p1, "ag"    # Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    .line 142
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->annotation_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public removeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V
    .locals 1
    .param p1, "a"    # Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 134
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->attribute_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public removeAttributes()V
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->attribute_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    return-void
.end method

.method public setConstantPool(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 0
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 105
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 106
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->name:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setType(Lorg/checkerframework/org/apache/bcel/generic/Type;)V
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 72
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType()B

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 75
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/FieldGenOrMethodGen;->type:Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 76
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type can not be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
