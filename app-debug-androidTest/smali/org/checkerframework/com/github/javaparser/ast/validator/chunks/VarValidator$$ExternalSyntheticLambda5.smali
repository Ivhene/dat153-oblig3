.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;

.field public final synthetic f$1:Lorg/checkerframework/com/github/javaparser/ast/type/VarType;

.field public final synthetic f$2:Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

.field public final synthetic f$3:Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda5;->f$0:Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda5;->f$1:Lorg/checkerframework/com/github/javaparser/ast/type/VarType;

    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda5;->f$2:Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    iput-object p4, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda5;->f$3:Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda5;->f$0:Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda5;->f$1:Lorg/checkerframework/com/github/javaparser/ast/type/VarType;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda5;->f$2:Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator$$ExternalSyntheticLambda5;->f$3:Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;->lambda$null$2$org-checkerframework-com-github-javaparser-ast-validator-chunks-VarValidator(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-void
.end method
