.class public interface abstract Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumDeclaration;
.super Ljava/lang/Object;
.source "ResolvedEnumDeclaration.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
.implements Lorg/checkerframework/com/github/javaparser/resolution/declarations/HasAccessSpecifier;


# direct methods
.method public static synthetic lambda$getEnumConstant$1(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "c"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "c"
        }
    .end annotation

    .line 51
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$getEnumConstant$2(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "name"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No constant named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$hasEnumConstant$0(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "c"    # Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "c"
        }
    .end annotation

    .line 47
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public asEnum()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumDeclaration;
    .locals 0

    .line 41
    return-object p0
.end method

.method public getEnumConstant(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 51
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumDeclaration;->getEnumConstants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumDeclaration$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumDeclaration$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumDeclaration$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumDeclaration$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;

    .line 51
    return-object v0
.end method

.method public abstract getEnumConstants()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;",
            ">;"
        }
    .end annotation
.end method

.method public hasEnumConstant(Ljava/lang/String;)Z
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

    .line 47
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumDeclaration;->getEnumConstants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumDeclaration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumDeclaration$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public isEnum()Z
    .locals 1

    .line 36
    const/4 v0, 0x1

    return v0
.end method
