.class public Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
.super Lorg/checkerframework/com/github/javaparser/ast/Node;
.source "StubUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage;
    }
.end annotation


# instance fields
.field private compilationUnits:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation
.end field

.field private storage:Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/InternalProperty;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenRange"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compilationUnits"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "compilationUnits":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 62
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;->compilationUnits:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 63
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
            "TR;TA;>;TA;)TR;"
        }
    .end annotation

    .line 87
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 92
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public getCompilationUnits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;->compilationUnits:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getStorage()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;->storage:Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public setCompilationUnits(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compilationUnits"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p1, "compilationUnits":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;>;"
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;->compilationUnits:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 73
    return-void
.end method

.method public setStorage(Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .locals 2
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage;-><init>(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ast/StubUnit$1;)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;->storage:Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage;

    .line 82
    return-object p0
.end method
