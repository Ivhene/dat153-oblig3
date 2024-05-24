.class public Lorg/checkerframework/com/github/javaparser/ast/validator/Java10Validator;
.super Lorg/checkerframework/com/github/javaparser/ast/validator/Java9Validator;
.source "Java10Validator.java"


# instance fields
.field final varOnlyOnLocalVariableDefinitionAndForAndTry:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 14
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java9Validator;-><init>()V

    .line 11
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;

    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/VarValidator;-><init>(Z)V

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java10Validator;->varOnlyOnLocalVariableDefinitionAndForAndTry:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 15
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java10Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 18
    return-void
.end method
