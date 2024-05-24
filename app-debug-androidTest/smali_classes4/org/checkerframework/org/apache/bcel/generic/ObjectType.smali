.class public Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
.super Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
.source "ObjectType.java"


# instance fields
.field private final class_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "class_name"    # Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xe

    invoke-direct {p0, v3, v0}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;-><init>(BLjava/lang/String;)V

    .line 62
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->class_name:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .locals 1
    .param p0, "class_name"    # Ljava/lang/String;

    .line 46
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public accessibleTo(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)Z
    .locals 4
    .param p1, "accessor"    # Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->class_name:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    .line 175
    .local v0, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const/4 v1, 0x1

    return v1

    .line 178
    :cond_0
    iget-object v1, p1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->class_name:Ljava/lang/String;

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    .line 179
    .local v1, "acc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 85
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    iget-object v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->class_name:Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->class_name:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->class_name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->class_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public referencesClass()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->class_name:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    .line 102
    .local v0, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isClass()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 103
    .end local v0    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method public referencesClassExact()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->class_name:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    .line 137
    .local v0, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isClass()Z

    move-result v1

    return v1
.end method

.method public referencesInterface()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->class_name:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    .line 120
    .local v0, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isClass()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 121
    .end local v0    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method public referencesInterfaceExact()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->class_name:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    .line 151
    .local v0, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isClass()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public subclassOf(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)Z
    .locals 2
    .param p1, "superclass"    # Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->referencesInterfaceExact()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->referencesInterfaceExact()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->class_name:Ljava/lang/String;

    iget-object v1, p1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->class_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/checkerframework/org/apache/bcel/Repository;->instanceOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 162
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
