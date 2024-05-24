.class public interface abstract Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;
.super Ljava/lang/Object;
.source "TypedValidator.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "TN;",
        "Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic lambda$null$0(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/Problem;)V
    .locals 1
    .param p0, "result"    # Lorg/checkerframework/com/github/javaparser/ParseResult;
    .param p1, "problem"    # Lorg/checkerframework/com/github/javaparser/Problem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "result",
            "problem"
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getProblems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$null$1(Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 2
    .param p0, "_this"    # Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;
    .param p1, "result"    # Lorg/checkerframework/com/github/javaparser/ParseResult;
    .param p2, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "result",
            "node"
        }
    .end annotation

    .line 22
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;, "Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/github/javaparser/ParseResult;)V

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;->accept(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic lambda$postProcessor$2(Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V
    .locals 2
    .param p0, "_this"    # Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;
    .param p1, "result"    # Lorg/checkerframework/com/github/javaparser/ParseResult;
    .param p2, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "result",
            "configuration"
        }
    .end annotation

    .line 21
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;, "Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator<TN;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;Lorg/checkerframework/com/github/javaparser/ParseResult;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

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

    .line 11
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;, "Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator<TN;>;"
    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    invoke-interface {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;->accept(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public abstract accept(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;",
            ")V"
        }
    .end annotation
.end method

.method public postProcessor()Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;
    .locals 1

    .line 20
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;, "Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator$$ExternalSyntheticLambda2;-><init>(Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;)V

    return-object v0
.end method
