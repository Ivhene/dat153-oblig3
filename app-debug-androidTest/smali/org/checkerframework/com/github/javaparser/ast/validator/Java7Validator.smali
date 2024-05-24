.class public Lorg/checkerframework/com/github/javaparser/ast/validator/Java7Validator;
.super Lorg/checkerframework/com/github/javaparser/ast/validator/Java6Validator;
.source "Java7Validator.java"


# instance fields
.field private final multiCatch:Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;",
            ">;"
        }
    .end annotation
.end field

.field final tryWithLimitedResources:Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 32
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java6Validator;-><init>()V

    .line 12
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;

    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/validator/Java7Validator$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java7Validator$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java7Validator;->tryWithLimitedResources:Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;

    .line 24
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;

    const-class v2, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/validator/Java7Validator$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java7Validator$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;)V

    iput-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java7Validator;->multiCatch:Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;

    .line 33
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java7Validator;->genericsWithoutDiamondOperator:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java7Validator;->remove(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 34
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java7Validator;->tryWithoutResources:Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;

    invoke-virtual {p0, v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java7Validator;->replace(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 35
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java7Validator;->noBinaryIntegerLiterals:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java7Validator;->remove(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 36
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java7Validator;->noUnderscoresInIntegerLiterals:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java7Validator;->remove(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 37
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java7Validator;->noMultiCatch:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java7Validator;->replace(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 38
    return-void
.end method

.method static synthetic lambda$new$0(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 5
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getResources()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    const-string v0, "Try has no finally, no catch, and no resources."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getResources()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 19
    .local v2, "resource":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->isVariableDeclarationExpr()Z

    move-result v3

    if-nez v3, :cond_1

    .line 20
    const-string v3, "Try with resources only supports variable declarations."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .end local v2    # "resource":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    :cond_1
    goto :goto_0

    .line 23
    :cond_2
    return-void
.end method

.method static synthetic lambda$new$1(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getElements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Union type (multi catch) must have at least two elements."

    invoke-virtual {p1, p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :cond_0
    return-void
.end method
