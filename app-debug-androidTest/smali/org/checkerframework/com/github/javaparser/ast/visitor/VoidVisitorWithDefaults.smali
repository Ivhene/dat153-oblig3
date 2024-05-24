.class public abstract Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;
.super Ljava/lang/Object;
.source "VoidVisitorWithDefaults.java"

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

    .line 37
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
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

    .line 43
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    return-void
.end method

.method public defaultAction(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)V
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

    .line 49
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 333
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 334
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 143
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 463
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 464
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/Modifier;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 506
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 507
    return-void
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

    .line 458
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)V

    .line 459
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 303
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 53
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 58
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 133
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 153
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 183
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 188
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 208
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 228
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 278
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 308
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 309
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 501
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 502
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 423
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 424
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 93
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 243
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 244
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 253
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 63
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 68
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 73
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 83
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 88
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 103
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 113
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 123
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 128
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 148
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 168
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 178
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 179
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 203
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 233
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 238
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 239
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 443
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 444
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 258
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 263
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 268
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 273
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 448
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 449
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 318
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 283
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 284
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 288
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 289
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 293
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 294
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 298
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 323
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 324
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 353
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 354
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 358
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 359
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 363
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 364
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 516
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 517
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 521
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 522
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 383
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 384
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 453
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 454
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 408
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 409
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 418
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 419
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 467
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 468
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 476
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 477
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 491
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 492
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 481
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 482
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 471
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 472
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 486
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 487
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 78
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 98
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 108
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 118
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 158
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 163
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 173
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 193
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 198
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 213
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 218
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 223
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 248
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 398
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 399
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 348
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 368
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 369
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 373
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 374
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 378
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 379
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 388
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 389
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 393
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 394
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 496
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 497
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 433
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 434
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
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

    .line 526
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 527
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 328
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 329
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 138
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 338
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 339
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 313
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 314
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 403
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 404
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 343
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 344
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 413
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 414
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/VarType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 511
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 512
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 428
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 429
    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 438
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)V

    .line 439
    return-void
.end method
