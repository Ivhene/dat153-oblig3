.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;

.field public final synthetic f$1:Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

.field public final synthetic f$2:Lorg/checkerframework/com/github/javaparser/ast/type/VarType;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/type/VarType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda3;->f$0:Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda3;->f$1:Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda3;->f$2:Lorg/checkerframework/com/github/javaparser/ast/type/VarType;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda3;->f$0:Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda3;->f$1:Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda3;->f$2:Lorg/checkerframework/com/github/javaparser/ast/type/VarType;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {v0, v1, v2, p1}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;->lambda$accept$4$org-checkerframework-com-github-javaparser-ast-validator-chunks-VarValidator(Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;)V

    return-void
.end method
