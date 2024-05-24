.class public Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
.super Ljava/lang/Object;
.source "PropertyMetaModel.java"


# instance fields
.field private final containingNodeMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;

.field private final hasWildcard:Z

.field private final isNodeList:Z

.field private final isNonEmpty:Z

.field private final isOptional:Z

.field private final name:Ljava/lang/String;

.field private final nodeReference:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;Ljava/lang/String;Ljava/lang/Class;Ljava/util/Optional;ZZZZ)V
    .locals 0
    .param p1, "containingNodeMetaModel"    # Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;
    .param p2, "name"    # Ljava/lang/String;
    .param p5, "isOptional"    # Z
    .param p6, "isNonEmpty"    # Z
    .param p7, "isNodeList"    # Z
    .param p8, "hasWildcard"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "containingNodeMetaModel",
            "name",
            "type",
            "nodeReference",
            "isOptional",
            "isNonEmpty",
            "isNodeList",
            "hasWildcard"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;",
            ">;ZZZZ)V"
        }
    .end annotation

    .line 24
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "nodeReference":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->containingNodeMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;

    .line 26
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->name:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->type:Ljava/lang/Class;

    .line 28
    iput-object p4, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->nodeReference:Ljava/util/Optional;

    .line 29
    iput-boolean p5, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->isOptional:Z

    .line 30
    iput-boolean p6, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->isNonEmpty:Z

    .line 31
    iput-boolean p7, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->isNodeList:Z

    .line 32
    iput-boolean p8, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->hasWildcard:Z

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 140
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 141
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;

    .line 145
    .local v2, "that":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->name:Ljava/lang/String;

    iget-object v4, v2, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 146
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->type:Ljava/lang/Class;

    iget-object v4, v2, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->type:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 148
    :cond_3
    return v0

    .line 141
    .end local v2    # "that":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    :cond_4
    :goto_0
    return v1
.end method

.method public getContainingNodeMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->containingNodeMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;

    return-object v0
.end method

.method public getGetterMethodName()Ljava/lang/String;
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->type:Ljava/lang/Class;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->getterName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModelFieldName()Ljava/lang/String;
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PropertyMetaModel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeReference()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->nodeReference:Ljava/util/Optional;

    return-object v0
.end method

.method public getSetterMethodName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->setterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeNameForGetter()Ljava/lang/String;
    .locals 2

    .line 179
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->isOptional:Z

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Optional<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getTypeNameForSetter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getTypeNameForSetter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeNameForSetter()Ljava/lang/String;
    .locals 2

    .line 189
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->isNodeList:Z

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NodeList<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getTypeNameGenerified()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getTypeNameGenerified()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeNameGenerified()Ljava/lang/String;
    .locals 2

    .line 162
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->hasWildcard:Z

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;
    .locals 7
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 222
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 223
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 224
    .local v1, "fields":[Ljava/lang/reflect/Field;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 225
    .local v4, "classField":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 226
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 227
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 224
    .end local v4    # "classField":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 222
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 231
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    new-instance v0, Ljava/lang/NoSuchFieldError;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    .end local p1    # "node":Lorg/checkerframework/com/github/javaparser/ast/Node;
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .restart local p1    # "node":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasWildcard()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->hasWildcard:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 153
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 154
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 155
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public is(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "fieldName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 39
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->containingNodeMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->is(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public is(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldName"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAttribute()Z
    .locals 1

    .line 213
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->isNode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isNode()Z
    .locals 1

    .line 199
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getNodeReference()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public isNodeList()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->isNodeList:Z

    return v0
.end method

.method public isNonEmpty()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->isNonEmpty:Z

    return v0
.end method

.method public isOptional()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->isOptional:Z

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->isOptional:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSingular()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->isNodeList:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->containingNodeMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
