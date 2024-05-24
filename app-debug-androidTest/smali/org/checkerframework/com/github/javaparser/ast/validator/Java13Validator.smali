.class public Lorg/checkerframework/com/github/javaparser/ast/validator/Java13Validator;
.super Lorg/checkerframework/com/github/javaparser/ast/validator/Java12Validator;
.source "Java13Validator.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java12Validator;-><init>()V

    .line 10
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java13Validator;->noYield:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java13Validator;->remove(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 11
    return-void
.end method
