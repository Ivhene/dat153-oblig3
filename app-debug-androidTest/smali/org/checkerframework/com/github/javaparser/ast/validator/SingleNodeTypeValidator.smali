.class public Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;
.super Ljava/lang/Object;
.source "SingleNodeTypeValidator.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;"
    }
.end annotation


# instance fields
.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TN;>;"
        }
    .end annotation
.end field

.field private final validator:Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "validator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TN;>;",
            "Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator<",
            "TN;>;)V"
        }
    .end annotation

    .line 12
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;, "Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator<TN;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TN;>;"
    .local p2, "validator":Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;, "Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator<TN;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;->type:Ljava/lang/Class;

    .line 14
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;->validator:Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;

    .line 15
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
            "problemReporter"
        }
    .end annotation

    .line 8
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;, "Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator<TN;>;"
    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;->accept(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public accept(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "problemReporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "problemReporter"
        }
    .end annotation

    .line 19
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;, "Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;->validator:Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;->type:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-interface {v0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;->accept(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    .line 22
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;->type:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 23
    return-void
.end method

.method synthetic lambda$accept$0$org-checkerframework-com-github-javaparser-ast-validator-SingleNodeTypeValidator(Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 1
    .param p1, "problemReporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .param p2, "n"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "problemReporter",
            "n"
        }
    .end annotation

    .line 22
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;, "Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;->validator:Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;

    invoke-interface {v0, p2, p1}, Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;->accept(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method
