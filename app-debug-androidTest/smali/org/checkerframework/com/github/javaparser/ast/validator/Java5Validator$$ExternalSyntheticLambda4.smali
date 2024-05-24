.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

.field public final synthetic f$1:Lorg/checkerframework/com/github/javaparser/ast/Node;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator$$ExternalSyntheticLambda4;->f$0:Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator$$ExternalSyntheticLambda4;->f$1:Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator$$ExternalSyntheticLambda4;->f$0:Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator$$ExternalSyntheticLambda4;->f$1:Lorg/checkerframework/com/github/javaparser/ast/Node;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-static {v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java5Validator;->lambda$null$2(Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    return-void
.end method
