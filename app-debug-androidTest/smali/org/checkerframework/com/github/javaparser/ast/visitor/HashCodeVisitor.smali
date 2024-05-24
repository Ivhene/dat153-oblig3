.class public Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;
.super Ljava/lang/Object;
.source "HashCodeVisitor.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final SINGLETON:Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;-><init>()V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->SINGLETON:Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static hashCode(Lorg/checkerframework/com/github/javaparser/ast/Node;)I
    .locals 2
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "node"
        }
    .end annotation

    .line 46
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->SINGLETON:Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public visit(Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 66
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 130
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImports()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 204
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isAsterisk()Z

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/Modifier;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 436
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getKeyword()Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "result":I
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 278
    .local v2, "node":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    invoke-interface {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v0, v3

    .line 279
    .end local v2    # "node":Ljava/lang/Object;
    goto :goto_0

    .line 280
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 296
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 136
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The method is not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 50
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 54
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 122
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 144
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 168
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getClassBody()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 172
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getImplementedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 188
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 208
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->isStatic()Z

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 260
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 300
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->isVarArgs()Z

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getVarArgsAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 426
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 376
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 90
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 224
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 236
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 58
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getIndex()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 62
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getElementType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getLevels()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 70
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 82
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getTarget()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 86
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getLeft()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getRight()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 98
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;->isValue()Z

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 106
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 114
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 118
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 140
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getElseExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getThenExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 156
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 164
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 184
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 212
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 216
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 232
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->isEnclosingParameters()Z

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 244
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 248
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 252
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 256
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 264
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 272
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 268
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 284
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 288
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 292
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 312
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 316
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getMemberValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 320
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 324
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 441
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getSelector()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 451
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 340
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 352
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 360
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 372
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 392
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getDirectives()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->isOpen()Z

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 401
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getModuleNames()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 416
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getModuleNames()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 406
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getWith()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 396
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 411
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 78
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getCheck()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 94
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 102
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->getLabel()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->getLabel()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 110
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getParameter()Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 148
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;->getLabel()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;->getLabel()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 152
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 160
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 176
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->isThis()Z

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 180
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 196
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getIterable()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 192
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getInitialization()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getUpdate()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 200
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getThenStmt()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 228
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getLabel()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getStatement()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 240
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getClassDeclaration()Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 308
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 328
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getType()Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry$Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry$Type;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 332
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getSelector()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 336
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 344
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 348
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getResources()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getTryBlock()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 421
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 384
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 446
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 74
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getComponentType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getOrigin()Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 126
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 220
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getElements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 304
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 356
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 364
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getElements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 368
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/VarType;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 431
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 380
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
    .param p2, "arg"    # Ljava/lang/Void;
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

    .line 388
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/Modifier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/Modifier;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
