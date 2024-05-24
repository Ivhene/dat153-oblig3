.class public Lorg/checkerframework/com/github/javaparser/ast/validator/Java12Validator;
.super Lorg/checkerframework/com/github/javaparser/ast/validator/Java11Validator;
.source "Java12Validator.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java11Validator;-><init>()V

    .line 10
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java12Validator;->noSwitchExpressions:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java12Validator;->remove(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 11
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java12Validator;->onlyOneLabelInSwitchCase:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java12Validator;->remove(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 12
    return-void
.end method
