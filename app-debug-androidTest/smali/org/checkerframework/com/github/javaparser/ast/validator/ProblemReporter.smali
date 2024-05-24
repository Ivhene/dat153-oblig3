.class public Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
.super Ljava/lang/Object;
.source "ProblemReporter.java"


# instance fields
.field private final problemConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lorg/checkerframework/com/github/javaparser/Problem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "problemConsumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/checkerframework/com/github/javaparser/Problem;",
            ">;)V"
        }
    .end annotation

    .line 17
    .local p1, "problemConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/Problem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->problemConsumer:Ljava/util/function/Consumer;

    .line 19
    return-void
.end method


# virtual methods
.method public varargs report(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "range"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "range",
            "message",
            "args"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->problemConsumer:Ljava/util/function/Consumer;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/Problem;

    invoke-static {p2, p3}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lorg/checkerframework/com/github/javaparser/Problem;-><init>(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public varargs report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "message",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 28
    .local p1, "node":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange<*>;"
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;->getTokenRange()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method
