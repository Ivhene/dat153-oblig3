.class public Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_1Validator;
.super Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;
.source "Java1_1Validator.java"


# instance fields
.field final innerClasses:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 18
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;-><init>()V

    .line 10
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;

    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_1Validator$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_1Validator$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_1Validator;->innerClasses:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 19
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_1Validator;->noInnerClasses:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_1Validator;->replace(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 20
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_1Validator;->noReflection:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_1Validator;->remove(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 21
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

    .line 11
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_1Validator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_1Validator$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$null$0(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 2
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .param p2, "p"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "n",
            "reporter",
            "p"
        }
    .end annotation

    .line 12
    instance-of v0, p2, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "There is no such thing as a local interface."

    invoke-virtual {p1, p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :cond_0
    return-void
.end method
