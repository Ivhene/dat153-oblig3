.class public Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_4Validator;
.super Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_3Validator;
.source "Java1_4Validator.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_3Validator;-><init>()V

    .line 9
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_4Validator;->noAssertKeyword:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_4Validator;->remove(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 10
    return-void
.end method
