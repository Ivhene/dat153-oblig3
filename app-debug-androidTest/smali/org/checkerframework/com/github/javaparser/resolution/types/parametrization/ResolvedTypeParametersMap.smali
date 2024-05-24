.class public Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;
.super Ljava/lang/Object;
.source "ResolvedTypeParametersMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;
    }
.end annotation


# instance fields
.field private nameToDeclaration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field private nameToValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nameToValue",
            "nameToDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p1, "nameToValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    .local p2, "nameToDeclaration":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    .line 101
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToDeclaration:Ljava/util/Map;

    .line 103
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$1;

    .line 35
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static empty()Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;
    .locals 1

    .line 95
    new-instance v0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->build()Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v0

    return-object v0
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

    .line 70
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 71
    :cond_0
    instance-of v1, p1, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 73
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    .line 75
    .local v1, "that":Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    iget-object v4, v1, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToDeclaration:Ljava/util/Map;

    iget-object v4, v1, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToDeclaration:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getValue(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 2
    .param p1, "typeParameter"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeParameter"
        }
    .end annotation

    .line 107
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "qualifiedName":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    return-object v1

    .line 111
    :cond_0
    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedTypeVariable;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedTypeVariable;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)V

    return-object v1
.end method

.method public getValueBySignature(Ljava/lang/String;)Ljava/util/Optional;
    .locals 1
    .param p1, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public replaceAll(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v0, "inferredTypes":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToDeclaration:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    .line 142
    .local v2, "typeParameterDeclaration":Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    invoke-virtual {p0, v2}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->getValue(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v3

    invoke-interface {p1, v2, v3, v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    .line 143
    .end local v2    # "typeParameterDeclaration":Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    goto :goto_0

    .line 144
    :cond_0
    return-object p1
.end method

.method public toBuilder()Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;
    .locals 4

    .line 132
    new-instance v0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToDeclaration:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;-><init>(Ljava/util/Map;Ljava/util/Map;Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypeParametersMap{nameToValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
