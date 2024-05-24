.class public Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;
.super Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_4Validator;
.source "Java5Validator.java"


# instance fields
.field final enumNotAllowed:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final forEachStmt:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final genericsWithoutDiamondOperator:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field protected final noPrimitiveGenericArguments:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 53
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_4Validator;-><init>()V

    .line 19
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/validator/TreeVisitorValidator;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/TreeVisitorValidator;-><init>(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;->genericsWithoutDiamondOperator:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 28
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/TreeVisitorValidator;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/TreeVisitorValidator;-><init>(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)V

    iput-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;->noPrimitiveGenericArguments:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 41
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;

    const-class v3, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;)V

    iput-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;->forEachStmt:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 50
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/validator/ReservedKeywordValidator;

    const-string v4, "enum"

    invoke-direct {v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/validator/ReservedKeywordValidator;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;->enumNotAllowed:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 54
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;->noGenerics:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v4, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;->replace(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 55
    invoke-virtual {p0, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 56
    invoke-virtual {p0, v3}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 57
    invoke-virtual {p0, v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 61
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;->noAnnotations:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;->remove(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 63
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;->noEnums:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;->remove(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 64
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;->noVarargs:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;->remove(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 65
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;->noForEach:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;->remove(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 66
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;->noStaticImports:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;->remove(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 67
    return-void
.end method

.method static synthetic lambda$new$0(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
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
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;

    if-eqz v0, :cond_0

    .line 21
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    .line 22
    .local v0, "typeArguments":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "The diamond operator is not supported."

    invoke-virtual {p1, p0, v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .end local v0    # "typeArguments":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;>;"
    :cond_0
    return-void
.end method

.method static synthetic lambda$new$3(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
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

    .line 29
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;

    if-eqz v0, :cond_0

    .line 30
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    .line 31
    .local v0, "typeArguments":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;>;"
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator$$ExternalSyntheticLambda4;-><init>(Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 37
    .end local v0    # "typeArguments":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;>;"
    :cond_0
    return-void
.end method

.method static synthetic lambda$new$4(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
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

    .line 42
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v0

    .line 44
    .local v0, "declaration":Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A foreach statement\'s variable declaration must have exactly one variable declarator. Given: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 45
    invoke-virtual {p1, p0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :cond_0
    return-void
.end method

.method static synthetic lambda$null$1(Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/type/Type;)V
    .locals 2
    .param p0, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "ty"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "reporter",
            "node",
            "ty"
        }
    .end annotation

    .line 32
    instance-of v0, p2, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Type arguments may not be primitive."

    invoke-virtual {p0, p1, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :cond_0
    return-void
.end method

.method static synthetic lambda$null$2(Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 1
    .param p0, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "types"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "reporter",
            "node",
            "types"
        }
    .end annotation

    .line 31
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-virtual {p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
