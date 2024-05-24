.class public Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_2Validator;
.super Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_1Validator;
.source "Java1_2Validator.java"


# instance fields
.field final modifiersWithoutDefaultAndStaticInterfaceMethodsAndPrivateInterfaceMethods:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

.field final strictfpNotAllowed:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 13
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_1Validator;-><init>()V

    .line 9
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/ModifierValidator;-><init>(ZZZ)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_2Validator;->modifiersWithoutDefaultAndStaticInterfaceMethodsAndPrivateInterfaceMethods:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 10
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/ReservedKeywordValidator;

    const-string v2, "strictfp"

    invoke-direct {v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/ReservedKeywordValidator;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_2Validator;->strictfpNotAllowed:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 14
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_2Validator;->modifiersWithoutStrictfpAndDefaultAndStaticInterfaceMethodsAndPrivateInterfaceMethods:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_2Validator;->replace(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 15
    invoke-virtual {p0, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_2Validator;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 16
    return-void
.end method
