.class public Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;
.super Ljava/lang/Object;
.source "VarValidator.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator<",
        "Lorg/checkerframework/com/github/javaparser/ast/type/VarType;",
        ">;"
    }
.end annotation


# instance fields
.field private varAllowedInLambdaParameters:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "varAllowedInLambdaParameters"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "varAllowedInLambdaParameters"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;->varAllowedInLambdaParameters:Z

    .line 25
    return-void
.end method

.method static synthetic lambda$accept$0(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Boolean;
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

    .line 37
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$1(Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V
    .locals 3
    .param p0, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/type/VarType;
    .param p2, "initializer"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "reporter",
            "node",
            "initializer"
        }
    .end annotation

    .line 80
    instance-of v0, p2, Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "\"var\" cannot infer type from just null."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    :cond_0
    instance-of v0, p2, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "\"var\" cannot infer array types."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :cond_1
    return-void
.end method

.method private reportIllegalPosition(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/VarType;
    .param p2, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "\"var\" is not allowed here."

    invoke-virtual {p2, p1, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "reporter"
        }
    .end annotation

    .line 20
    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;

    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;->accept(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public bridge synthetic accept(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "reporter"
        }
    .end annotation

    .line 20
    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;->accept(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public accept(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/type/VarType;
    .param p2, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "reporter"
        }
    .end annotation

    .line 30
    const-class v0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->findAncestor(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    .line 31
    .local v0, "variableDeclarator":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 33
    iget-boolean v1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;->varAllowedInLambdaParameters:Z

    if-eqz v1, :cond_0

    .line 34
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 35
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->findAncestor(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda1;-><init>()V

    .line 36
    invoke-virtual {v1, v2}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda2;-><init>()V

    .line 37
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 38
    .local v1, "valid":Z
    if-eqz v1, :cond_0

    .line 39
    return-void

    .line 42
    .end local v1    # "valid":Z
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;->reportIllegalPosition(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    .line 43
    return-void

    .line 45
    :cond_1
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda3;-><init>(Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/type/VarType;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 93
    return-void
.end method

.method synthetic lambda$accept$4$org-checkerframework-com-github-javaparser-ast-validator-chunks-VarValidator(Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;)V
    .locals 2
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .param p2, "node"    # Lorg/checkerframework/com/github/javaparser/ast/type/VarType;
    .param p3, "vd"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "reporter",
            "node",
            "vd"
        }
    .end annotation

    .line 46
    invoke-virtual {p3}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "\"var\" cannot have extra array brackets."

    invoke-virtual {p1, p3, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :cond_0
    invoke-virtual {p3}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    .line 50
    .local v0, "variableDeclarationExpr":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    invoke-direct {p0, p2, p1}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;->reportIllegalPosition(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    .line 52
    return-void

    .line 54
    :cond_1
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p1, p3}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda4;-><init>(Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 91
    return-void
.end method

.method synthetic lambda$null$2$org-checkerframework-com-github-javaparser-ast-validator-chunks-VarValidator(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/type/VarType;
    .param p2, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .param p3, "vd"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .param p4, "c"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "node",
            "reporter",
            "vd",
            "c"
        }
    .end annotation

    .line 69
    instance-of v0, p4, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v0, p4, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    if-nez v0, :cond_1

    instance-of v0, p4, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;

    if-nez v0, :cond_1

    instance-of v0, p4, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 71
    .local v0, "positionIsFine":Z
    :goto_1
    if-nez v0, :cond_2

    .line 72
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;->reportIllegalPosition(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    .line 75
    :cond_2
    instance-of v2, p4, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;

    if-eqz v2, :cond_4

    .line 76
    invoke-virtual {p3}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_3

    .line 77
    const-string v2, "\"var\" needs an initializer."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_3
    invoke-virtual {p3}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, p1}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/type/VarType;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 89
    :cond_4
    return-void
.end method

.method synthetic lambda$null$3$org-checkerframework-com-github-javaparser-ast-validator-chunks-VarValidator(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/type/VarType;
    .param p2, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .param p3, "vd"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .param p4, "vdeNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "node",
            "reporter",
            "vd",
            "vdeNode"
        }
    .end annotation

    .line 55
    instance-of v0, p4, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    if-nez v0, :cond_0

    .line 56
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;->reportIllegalPosition(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    .line 57
    return-void

    .line 59
    :cond_0
    move-object v0, p4

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    .line 60
    .local v0, "vde":Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 61
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "\"var\" only takes a single variable."

    invoke-virtual {p2, v0, v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_1
    invoke-virtual {p4}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    .line 64
    .local v1, "container":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_2

    .line 65
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;->reportIllegalPosition(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    .line 66
    return-void

    .line 68
    :cond_2
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda5;-><init>(Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 90
    return-void
.end method
