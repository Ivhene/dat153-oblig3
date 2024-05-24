.class public interface abstract Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions;
.super Ljava/lang/Object;
.source "NodeWithThrownExceptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic lambda$isThrown$0(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Z
    .locals 1
    .param p0, "throwableName"    # Ljava/lang/String;
    .param p1, "t"    # Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "throwableName",
            "t"
        }
    .end annotation

    .line 88
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addThrownException(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)TN;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions<TN;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseClassOrInterfaceType(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions;->addThrownException(Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public addThrownException(Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "throwType"    # Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            ")TN;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 53
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method public getThrownException(I)Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    return-object v0
.end method

.method public abstract getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            ">;"
        }
    .end annotation
.end method

.method public isThrown(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions<TN;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions;->isThrown(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isThrown(Ljava/lang/String;)Z
    .locals 2
    .param p1, "throwableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwableName"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public abstract setThrownExceptions(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thrownExceptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            ">;)TN;"
        }
    .end annotation
.end method

.method public abstract tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method
