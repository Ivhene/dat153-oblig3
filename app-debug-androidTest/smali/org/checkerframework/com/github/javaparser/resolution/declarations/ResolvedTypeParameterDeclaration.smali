.class public interface abstract Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
.super Ljava/lang/Object;
.source "ResolvedTypeParameterDeclaration.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;
    }
.end annotation


# direct methods
.method public static onType(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "classQName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "name",
            "classQName",
            "bounds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;"
        }
    .end annotation

    .line 47
    .local p2, "bounds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public declaredOnConstructor()Z
    .locals 1

    .line 123
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getContainer()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;

    return v0
.end method

.method public declaredOnMethod()Z
    .locals 1

    .line 116
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getContainer()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    return v0
.end method

.method public declaredOnType()Z
    .locals 1

    .line 109
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getContainer()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    return v0
.end method

.method public abstract getBounds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;",
            ">;"
        }
    .end annotation
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract getContainer()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;
.end method

.method public abstract getContainerId()Ljava/lang/String;
.end method

.method public abstract getContainerQualifiedName()Ljava/lang/String;
.end method

.method public getLowerBound()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 3

    .line 203
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    .line 204
    .local v1, "b":Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->isExtends()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->getType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    return-object v0

    .line 207
    .end local v1    # "b":Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;
    :cond_0
    goto :goto_0

    .line 208
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 2

    .line 148
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s.%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpperBound()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 3

    .line 217
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    .line 218
    .local v1, "b":Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->isSuper()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->getType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    return-object v0

    .line 221
    .end local v1    # "b":Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;
    :cond_0
    goto :goto_0

    .line 222
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hasLowerBound()Z
    .locals 3

    .line 177
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    .line 178
    .local v1, "b":Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->isExtends()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    const/4 v0, 0x1

    return v0

    .line 181
    .end local v1    # "b":Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;
    :cond_0
    goto :goto_0

    .line 182
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasUpperBound()Z
    .locals 3

    .line 189
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    .line 190
    .local v1, "b":Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->isSuper()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    const/4 v0, 0x1

    return v0

    .line 193
    .end local v1    # "b":Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;
    :cond_0
    goto :goto_0

    .line 194
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
