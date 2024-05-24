.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;

    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    invoke-static {p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->lambda$new$1(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method
