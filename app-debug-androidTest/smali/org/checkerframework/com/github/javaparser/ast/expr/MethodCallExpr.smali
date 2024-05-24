.class public Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
.super Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
.source "MethodCallExpr.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithArguments;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithOptionalScope;
.implements Lorg/checkerframework/com/github/javaparser/resolution/Resolvable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithArguments<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithOptionalScope<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/resolution/Resolvable<",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
        ">;"
    }
.end annotation


# instance fields
.field private arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

.field private scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 67
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>()V

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 68
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arguments"    # [Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "arguments"
        }
    .end annotation

    .line 71
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v4, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v5, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>([Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "scope"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
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
            "scope",
            "typeArguments",
            "name",
            "arguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p3, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    .local p5, "arguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 105
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->setScope(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    .line 106
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    .line 107
    invoke-virtual {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    .line 108
    invoke-virtual {p0, p5}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->setArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    .line 109
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->customInitialization()V

    .line 110
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Ljava/lang/String;)V
    .locals 6
    .param p1, "scope"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "scope",
            "name"
        }
    .end annotation

    .line 75
    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v4, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 6
    .param p1, "scope"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "scope",
            "name",
            "arguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            "Ljava/lang/String;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p3, "arguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v4, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 6
    .param p1, "scope"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "scope",
            "typeArguments",
            "name",
            "arguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;)V"
        }
    .end annotation

    .line 87
    .local p2, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    .local p4, "arguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    const/4 v1, 0x0

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v4, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 6
    .param p1, "scope"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p3, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "scope",
            "typeArguments",
            "name",
            "arguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 96
    .local p2, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    .local p4, "arguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V
    .locals 6
    .param p1, "scope"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p2, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "scope",
            "name"
        }
    .end annotation

    .line 79
    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 6
    .param p1, "scope"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p2, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "scope",
            "name",
            "arguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p3, "arguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 92
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 115
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 121
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public asMethodCallExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .locals 0

    .line 290
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .locals 2

    .line 240
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    return-object v0
.end method

.method public getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/MethodCallExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/MethodCallExprMetaModel;
    .locals 1

    .line 246
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->methodCallExprMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/MethodCallExprMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/MethodCallExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    return-object v0
.end method

.method public getScope()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getTypeArguments()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;>;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public ifMethodCallExpr(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;",
            ">;)V"
        }
    .end annotation

    .line 295
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 296
    return-void
.end method

.method public isMethodCallExpr()Z
    .locals 1

    .line 284
    const/4 v0, 0x1

    return v0
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

    .line 207
    if-nez p1, :cond_0

    .line 208
    const/4 v0, 0x0

    return v0

    .line 209
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 210
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 211
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 212
    return v2

    .line 209
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_3

    .line 216
    if-ne p1, v0, :cond_3

    .line 217
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->removeScope()Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    .line 218
    return v2

    .line 221
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_5

    .line 222
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 223
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_4

    .line 224
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 225
    return v2

    .line 222
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 229
    .end local v0    # "i":I
    :cond_5
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeScope()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->removeScope()Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    move-result-object v0

    return-object v0
.end method

.method public removeScope()Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .locals 2

    .line 234
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->setScope(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    move-result-object v0

    return-object v0
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

    .line 252
    if-nez p1, :cond_0

    .line 253
    const/4 v0, 0x0

    return v0

    .line 254
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 255
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 256
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v1, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 257
    return v2

    .line 254
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v0, :cond_3

    .line 261
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    .line 262
    return v2

    .line 264
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_4

    .line 265
    if-ne p1, v0, :cond_4

    .line 266
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->setScope(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    .line 267
    return v2

    .line 270
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_6

    .line 271
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 272
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_5

    .line 273
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-virtual {v1, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 274
    return v2

    .line 271
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 278
    .end local v0    # "i":I
    :cond_6
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->resolve()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;
    .locals 2

    .line 313
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getSymbolResolver()Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    invoke-interface {v0, p0, v1}, Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;->resolveDeclaration(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    return-object v0
.end method

.method public bridge synthetic setArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "arguments"
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->setArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    move-result-object p1

    return-object p1
.end method

.method public setArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "arguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;"
        }
    .end annotation

    .line 141
    .local p1, "arguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 143
    return-object p0

    .line 145
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ARGUMENTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 147
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 148
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 149
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 150
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

    .line 54
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
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

    .line 155
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v0, :cond_0

    .line 157
    return-object p0

    .line 159
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-eqz v0, :cond_1

    .line 161
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 162
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 163
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 164
    return-object p0
.end method

.method public bridge synthetic setScope(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "scope"
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->setScope(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    move-result-object p1

    return-object p1
.end method

.method public setScope(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .locals 2
    .param p1, "scope"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "scope"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    .line 170
    return-object p0

    .line 172
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->SCOPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    .line 174
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 175
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 176
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 177
    return-object p0
.end method

.method public bridge synthetic setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "typeArguments"
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    move-result-object p1

    return-object p1
.end method

.method public setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "typeArguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;"
        }
    .end annotation

    .line 193
    .local p1, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 194
    return-object p0

    .line 196
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE_ARGUMENTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 198
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 199
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 200
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 201
    return-object p0
.end method

.method public toMethodCallExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;",
            ">;"
        }
    .end annotation

    .line 319
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
