.class public Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;
.super Ljava/lang/Object;
.source "SimpleVoidVisitor.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<",
        "TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            "TA;)V"
        }
    .end annotation

    .line 15
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    return-void
.end method

.method public defaultAction(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "*>;TA;)V"
        }
    .end annotation

    .line 17
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p1, "n":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<*>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;",
            "TA;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            "TA;)V"
        }
    .end annotation

    .line 87
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;",
            "TA;)V"
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/Modifier;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            "TA;)V"
        }
    .end annotation

    .line 303
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            "TA;)V"
        }
    .end annotation

    .line 20
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList;",
            "TA;)V"
        }
    .end annotation

    .line 24
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;",
            "TA;)V"
        }
    .end annotation

    .line 204
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/StubUnit;",
            "TA;)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;",
            "TA;)V"
        }
    .end annotation

    .line 27
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;",
            "TA;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;",
            "TA;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;",
            "TA;)V"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;",
            "TA;)V"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;",
            "TA;)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;",
            "TA;)V"
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;",
            "TA;)V"
        }
    .end annotation

    .line 144
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
            "TA;)V"
        }
    .end annotation

    .line 183
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            "TA;)V"
        }
    .end annotation

    .line 207
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;",
            "TA;)V"
        }
    .end annotation

    .line 297
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;",
            "TA;)V"
        }
    .end annotation

    .line 264
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;",
            "TA;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;",
            "TA;)V"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;",
            "TA;)V"
        }
    .end annotation

    .line 165
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;",
            "TA;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;",
            "TA;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;",
            "TA;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;",
            "TA;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;",
            "TA;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;",
            "TA;)V"
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;",
            "TA;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;",
            "TA;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;",
            "TA;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;",
            "TA;)V"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;",
            "TA;)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;",
            "TA;)V"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;",
            "TA;)V"
        }
    .end annotation

    .line 126
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;",
            "TA;)V"
        }
    .end annotation

    .line 147
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;",
            "TA;)V"
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;",
            "TA;)V"
        }
    .end annotation

    .line 162
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;",
            "TA;)V"
        }
    .end annotation

    .line 171
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;",
            "TA;)V"
        }
    .end annotation

    .line 174
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;",
            "TA;)V"
        }
    .end annotation

    .line 177
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;",
            "TA;)V"
        }
    .end annotation

    .line 180
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;",
            "TA;)V"
        }
    .end annotation

    .line 186
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Name;",
            "TA;)V"
        }
    .end annotation

    .line 192
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;",
            "TA;)V"
        }
    .end annotation

    .line 189
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;",
            "TA;)V"
        }
    .end annotation

    .line 195
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;",
            "TA;)V"
        }
    .end annotation

    .line 198
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;",
            "TA;)V"
        }
    .end annotation

    .line 201
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            "TA;)V"
        }
    .end annotation

    .line 216
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;",
            "TA;)V"
        }
    .end annotation

    .line 219
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;",
            "TA;)V"
        }
    .end annotation

    .line 222
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;",
            "TA;)V"
        }
    .end annotation

    .line 225
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;",
            "TA;)V"
        }
    .end annotation

    .line 306
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;",
            "TA;)V"
        }
    .end annotation

    .line 309
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;",
            "TA;)V"
        }
    .end annotation

    .line 237
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;",
            "TA;)V"
        }
    .end annotation

    .line 246
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;",
            "TA;)V"
        }
    .end annotation

    .line 252
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;",
            "TA;)V"
        }
    .end annotation

    .line 261
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;",
            "TA;)V"
        }
    .end annotation

    .line 276
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;",
            "TA;)V"
        }
    .end annotation

    .line 282
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;",
            "TA;)V"
        }
    .end annotation

    .line 291
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;",
            "TA;)V"
        }
    .end annotation

    .line 285
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;",
            "TA;)V"
        }
    .end annotation

    .line 279
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;",
            "TA;)V"
        }
    .end annotation

    .line 288
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;",
            "TA;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;",
            "TA;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;",
            "TA;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;",
            "TA;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;",
            "TA;)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;",
            "TA;)V"
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;",
            "TA;)V"
        }
    .end annotation

    .line 108
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;",
            "TA;)V"
        }
    .end annotation

    .line 120
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;",
            "TA;)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;",
            "TA;)V"
        }
    .end annotation

    .line 135
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;",
            "TA;)V"
        }
    .end annotation

    .line 132
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;",
            "TA;)V"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;",
            "TA;)V"
        }
    .end annotation

    .line 159
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;",
            "TA;)V"
        }
    .end annotation

    .line 168
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;",
            "TA;)V"
        }
    .end annotation

    .line 213
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;",
            "TA;)V"
        }
    .end annotation

    .line 228
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;",
            "TA;)V"
        }
    .end annotation

    .line 231
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;",
            "TA;)V"
        }
    .end annotation

    .line 234
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;",
            "TA;)V"
        }
    .end annotation

    .line 240
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;",
            "TA;)V"
        }
    .end annotation

    .line 243
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;",
            "TA;)V"
        }
    .end annotation

    .line 294
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;",
            "TA;)V"
        }
    .end annotation

    .line 270
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "yieldStmt"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "yieldStmt",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;",
            "TA;)V"
        }
    .end annotation

    .line 312
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;",
            "TA;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;",
            "TA;)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;",
            "TA;)V"
        }
    .end annotation

    .line 153
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;",
            "TA;)V"
        }
    .end annotation

    .line 210
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;",
            "TA;)V"
        }
    .end annotation

    .line 249
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;",
            "TA;)V"
        }
    .end annotation

    .line 255
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;",
            "TA;)V"
        }
    .end annotation

    .line 258
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/VarType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/VarType;",
            "TA;)V"
        }
    .end annotation

    .line 300
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;",
            "TA;)V"
        }
    .end annotation

    .line 267
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;",
            "TA;)V"
        }
    .end annotation

    .line 273
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/SimpleVoidVisitor;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    return-void
.end method
