.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators$$ExternalSyntheticLambda7;->f$0:Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators$$ExternalSyntheticLambda7;->f$0:Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators;->lambda$null$4(Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;)V

    return-void
.end method
