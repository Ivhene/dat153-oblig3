.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    invoke-static {p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;->lambda$new$4(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method
