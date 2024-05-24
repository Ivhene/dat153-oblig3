.class public abstract Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;
.super Ljava/lang/Object;
.source "BaseNodeMetaModel.java"


# instance fields
.field private final constructorParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;",
            ">;"
        }
    .end annotation
.end field

.field private final declaredPropertyMetaModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;",
            ">;"
        }
    .end annotation
.end field

.field private final derivedPropertyMetaModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;",
            ">;"
        }
    .end annotation
.end field

.field private final hasWildcard:Z

.field private final isAbstract:Z

.field private final name:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final superNodeMetaModel:Ljava/util/Optional;
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
            "+",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Optional;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "isAbstract"    # Z
    .param p6, "hasWildcard"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "superNodeMetaModel",
            "type",
            "name",
            "packageName",
            "isAbstract",
            "hasWildcard"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 27
    .local p1, "superNodeMetaModel":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->declaredPropertyMetaModels:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->derivedPropertyMetaModels:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->constructorParameters:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->superNodeMetaModel:Ljava/util/Optional;

    .line 29
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->type:Ljava/lang/Class;

    .line 30
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->name:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->packageName:Ljava/lang/String;

    .line 32
    iput-boolean p5, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->isAbstract:Z

    .line 33
    iput-boolean p6, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->hasWildcard:Z

    .line 34
    return-void
.end method


# virtual methods
.method public construct(Ljava/util/Map;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;"
        }
    .end annotation

    .line 190
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 191
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-class v4, Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 193
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 194
    .local v0, "paramArray":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 195
    .local v1, "i":I
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->getConstructorParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;

    .line 196
    .local v4, "constructorParameter":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v1

    .line 197
    aget-object v5, v0, v1

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->isRequired()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 198
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->isNodeList()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 199
    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    aput-object v5, v0, v1

    .line 203
    :cond_0
    nop

    .end local v4    # "constructorParameter":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    add-int/lit8 v1, v1, 0x1

    .line 204
    goto :goto_1

    .line 205
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 206
    .end local v0    # "paramArray":[Ljava/lang/Object;
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 190
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

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

    .line 139
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 140
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;

    .line 144
    .local v2, "classMetaModel":Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->type:Ljava/lang/Class;

    iget-object v4, v2, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->type:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 146
    :cond_2
    return v0

    .line 140
    .end local v2    # "classMetaModel":Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;
    :cond_3
    :goto_0
    return v1
.end method

.method public getAllPropertyMetaModels()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->getDeclaredPropertyMetaModels()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 84
    .local v0, "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    move-object v1, p0

    .line 85
    .local v1, "walkNode":Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;
    :goto_0
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->getSuperNodeMetaModel()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->getSuperNodeMetaModel()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;

    .line 87
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->getDeclaredPropertyMetaModels()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 89
    :cond_0
    return-object v0
.end method

.method public getConstructorParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->constructorParameters:Ljava/util/List;

    return-object v0
.end method

.method public getDeclaredPropertyMetaModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->declaredPropertyMetaModels:Ljava/util/List;

    return-object v0
.end method

.method public getDerivedPropertyMetaModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->derivedPropertyMetaModels:Ljava/util/List;

    return-object v0
.end method

.method public getMetaModelFieldName()Ljava/lang/String;
    .locals 1

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getQualifiedClassName()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuperNodeMetaModel()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->superNodeMetaModel:Ljava/util/Optional;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeNameGenerified()Ljava/lang/String;
    .locals 2

    .line 163
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->hasWildcard:Z

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->getTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasWildcard()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->hasWildcard:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public is(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;)Z"
        }
    .end annotation

    .line 40
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->isAbstract:Z

    return v0
.end method

.method public isInstanceOfMetaModel(Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;)Z
    .locals 1
    .param p1, "baseMetaModel"    # Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseMetaModel"
        }
    .end annotation

    .line 93
    if-ne p0, p1, :cond_0

    .line 94
    const/4 v0, 0x1

    return v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->isRootNode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const/4 v0, 0x0

    return v0

    .line 99
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->getSuperNodeMetaModel()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->isInstanceOfMetaModel(Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;)Z

    move-result v0

    return v0
.end method

.method public isRootNode()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->superNodeMetaModel:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->name:Ljava/lang/String;

    return-object v0
.end method
