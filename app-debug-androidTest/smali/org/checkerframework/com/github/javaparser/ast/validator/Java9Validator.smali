.class public Lorg/checkerframework/com/github/javaparser/ast/validator/Java9Validator;
.super Lorg/checkerframework/com/github/javaparser/ast/validator/Java8Validator;
.source "Java9Validator.java"


# instance fields
.field final modifiers:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final tryWithResources:Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;",
            ">;"
        }
    .end annotation
.end field

.field final underscoreKeywordValidator:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 22
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java8Validator;-><init>()V

    .line 11
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/UnderscoreKeywordValidator;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/UnderscoreKeywordValidator;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java9Validator;->underscoreKeywordValidator:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 12
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2, v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;-><init>(ZZZ)V

    iput-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java9Validator;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 13
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;

    const-class v3, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/validator/Java9Validator$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java9Validator$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;)V

    iput-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java9Validator;->tryWithResources:Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;

    .line 23
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java9Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 24
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java9Validator;->noModules:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java9Validator;->remove(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 25
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java9Validator;->modifiersWithoutPrivateInterfaceMethods:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java9Validator;->replace(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 26
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java9Validator;->tryWithLimitedResources:Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;

    invoke-virtual {p0, v0, v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java9Validator;->replace(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 27
    return-void
.end method

.method static synthetic lambda$new$0(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
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

    .line 14
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getResources()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Try has no finally, no catch, and no resources."

    invoke-virtual {p1, p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :cond_0
    return-void
.end method
