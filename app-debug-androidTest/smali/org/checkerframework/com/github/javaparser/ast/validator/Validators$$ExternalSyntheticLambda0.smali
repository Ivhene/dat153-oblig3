.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/validator/Validators$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/Node;

.field public final synthetic f$1:Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Validators$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/github/javaparser/ast/Node;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Validators$$ExternalSyntheticLambda0;->f$1:Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Validators$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/github/javaparser/ast/Node;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Validators$$ExternalSyntheticLambda0;->f$1:Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-static {v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;->lambda$accept$0(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)V

    return-void
.end method
