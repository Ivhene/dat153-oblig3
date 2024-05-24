.class public interface abstract Lorg/checkerframework/common/basetype/BaseTypeContext;
.super Ljava/lang/Object;
.source "BaseTypeContext.java"

# interfaces
.implements Lorg/checkerframework/framework/util/CFContext;


# virtual methods
.method public abstract getChecker()Lorg/checkerframework/common/basetype/BaseTypeChecker;
.end method

.method public bridge synthetic getChecker()Lorg/checkerframework/framework/source/SourceChecker;
    .locals 1

    .line 7
    invoke-interface {p0}, Lorg/checkerframework/common/basetype/BaseTypeContext;->getChecker()Lorg/checkerframework/common/basetype/BaseTypeChecker;

    move-result-object v0

    return-object v0
.end method

.method public abstract getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<",
            "****>;"
        }
    .end annotation
.end method

.method public abstract getVisitor()Lorg/checkerframework/common/basetype/BaseTypeVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
            "*>;"
        }
    .end annotation
.end method

.method public bridge synthetic getVisitor()Lorg/checkerframework/framework/source/SourceVisitor;
    .locals 1

    .line 7
    invoke-interface {p0}, Lorg/checkerframework/common/basetype/BaseTypeContext;->getVisitor()Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    move-result-object v0

    return-object v0
.end method
