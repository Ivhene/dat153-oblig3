.class public Lorg/checkerframework/common/reflection/ClassValVisitor;
.super Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.source "ClassValVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
        "Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 17
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected createTypeFactory()Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;
    .locals 2

    .line 22
    new-instance v0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    iget-object v1, p0, Lorg/checkerframework/common/reflection/ClassValVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-direct {v0, v1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    return-object v0
.end method

.method protected bridge synthetic createTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/checkerframework/common/reflection/ClassValVisitor;->createTypeFactory()Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    move-result-object v0

    return-object v0
.end method

.method protected createTypeValidator()Lorg/checkerframework/common/basetype/BaseTypeValidator;
    .locals 3

    .line 27
    new-instance v0, Lorg/checkerframework/common/reflection/ClassNameValidator;

    iget-object v1, p0, Lorg/checkerframework/common/reflection/ClassValVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v2, p0, Lorg/checkerframework/common/reflection/ClassValVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-direct {v0, v1, p0, v2}, Lorg/checkerframework/common/reflection/ClassNameValidator;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/common/basetype/BaseTypeVisitor;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-object v0
.end method

.method protected bridge synthetic createTypeValidator()Lorg/checkerframework/common/basetype/TypeValidator;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/checkerframework/common/reflection/ClassValVisitor;->createTypeValidator()Lorg/checkerframework/common/basetype/BaseTypeValidator;

    move-result-object v0

    return-object v0
.end method
