.class public Lorg/checkerframework/com/github/javaparser/ast/validator/Java11Validator;
.super Lorg/checkerframework/com/github/javaparser/ast/validator/Java10Validator;
.source "Java11Validator.java"


# instance fields
.field final varAlsoInLambdaParameters:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 13
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java10Validator;-><init>()V

    .line 10
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;

    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;-><init>(Z)V

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java11Validator;->varAlsoInLambdaParameters:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 14
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java11Validator;->varOnlyOnLocalVariableDefinitionAndForAndTry:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java11Validator;->replace(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 15
    return-void
.end method
