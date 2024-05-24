.class public abstract Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
.super Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
.source "TypeDeclaration.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithAccessModifiers;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithStaticModifier;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithStrictfpModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<",
        "*>;>",
        "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
        "TT;>;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName<",
        "TT;>;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc<",
        "TT;>;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<",
        "TT;>;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithAccessModifiers<",
        "TT;>;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithStaticModifier<",
        "TT;>;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithStrictfpModifier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private members:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;"
        }
    .end annotation
.end field

.field private modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field private name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 59
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    const/4 v1, 0x0

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>()V

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p4, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "modifiers",
            "annotations",
            "name",
            "members"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    .local p2, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    .local p3, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    .local p5, "members":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 77
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    .line 78
    invoke-virtual {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    .line 79
    invoke-virtual {p0, p5}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->setMembers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    .line 80
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->customInitialization()V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/String;)V
    .locals 6
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "modifiers",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    .local p1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    const/4 v1, 0x0

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v4, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 6
    .param p3, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "modifiers",
            "annotations",
            "name",
            "members"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 68
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    .local p1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    .local p2, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    .local p4, "members":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 69
    return-void
.end method

.method static synthetic lambda$getCallablesWithSignature$1(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;)Z
    .locals 1
    .param p0, "m"    # Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    .line 191
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    return v0
.end method

.method static synthetic lambda$getCallablesWithSignature$2(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;
    .locals 1
    .param p0, "m"    # Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    .line 191
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    return-object v0
.end method

.method static synthetic lambda$getCallablesWithSignature$3(Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;)Z
    .locals 1
    .param p0, "signature"    # Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;
    .param p1, "m"    # Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "signature",
            "m"
        }
    .end annotation

    .line 191
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->getSignature()Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getFullyQualifiedName$7(Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .locals 0
    .param p0, "td"    # Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "td"
        }
    .end annotation

    .line 204
    return-object p0
.end method

.method static synthetic lambda$isNestedType$10(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "p"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    .line 212
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isTopLevelType$0(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "p"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    .line 184
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$4(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;)Ljava/lang/String;
    .locals 1
    .param p0, "pd"    # Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pd"
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addMember(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "decl"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->addMember(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public addMember(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;)TT;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    .local p1, "decl":Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 90
    .local v0, "members":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 91
    return-object p0
.end method

.method public asTypeDeclaration()Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .locals 0

    .line 260
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 50
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .locals 1

    .line 50
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<",
            "*>;"
        }
    .end annotation

    .line 218
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    return-object v0
.end method

.method public getCallablesWithSignature(Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;)Ljava/util/List;
    .locals 2
    .param p1, "signature"    # Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<",
            "*>;>;"
        }
    .end annotation

    .line 191
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda6;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getFullyQualifiedName()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 201
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->isTopLevelType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->findCompilationUnit()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda8;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 204
    :cond_0
    const-class v0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->findAncestor(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda10;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->members:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/BodyDeclarationMetaModel;
    .locals 1

    .line 50
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/TypeDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 50
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/TypeDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/TypeDeclarationMetaModel;
    .locals 1

    .line 224
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->typeDeclarationMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/TypeDeclarationMetaModel;

    return-object v0
.end method

.method public getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .locals 1

    .line 157
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    return-object v0
.end method

.method public ifTypeDeclaration(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 265
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method public isNestedType()Z
    .locals 2

    .line 212
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isTopLevelType()Z
    .locals 2

    .line 184
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isTypeDeclaration()Z
    .locals 1

    .line 254
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$getFullyQualifiedName$6$org-checkerframework-com-github-javaparser-ast-body-TypeDeclaration(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)Ljava/lang/String;
    .locals 2
    .param p1, "cu"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cu"
        }
    .end annotation

    .line 202
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda3;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$getFullyQualifiedName$9$org-checkerframework-com-github-javaparser-ast-body-TypeDeclaration(Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;)Ljava/util/Optional;
    .locals 2
    .param p1, "td"    # Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "td"
        }
    .end annotation

    .line 204
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getFullyQualifiedName()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$5$org-checkerframework-com-github-javaparser-ast-body-TypeDeclaration(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pkg"
        }
    .end annotation

    .line 202
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$8$org-checkerframework-com-github-javaparser-ast-body-TypeDeclaration(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fqn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "fqn"
        }
    .end annotation

    .line 204
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 163
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    if-nez p1, :cond_0

    .line 164
    const/4 v0, 0x0

    return v0

    .line 165
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->members:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 166
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->members:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 167
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->members:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 168
    return v2

    .line 165
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 172
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 173
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 174
    return v2

    .line 171
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    .end local v0    # "i":I
    :cond_4
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 4
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "replacementNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "replacementNode"
        }
    .end annotation

    .line 230
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    if-nez p1, :cond_0

    .line 231
    const/4 v0, 0x0

    return v0

    .line 232
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->members:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 233
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->members:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 234
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->members:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    invoke-virtual {v1, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 235
    return v2

    .line 232
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 239
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 240
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    invoke-virtual {v1, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 241
    return v2

    .line 238
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v0, :cond_5

    .line 245
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    .line 246
    return v2

    .line 248
    :cond_5
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public abstract resolve()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
.end method

.method public bridge synthetic setMembers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "members"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->setMembers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setMembers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "members"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;)TT;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    .local p1, "members":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->members:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 115
    return-object p0

    .line 117
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->MEMBERS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->members:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->members:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 120
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->members:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 121
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 122
    return-object p0
.end method

.method public bridge synthetic setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "modifiers"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;)TT;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    .local p1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 130
    return-object p0

    .line 132
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->MODIFIERS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 134
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 135
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 136
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 137
    return-object p0
.end method

.method public bridge synthetic setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "name"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .locals 2
    .param p1, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            ")TT;"
        }
    .end annotation

    .line 143
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v0, :cond_0

    .line 145
    return-object p0

    .line 147
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-eqz v0, :cond_1

    .line 149
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 150
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 151
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 152
    return-object p0
.end method

.method public toTypeDeclaration()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;",
            ">;"
        }
    .end annotation

    .line 271
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<TT;>;"
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
