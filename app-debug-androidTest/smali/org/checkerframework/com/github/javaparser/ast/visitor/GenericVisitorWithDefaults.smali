.class public abstract Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;
.super Ljava/lang/Object;
.source "GenericVisitorWithDefaults.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
        "TR;TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public defaultAction(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 325
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 450
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/Modifier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 515
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 465
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 295
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 535
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 180
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 205
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 225
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 270
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 300
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 505
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 415
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 455
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 240
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 460
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 85
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 120
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 200
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 230
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 235
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 435
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 250
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 260
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 265
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 440
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 310
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 275
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 280
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 285
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 290
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 315
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 345
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 350
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 355
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 520
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 530
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 375
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 445
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 400
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 410
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 470
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 480
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 495
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 485
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 475
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 490
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 190
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 195
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 210
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 215
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 220
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 245
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 390
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 340
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 360
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 365
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 370
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 380
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 385
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 500
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 425
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 525
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 320
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 330
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 305
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 395
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 335
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 405
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 510
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 420
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "TA;)TR;"
        }
    .end annotation

    .line 430
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorWithDefaults;->defaultAction(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
