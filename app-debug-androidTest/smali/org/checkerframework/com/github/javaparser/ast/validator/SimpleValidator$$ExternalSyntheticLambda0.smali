.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Predicate;

.field public final synthetic f$1:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Predicate;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Predicate;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/BiConsumer;

    invoke-static {v0, v1, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;->lambda$new$0(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method
