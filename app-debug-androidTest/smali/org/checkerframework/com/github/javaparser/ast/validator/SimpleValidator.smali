.class public Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;
.super Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;
.source "SimpleValidator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">",
        "Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator<",
        "TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "condition",
            "problemSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TN;>;",
            "Ljava/util/function/Predicate<",
            "TN;>;",
            "Ljava/util/function/BiConsumer<",
            "TN;",
            "Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;",
            ">;)V"
        }
    .end annotation

    .line 14
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;, "Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator<TN;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TN;>;"
    .local p2, "condition":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TN;>;"
    .local p3, "problemSupplier":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TN;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;)V

    .line 19
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 1
    .param p0, "condition"    # Ljava/util/function/Predicate;
    .param p1, "problemSupplier"    # Ljava/util/function/BiConsumer;
    .param p2, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p3, "problemReporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000,
            0x1000
        }
        names = {
            "condition",
            "problemSupplier",
            "node",
            "problemReporter"
        }
    .end annotation

    .line 15
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    :cond_0
    return-void
.end method
