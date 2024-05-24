.class public interface abstract Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
.super Ljava/lang/Object;
.source "ResolvedReferenceTypeDeclaration.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;


# direct methods
.method public static synthetic lambda$getAllNonStaticFields$5(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 1
    .param p0, "it"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "it"
        }
    .end annotation

    .line 177
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;->isStatic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic lambda$getAllStaticFields$6(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 1
    .param p0, "it"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "it"
        }
    .end annotation

    .line 184
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;->isStatic()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$getDeclaredFields$7(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 2
    .param p0, "_this"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
    .param p1, "it"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "it"
        }
    .end annotation

    .line 191
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;->declaringType()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 191
    return v0
.end method

.method public static synthetic lambda$getField$0(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "f"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "f"
        }
    .end annotation

    .line 125
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$getVisibleField$1(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "f"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "f"
        }
    .end annotation

    .line 137
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$getVisibleFields$4(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 2
    .param p0, "_this"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
    .param p1, "f"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "f"
        }
    .end annotation

    .line 169
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;->declaringType()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;->accessSpecifier()Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;->PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static synthetic lambda$hasAnnotation$8(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;)Z
    .locals 1
    .param p0, "qualifiedName"    # Ljava/lang/String;
    .param p1, "it"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "qualifiedName",
            "it"
        }
    .end annotation

    .line 250
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->asReferenceType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->hasDirectlyAnnotation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$hasField$2(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "f"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "f"
        }
    .end annotation

    .line 149
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$hasVisibleField$3(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "f"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "f"
        }
    .end annotation

    .line 156
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public asReferenceType()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
    .locals 0

    .line 45
    return-object p0
.end method

.method public canBeAssignedTo(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Z
    .locals 1
    .param p1, "other"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 225
    invoke-interface {p1, p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->isAssignableBy(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Z

    move-result v0

    return v0
.end method

.method public findTypeParameter(Ljava/lang/String;)Ljava/util/Optional;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            ">;"
        }
    .end annotation

    .line 265
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    .line 266
    .local v1, "tp":Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    invoke-interface {v1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 269
    .end local v1    # "tp":Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    :cond_0
    goto :goto_0

    .line 270
    :cond_1
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->containerType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->containerType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->findTypeParameter(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 273
    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getAllAncestors()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "ancestors":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;>;"
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAncestors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;

    .line 98
    .local v2, "ancestor":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getAllAncestors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;

    .line 100
    .local v4, "inheritedAncestor":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 101
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v4    # "inheritedAncestor":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    :cond_0
    goto :goto_1

    .line 104
    .end local v2    # "ancestor":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    :cond_1
    goto :goto_0

    .line 106
    :cond_2
    return-object v0
.end method

.method public abstract getAllFields()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllMethods()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/checkerframework/com/github/javaparser/resolution/MethodUsage;",
            ">;"
        }
    .end annotation
.end method

.method public getAllNonStaticFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;",
            ">;"
        }
    .end annotation

    .line 177
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAllFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getAllStaticFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;",
            ">;"
        }
    .end annotation

    .line 184
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAllFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getAncestors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAncestors(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAncestors(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "acceptIncompleteList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConstructors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;",
            ">;"
        }
    .end annotation
.end method

.method public getDeclaredFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;",
            ">;"
        }
    .end annotation

    .line 191
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAllFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 192
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 191
    return-object v0
.end method

.method public abstract getDeclaredMethods()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            ">;"
        }
    .end annotation
.end method

.method public getField(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 125
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAllFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 126
    .local v0, "field":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;

    return-object v1

    .line 129
    :cond_0
    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/UnsolvedSymbolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/com/github/javaparser/resolution/UnsolvedSymbolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getVisibleField(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 137
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getVisibleFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 138
    .local v0, "field":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;

    return-object v1

    .line 141
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public getVisibleFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;",
            ">;"
        }
    .end annotation

    .line 168
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAllFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration$$ExternalSyntheticLambda4;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V

    .line 169
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 170
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 168
    return-object v0
.end method

.method public hasAnnotation(Ljava/lang/String;)Z
    .locals 2
    .param p1, "qualifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qualifiedName"
        }
    .end annotation

    .line 247
    invoke-interface {p0, p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->hasDirectlyAnnotation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x1

    return v0

    .line 250
    :cond_0
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAllAncestors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public abstract hasDirectlyAnnotation(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qualifiedName"
        }
    .end annotation
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 149
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAllFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public hasVisibleField(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 156
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getVisibleFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public abstract isAssignableBy(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation
.end method

.method public abstract isAssignableBy(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract isFunctionalInterface()Z
.end method
