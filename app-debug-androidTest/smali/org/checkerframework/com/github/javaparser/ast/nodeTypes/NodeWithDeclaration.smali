.class public interface abstract Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithDeclaration;
.super Ljava/lang/Object;
.source "NodeWithDeclaration.java"


# virtual methods
.method public getDeclarationAsString()Ljava/lang/String;
    .locals 1

    .line 39
    const/4 v0, 0x1

    invoke-interface {p0, v0, v0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithDeclaration;->getDeclarationAsString(ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeclarationAsString(ZZ)Ljava/lang/String;
    .locals 1
    .param p1, "includingModifiers"    # Z
    .param p2, "includingThrows"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "includingModifiers",
            "includingThrows"
        }
    .end annotation

    .line 51
    const/4 v0, 0x1

    invoke-interface {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithDeclaration;->getDeclarationAsString(ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDeclarationAsString(ZZZ)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "includingModifiers",
            "includingThrows",
            "includingParameterName"
        }
    .end annotation
.end method
