.class public interface abstract Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends;
.super Ljava/lang/Object;
.source "NodeWithExtends.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public addExtendedType(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/ast/Node;
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
            "*>;)TN;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends<TN;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 78
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends;->addExtendedType(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public addExtendedType(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends;->getExtendedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseClassOrInterfaceType(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 90
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method public addExtendedType(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "extend"    # Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;",
            ")TN;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends;->getExtendedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 53
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method public addExtends(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/ast/Node;
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
            "*>;)TN;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends<TN;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends;->addExtendedType(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public addExtends(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
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
            ")TN;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends<TN;>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends;->addExtendedType(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public abstract getExtendedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;",
            ">;"
        }
    .end annotation
.end method

.method public getExtendedTypes(I)Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
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

    .line 39
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends;->getExtendedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    return-object v0
.end method

.method public setExtendedType(ILorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "i"    # I
    .param p2, "extend"    # Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "extend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;",
            ")TN;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExtends;->getExtendedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 47
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method public abstract setExtendedTypes(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extendsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;",
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
