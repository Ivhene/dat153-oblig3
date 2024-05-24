.class public interface abstract Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedInterfaceDeclaration;
.super Ljava/lang/Object;
.source "ResolvedInterfaceDeclaration.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/HasAccessSpecifier;
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/AssociableToAST;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/HasAccessSpecifier;",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/AssociableToAST<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;",
        ">;"
    }
.end annotation


# virtual methods
.method public getAllInterfacesExtended()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "interfaces":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedInterfaceDeclaration;->getInterfacesExtended()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;

    .line 54
    .local v2, "interfaceDeclaration":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getAllInterfacesAncestors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    .end local v2    # "interfaceDeclaration":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;
    goto :goto_0

    .line 57
    :cond_0
    return-object v0
.end method

.method public abstract getInterfacesExtended()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation
.end method

.method public isInterface()Z
    .locals 1

    .line 40
    const/4 v0, 0x1

    return v0
.end method
