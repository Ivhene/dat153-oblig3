.class public Lorg/checkerframework/com/github/javaparser/ast/validator/Java8Validator;
.super Lorg/checkerframework/com/github/javaparser/ast/validator/Java7Validator;
.source "Java8Validator.java"


# instance fields
.field final defaultMethodsInInterface:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final modifiersWithoutPrivateInterfaceMethods:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 24
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java7Validator;-><init>()V

    .line 10
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;-><init>(ZZZ)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java8Validator;->modifiersWithoutPrivateInterfaceMethods:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 11
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;

    const-class v2, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/validator/Java8Validator$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java8Validator$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;)V

    iput-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java8Validator;->defaultMethodsInInterface:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 25
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java8Validator;->modifiersWithoutDefaultAndStaticInterfaceMethodsAndPrivateInterfaceMethods:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java8Validator;->replace(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 26
    invoke-virtual {p0, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java8Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 27
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java8Validator;->noLambdas:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java8Validator;->remove(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 31
    return-void
.end method

.method static synthetic lambda$new$1(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
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
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getMethods()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/Java8Validator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java8Validator$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 20
    :cond_0
    return-void
.end method

.method static synthetic lambda$null$0(Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;)V
    .locals 2
    .param p0, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .param p1, "m"    # Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "reporter",
            "m"
        }
    .end annotation

    .line 15
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "\'default\' methods must have a body."

    invoke-virtual {p0, p1, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :cond_0
    return-void
.end method
